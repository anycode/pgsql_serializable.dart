// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import '../lambda_result.dart';
import '../type_helper.dart';
import '../utils.dart';

/// A [TypeHelper] that supports classes annotated with implementations of
/// [PgSqlConverter].
class PgSqlConverterHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const PgSqlConverterHelper();

  @override
  Object? serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    final converter = _typeConverter(targetType, context);

    if (converter == null) {
      return null;
    }

    if (!converter.fieldType.isNullableType && targetType.isNullableType) {
      const converterToPgSqlName = r'_$PgSqlConverterToPgSql';
      context.addMember('''
PgSql? $converterToPgSqlName<PgSql, Value>(
  Value? value,
  PgSql? Function(Value value) toPgSql,
) => ${ifNullOrElse('value', 'null', 'toPgSql(value)')};
''');

      return _nullablePgSqlConverterLambdaResult(
        converter,
        name: converterToPgSqlName,
        targetType: targetType,
        expression: expression,
        callback: '${converter.accessString}.toPgSql',
      );
    }

    return LambdaResult(expression, '${converter.accessString}.toPgSql');
  }

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    final converter = _typeConverter(targetType, context);
    if (converter == null) {
      return null;
    }

    if (!converter.pgsqlType.isNullableType && targetType.isNullableType) {
      const converterFromPgSqlName = r'_$PgSqlConverterFromPgSql';
      context.addMember('''
Value? $converterFromPgSqlName<PgSql, Value>(
  Object? pgsql,
  Value? Function(PgSql pgsql) fromPgSql,
) => ${ifNullOrElse('pgsql', 'null', 'fromPgSql(pgsql as PgSql)')};
''');

      return _nullablePgSqlConverterLambdaResult(
        converter,
        name: converterFromPgSqlName,
        targetType: targetType,
        expression: expression,
        callback: '${converter.accessString}.fromPgSql',
      );
    }

    return LambdaResult(
      expression,
      '${converter.accessString}.fromPgSql',
      asContent: converter.pgsqlType,
    );
  }
}

String _nullablePgSqlConverterLambdaResult(
  _PgSqlConvertData converter, {
  required String name,
  required DartType targetType,
  required String expression,
  required String callback,
}) {
  final pgsqlDisplayString = typeToCode(converter.pgsqlType);
  final fieldTypeDisplayString = converter.isGeneric
      ? typeToCode(targetType)
      : typeToCode(converter.fieldType);

  return '$name<$pgsqlDisplayString, $fieldTypeDisplayString>('
      '$expression, $callback)';
}

class _PgSqlConvertData {
  final String accessString;
  final DartType pgsqlType;
  final DartType fieldType;
  final bool isGeneric;

  _PgSqlConvertData.className(
    String className,
    String accessor,
    this.pgsqlType,
    this.fieldType,
  ) : accessString = 'const $className${_withAccessor(accessor)}()',
      isGeneric = false;

  _PgSqlConvertData.genericClass(
    String className,
    String genericTypeArg,
    String accessor,
    this.pgsqlType,
    this.fieldType,
  ) : accessString = '$className<$genericTypeArg>${_withAccessor(accessor)}()',
      isGeneric = true;

  _PgSqlConvertData.propertyAccess(
    this.accessString,
    this.pgsqlType,
    this.fieldType,
  ) : isGeneric = false;

  static String _withAccessor(String accessor) =>
      accessor.isEmpty ? '' : '.$accessor';
}

/// If there is no converter for the params, return `null`.
///
/// Otherwise, returns `true` if the converter has a null return value.
///
/// Used to make sure we create a smart encoding function.
bool? hasConverterNullEncode(
  DartType targetType,
  TypeHelperContextWithConfig ctx,
) {
  final data = _typeConverter(targetType, ctx);

  if (data == null) {
    return null;
  }

  return data.pgsqlType.isNullableType;
}

_PgSqlConvertData? _typeConverter(
  DartType targetType,
  TypeHelperContextWithConfig ctx,
) {
  List<_ConverterMatch> converterMatches(List<ElementAnnotation> items) => items
      .map(
        (annotation) => _compatibleMatch(
          targetType,
          annotation,
          annotation.computeConstantValue()!,
        ),
      )
      .whereType<_ConverterMatch>()
      .toList();

  var matchingAnnotations = converterMatches(
    ctx.fieldElement.getter2?.metadata2.annotations ?? [],
  );

  if (matchingAnnotations.isEmpty) {
    matchingAnnotations = converterMatches(
      ctx.fieldElement.metadata2.annotations,
    );

    if (matchingAnnotations.isEmpty) {
      matchingAnnotations = converterMatches(
        ctx.classElement.metadata2.annotations,
      );

      if (matchingAnnotations.isEmpty) {
        matchingAnnotations = ctx.config.converters
            .map((e) => _compatibleMatch(targetType, null, e))
            .whereType<_ConverterMatch>()
            .toList();
      }
    }
  }

  return _typeConverterFrom(matchingAnnotations, targetType);
}

