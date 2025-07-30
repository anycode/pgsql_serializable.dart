// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import '../default_container.dart';
import '../lambda_result.dart';
import '../type_helper.dart';
import '../utils.dart';
import 'config_types.dart';
import 'generic_factory_helper.dart';

const _helperLambdaParam = 'value';

/// Supports types that have `fromPgSql` constructors and/or `toPgSql` functions.
class PgSqlHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const PgSqlHelper();

  /// Simply returns the [expression] provided.
  ///
  /// By default, PgSQL encoding in from `dart:convert` calls `toPgSql()` on
  /// provided objects.
  @override
  String? serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (!_canSerialize(context.config, targetType)) {
      return null;
    }

    final interfaceType = targetType as InterfaceType;

    final toPgSqlArgs = <String>[];

    var toPgSql = _toPgSqlMethod(interfaceType);

    if (toPgSql != null) {
      // Using the `baseElement` here so we get the original definition –
      // and not one with the generics already populated.
      toPgSql = toPgSql.baseElement;

      toPgSqlArgs.addAll(
        _helperParams(
          context.serialize,
          _encodeHelper,
          interfaceType,
          toPgSql.formalParameters.where(
            (element) => element.isRequiredPositional,
          ),
          toPgSql,
        ),
      );
    }

    if (context.config.explicitToPgSql || toPgSqlArgs.isNotEmpty) {
      return '$expression${interfaceType.isNullableType ? '?' : ''}'
          '.toPgSql(${toPgSqlArgs.map((a) => '$a, ').join()} )';
    }
    return expression;
  }

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    if (targetType is! InterfaceType) {
      return null;
    }

    final classElement = targetType.element3;

    final fromPgSqlCtor = classElement.constructors2
        .where((ce) => ce.name3 == 'fromPgSql')
        .singleOrNull;

    var output = expression;
    if (fromPgSqlCtor != null) {
      final positionalParams = fromPgSqlCtor.formalParameters
          .where((element) => element.isPositional)
          .toList();

      if (positionalParams.isEmpty) {
        throw InvalidGenerationSourceError(
          'Expecting a `fromPgSql` constructor with exactly one positional '
          'parameter. Found a constructor with 0 parameters.',
          element: fromPgSqlCtor,
        );
      }

      var asCastType = positionalParams.first.type;

      if (asCastType is InterfaceType) {
        final instantiated = _instantiate(asCastType, targetType);
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
          targetType,
          positionalParams.skip(1),
          fromPgSqlCtor,
        ),
      ];

      output = args.join(', ');
    } else if (_annotation(context.config, targetType)?.createFactory == true) {
      if (context.config.anyMap) {
        output += ' as Map';
      } else {
        output += ' as Map<String, dynamic>';
      }
    } else {
      return null;
    }

    // TODO: the type could be imported from a library with a prefix!
    // https://github.com/anycode/pgsql_serializable.dart/issues/19
    final lambda = LambdaResult(
      output,
      '${typeToCode(targetType.promoteNonNullable())}.fromPgSql',
    );

    return DefaultContainer(expression, lambda);
  }
}

List<String> _helperParams(
  Object? Function(DartType, String) execute,
  TypeParameterType Function(FormalParameterElement, Element2) paramMapper,
  InterfaceType type,
  Iterable<FormalParameterElement> positionalParams,
  Element2 targetElement,
) {
  final rest = <TypeParameterType>[];
  for (var param in positionalParams) {
    rest.add(paramMapper(param, targetElement));
  }

  final args = <String>[];

  for (var helperArg in rest) {
    final typeParamIndex = type.element3.typeParameters2.indexOf(
      helperArg.element3,
    );

    // TODO: throw here if `typeParamIndex` is -1 ?
    final typeArg = type.typeArguments[typeParamIndex];
    final body = execute(typeArg, _helperLambdaParam);
    args.add('($_helperLambdaParam) => $body');
  }

  return args;
}

TypeParameterType _decodeHelper(
  FormalParameterElement param,
  Element2 targetElement,
) {
  final type = param.type;

  if (type is FunctionType &&
      type.returnType is TypeParameterType &&
      type.normalParameterTypes.length == 1) {
    final funcReturnType = type.returnType;

    if (param.name3 == fromPgSqlForName(funcReturnType.element3!.name3!)) {
      final funcParamType = type.normalParameterTypes.single;

      if ((funcParamType.isDartCoreObject && funcParamType.isNullableType) ||
          funcParamType is DynamicType) {
        return funcReturnType as TypeParameterType;
      }
    }
  }

  throw InvalidGenerationSourceError(
    'Expecting a `fromPgSql` constructor with exactly one positional '
    'parameter. '
    'The only extra parameters allowed are functions of the form '
    '`T Function(Object?) ${fromPgSqlForName('T')}` where `T` is a type '
    'parameter of the target type.',
    element: targetElement,
  );
}

TypeParameterType _encodeHelper(
  FormalParameterElement param,
  Element2 targetElement,
) {
  final type = param.type;

  if (type is FunctionType &&
      (type.returnType.isDartCoreObject || type.returnType is DynamicType) &&
      type.normalParameterTypes.length == 1) {
    final funcParamType = type.normalParameterTypes.single;

    if (param.name3 == toPgSqlForName(funcParamType.element3!.name3!)) {
      if (funcParamType is TypeParameterType) {
        return funcParamType;
      }
    }
  }

  throw InvalidGenerationSourceError(
    'Expecting a `toPgSql` function with no required parameters. '
    'The only extra parameters allowed are functions of the form '
    '`Object Function(T) toPgSqlT` where `T` is a type parameter of the target '
    ' type.',
    element: targetElement,
  );
}

bool _canSerialize(ClassConfig config, DartType type) {
  if (type is InterfaceType) {
    final toPgSqlMethod = _toPgSqlMethod(type);

    if (toPgSqlMethod != null) {
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
InterfaceType? _instantiate(
  InterfaceType ctorParamType,
  InterfaceType classType,
) {
  final argTypes = ctorParamType.typeArguments.map((arg) {
    final typeParamIndex = classType.element3.typeParameters2.indexWhere(
      // TODO: not 100% sure `nullabilitySuffix` is right
      (e) => e.instantiate(nullabilitySuffix: arg.nullabilitySuffix) == arg,
    );
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

  return ctorParamType.element3.instantiate(
    typeArguments: argTypes.cast<DartType>(),
    nullabilitySuffix: ctorParamType.nullabilitySuffix,
  );
}

ClassConfig? _annotation(ClassConfig config, InterfaceType source) {
  if (source.isEnum) {
    return null;
  }
  final annotations = const TypeChecker.fromRuntime(
    PgSqlSerializable,
  ).annotationsOfExact(source.element3, throwOnUnresolved: false).toList();

  if (annotations.isEmpty) {
    return null;
  }

  return mergeConfig(
    config,
    ConstantReader(annotations.single),
    classElement: source.element3 as ClassElement2,
  );
}

MethodElement2? _toPgSqlMethod(DartType type) => type.typeImplementations
    .map((dt) => dt is InterfaceType ? dt.getMethod2('toPgSql') : null)
    .where((me) => me != null)
    .firstOrNull;
