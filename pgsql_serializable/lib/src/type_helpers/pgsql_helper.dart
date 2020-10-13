// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';

import '../shared_checkers.dart';
import '../type_helper.dart';
import '../utils.dart';
import 'generic_factory_helper.dart';

const _helperLambdaParam = 'value';

class PgSqlHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const PgSqlHelper();

  /// Simply returns the [expression] provided.
  ///
  /// By default, pgsql encoding in from `dart:convert` calls `ToPgSql()` on
  /// provided objects.
  @override
  String serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (!_canSerialize(context.config, targetType)) {
      return null;
    }

    final interfaceType = targetType as InterfaceType;

    final ToPgSqlArgs = <String>[];

    var ToPgSql = _ToPgSqlMethod(interfaceType);

    if (ToPgSql != null) {
      // Using the `declaration` here so we get the original definition –
      // and not one with the generics already populated.
      ToPgSql = ToPgSql.declaration;

      ToPgSqlArgs.addAll(
        _helperParams(
          context.serialize,
          _encodeHelper,
          interfaceType,
          ToPgSql.parameters.where((element) => element.isRequiredPositional),
          ToPgSql,
        ),
      );
    }

    if (context.config.explicitToPgSql || ToPgSqlArgs.isNotEmpty) {
      return '$expression${context.nullable ? '?' : ''}'
          '.ToPgSql(${ToPgSqlArgs.map((a) => '$a, ').join()} )';
    }
    return expression;
  }

  @override
  String deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (targetType is! InterfaceType) {
      return null;
    }

    final type = targetType as InterfaceType;
    final classElement = type.element;

    final frompgsqlCtor = classElement.constructors
        .singleWhere((ce) => ce.name == 'frompgsql', orElse: () => null);

    var output = expression;
    if (frompgsqlCtor != null) {
      final positionalParams = frompgsqlCtor.parameters
          .where((element) => element.isPositional)
          .toList();

      if (positionalParams.isEmpty) {
        throw InvalidGenerationSourceError(
          'Expecting a `frompgsql` constructor with exactly one positional '
          'parameter. Found a constructor with 0 parameters.',
          element: frompgsqlCtor,
        );
      }

      var asCastType = positionalParams.first.type;

      if (asCastType is InterfaceType) {
        final instantiated = _instantiate(asCastType as InterfaceType, type);
        if (instantiated != null) {
          asCastType = instantiated;
        }
      }

      output = context.deserialize(asCastType, output).toString();

      final args = [
        output,
        ..._helperParams(
          context.deserialize,
          _decodeHelper,
          targetType as InterfaceType,
          positionalParams.skip(1),
          frompgsqlCtor,
        ),
      ];

      output = args.join(', ');
    } else if (_annotation(context.config, type)?.createFactory == true) {
      if (context.config.anyMap) {
        output += ' as Map';
      } else {
        output += ' as Map<String, dynamic>';
      }
    } else {
      return null;
    }

    // TODO: the type could be imported from a library with a prefix!
    // https://github.com/google/pgsql_serializable.dart/issues/19
    output = '${targetType.element.name}.frompgsql($output)';

    return commonNullPrefix(context.nullable, expression, output).toString();
  }
}

List<String> _helperParams(
  Object Function(DartType, String) execute,
  TypeParameterType Function(ParameterElement, Element) paramMapper,
  InterfaceType type,
  Iterable<ParameterElement> positionalParams,
  Element targetElement,
) {
  final rest = <TypeParameterType>[];
  for (var param in positionalParams) {
    rest.add(paramMapper(param, targetElement));
  }

  final args = <String>[];

  for (var helperArg in rest) {
    final typeParamIndex =
        type.element.typeParameters.indexOf(helperArg.element);

    // TODO: throw here if `typeParamIndex` is -1 ?
    final typeArg = type.typeArguments[typeParamIndex];
    final body = execute(typeArg, _helperLambdaParam);
    args.add('($_helperLambdaParam) => $body');
  }

  return args;
}