_PgSqlConvertData? _typeConverterFrom(
  List<_ConverterMatch> matchingAnnotations,
  DartType targetType,
) {
  if (matchingAnnotations.isEmpty) {
    return null;
  }

  if (matchingAnnotations.length > 1) {
    final targetTypeCode = typeToCode(targetType);
    throw InvalidGenerationSourceError(
      'Found more than one matching converter for `$targetTypeCode`.',
      element: matchingAnnotations[1].elementAnnotation?.element2,
    );
  }

  final match = matchingAnnotations.single;

  final annotationElement = match.elementAnnotation?.element2;
  if (annotationElement is PropertyAccessorElement2) {
    final enclosing = annotationElement.enclosingElement2;

    var accessString = annotationElement.name3!;

    if (enclosing is ClassElement2) {
      accessString = '${enclosing.name3}.$accessString';
    }

    return _PgSqlConvertData.propertyAccess(
      accessString,
      match.pgsqlType,
      match.fieldType,
    );
  }

  final reviver = ConstantReader(match.annotation).revive();

  if (reviver.namedArguments.isNotEmpty ||
      reviver.positionalArguments.isNotEmpty) {
    throw InvalidGenerationSourceError(
      'Generators with constructor arguments are not supported.',
      element: match.elementAnnotation?.element2,
    );
  }

  if (match.genericTypeArg != null) {
    return _PgSqlConvertData.genericClass(
      match.annotation.type!.element3!.name3!,
      match.genericTypeArg!,
      reviver.accessor,
      match.pgsqlType,
      match.fieldType,
    );
  }

  return _PgSqlConvertData.className(
    match.annotation.type!.element3!.name3!,
    reviver.accessor,
    match.pgsqlType,
    match.fieldType,
  );
}

class _ConverterMatch {
  final DartObject annotation;
  final DartType fieldType;
  final DartType pgsqlType;
  final ElementAnnotation? elementAnnotation;
  final String? genericTypeArg;

  _ConverterMatch(
    this.elementAnnotation,
    this.annotation,
    this.pgsqlType,
    this.genericTypeArg,
    this.fieldType,
  );
}

_ConverterMatch? _compatibleMatch(
  DartType targetType,
  ElementAnnotation? annotation,
  DartObject constantValue,
) {
  final converterClassElement = constantValue.type!.element3 as ClassElement2;

  final pgsqlConverterSuper = converterClassElement.allSupertypes
      .where((e) => _pgsqlConverterChecker.isExactly(e.element3))
      .singleOrNull;

  if (pgsqlConverterSuper == null) {
    return null;
  }

  assert(pgsqlConverterSuper.element3.typeParameters2.length == 2);
  assert(pgsqlConverterSuper.typeArguments.length == 2);

  final fieldType = pgsqlConverterSuper.typeArguments[0];

  // Allow assigning T to T?
  if (fieldType == targetType || fieldType == targetType.promoteNonNullable()) {
    return _ConverterMatch(
      annotation,
      constantValue,
      pgsqlConverterSuper.typeArguments[1],
      null,
      fieldType,
    );
  }

  if (fieldType is TypeParameterType && targetType is TypeParameterType) {
    assert(annotation?.element2 is! PropertyAccessorElement2);
    assert(converterClassElement.typeParameters2.isNotEmpty);
    if (converterClassElement.typeParameters2.length > 1) {
      throw InvalidGenerationSourceError(
        '`PgSqlConverter` implementations can have no more than one type '
        'argument. `${converterClassElement.name3}` has '
        '${converterClassElement.typeParameters2.length}.',
        element: converterClassElement,
      );
    }

    return _ConverterMatch(
      annotation,
      constantValue,
      pgsqlConverterSuper.typeArguments[1],
      '${targetType.element3.name3}${targetType.isNullableType ? '?' : ''}',
      fieldType,
    );
  }

  return null;
}

const _pgsqlConverterChecker = TypeChecker.fromRuntime(PgSqlConverter);
