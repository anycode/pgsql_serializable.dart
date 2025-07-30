// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'pgsql_literal_generator.dart';
import 'utils.dart';

String constMapName(DartType targetType, String prefix) =>
    '_\$$prefix${targetType.element3!.name3}EnumMap';

/// If [targetType] is not an enum, return `null`.
///
/// Otherwise, returns `true` if [targetType] is nullable OR if one of the
/// encoded values of the enum is `null`.
bool? enumFieldWithNullInEncodeMap(DartType targetType) {
  final enumMap = _enumMap(targetType);

  if (enumMap == null) return null;

  if (targetType.isNullableType) {
    return true;
  }

  return enumMap.values.contains(null);
}

String? enumValueMapFromType(
  DartType targetType,
  String prefix, {
  bool nullWithNoAnnotation = false,
}) {
  final enumMap = _enumMap(
    targetType,
    nullWithNoAnnotation: nullWithNoAnnotation,
  );

  if (enumMap == null) return null;

  final items = enumMap.entries
      .map(
        (e) =>
            '  ${targetType.element3!.name3}.${e.key.name3}: '
            '${pgsqlLiteralAsDart(e.value)},',
      )
      .join();

  return 'const ${constMapName(targetType, prefix)} = {\n$items\n};';
}

Map<FieldElement2, Object?>? _enumMap(
  DartType targetType, {
  bool nullWithNoAnnotation = false,
}) {
  final targetTypeElement = targetType.element3;
  if (targetTypeElement == null) return null;
  final annotation = _pgsqlEnumChecker.firstAnnotationOf(targetTypeElement);
  final pgsqlEnum = _fromAnnotation(annotation);

  final enumFields = iterateEnumFields(targetType);

  if (enumFields == null || (nullWithNoAnnotation && !pgsqlEnum.alwaysCreate)) {
    return null;
  }

  return {
    for (var field in enumFields)
      field: _generateEntry(
        field: field,
        pgsqlEnum: pgsqlEnum,
        targetType: targetType,
      ),
  };
}

Object? _generateEntry({
  required FieldElement2 field,
  required PgSqlEnum pgsqlEnum,
  required DartType targetType,
}) {
  final annotation = const TypeChecker.fromRuntime(
    PgSqlValue,
  ).firstAnnotationOfExact(field);

  if (annotation == null) {
    final valueField = pgsqlEnum.valueField;
    if (valueField != null) {
      // TODO: fieldRename is pointless here!!! At least log a warning!

      final fieldElementType = field.type.element3 as EnumElement2;

      final e = fieldElementType.getField2(valueField);

      if (e == null && valueField == 'index') {
        return fieldElementType.fields2
            .where((element) => element.isEnumConstant)
            .toList(growable: false)
            .indexOf(field);
      }

      if (e == null || e.isStatic) {
        throw InvalidGenerationSourceError(
          '`PgSqlEnum.valueField` was set to "$valueField", but '
          'that is not a valid, instance field on '
          '`${typeToCode(targetType)}`.',
          element: targetType.element3,
        );
      }

      final reader = ConstantReader(field.computeConstantValue());
      final valueReader = reader.read(valueField);
      if (valueReader.validValueType) {
        return valueReader.literalValue;
      } else {
        throw InvalidGenerationSourceError(
          '`PgSqlEnum.valueField` was set to "$valueField", but '
          'that field does not have a type of String, int, or null.',
          element: targetType.element3,
        );
      }
    } else {
      return encodedFieldName(pgsqlEnum.fieldRename, field.name3!);
    }
  } else {
    final reader = ConstantReader(annotation);

    final valueReader = reader.read('value');

    if (valueReader.validValueType) {
      return valueReader.literalValue;
    } else {
      final targetTypeCode = typeToCode(targetType);
      throw InvalidGenerationSourceError(
        'The `PgSqlValue` annotation on `$targetTypeCode.${field.name3}` does '
        'not have a value of type String, int, or null.',
        element: field,
      );
    }
  }
}

const _pgsqlEnumChecker = TypeChecker.fromRuntime(PgSqlEnum);

PgSqlEnum _fromAnnotation(DartObject? dartObject) {
  if (dartObject == null) {
    return const PgSqlEnum();
  }
  final reader = ConstantReader(dartObject);
  return PgSqlEnum(
    alwaysCreate: reader.read('alwaysCreate').literalValue as bool,
    fieldRename: readEnum(reader.read('fieldRename'), FieldRename.values)!,
    valueField: reader.read('valueField').literalValue as String?,
  );
}

extension on ConstantReader {
  bool get validValueType => isString || isNull || isInt;
}