TypeParameterType _decodeHelper(
  ParameterElement param,
  Element targetElement,
) {
  final type = param.type;

  if (type is FunctionType &&
      type.returnType is TypeParameterType &&
      type.normalParameterTypes.length == 1) {
    final funcReturnType = type.returnType;

    if (param.name == fromPgSqlForName(funcReturnType.element.name)) {
      final funcParamType = type.normalParameterTypes.single;

      if (funcParamType.isDartCoreObject || funcParamType.isDynamic) {
        return funcReturnType as TypeParameterType;
      }
    }
  }

  throw InvalidGenerationSourceError(
    'Expecting a `frompgsql` constructor with exactly one positional '
    'parameter. '
    'The only extra parameters allowed are functions of the form '
    '`T Function(Object) ${fromPgSqlForName('T')}` where `T` is a type '
    'parameter of the target type.',
    element: targetElement,
  );
}

TypeParameterType _encodeHelper(
  ParameterElement param,
  Element targetElement,
) {
  final type = param.type;

  if (type is FunctionType &&
      isObjectOrDynamic(type.returnType) &&
      type.normalParameterTypes.length == 1) {
    final funcParamType = type.normalParameterTypes.single;

    if (param.name == toPgSqlForName(funcParamType.element.name)) {
      if (funcParamType is TypeParameterType) {
        return funcParamType;
      }
    }
  }

  throw InvalidGenerationSourceError(
    'Expecting a `ToPgSql` function with no required parameters. '
    'The only extra parameters allowed are functions of the form '
    '`Object Function(T) ToPgSqlT` where `T` is a type parameter of the target '
    ' type.',
    element: targetElement,
  );
}

bool _canSerialize(PgSqlSerializable config, DartType type) {
  if (type is InterfaceType) {
    final ToPgSqlMethod = _ToPgSqlMethod(type);

    if (ToPgSqlMethod != null) {
      return true;
    }

    if (_annotation(config, type)?.createToPgSql == true) {
      // TODO: consider logging that we're assuming a user will wire up the
      // generated mixin at some point...
      return true;
    }
  }
  return false;
}

/// Returns an instantiation of [ctorParamType] by providing argument types
/// derived by matching corresponding type parameters from [classType].
InterfaceType _instantiate(
  InterfaceType ctorParamType,
  InterfaceType classType,
) {
  final argTypes = ctorParamType.typeArguments.map((arg) {
    final typeParamIndex = classType.element.typeParameters.indexWhere(
        // TODO: not 100% sure `nullabilitySuffix` is right
        (e) => e.instantiate(nullabilitySuffix: arg.nullabilitySuffix) == arg);
    if (typeParamIndex >= 0) {
      return classType.typeArguments[typeParamIndex];
    } else {
      // TODO: perhaps throw UnsupportedTypeError?
      return null;
    }
  }).toList();

  if (argTypes.any((e) => e == null)) {
    // TODO: perhaps throw UnsupportedTypeError?
    return null;
  }

  return ctorParamType.element.instantiate(
    typeArguments: argTypes,
    // TODO: not 100% sure nullabilitySuffix is right... Works for now
    nullabilitySuffix: NullabilitySuffix.none,
  );
}

PgSqlSerializable _annotation(PgSqlSerializable config, InterfaceType source) {
  final annotations = const TypeChecker.fromRuntime(PgSqlSerializable)
      .annotationsOfExact(source.element, throwOnUnresolved: false)
      .toList();

  if (annotations.isEmpty) {
    return null;
  }

  return mergeConfig(
    config,
    ConstantReader(annotations.single),
    classElement: source.element,
  );
}

MethodElement _ToPgSqlMethod(DartType type) => typeImplementations(type)
    .map((dt) => dt is InterfaceType ? dt.getMethod('ToPgSql') : null)
    .firstWhere((me) => me != null, orElse: () => null);
