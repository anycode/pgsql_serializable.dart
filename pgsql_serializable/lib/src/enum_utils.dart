// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'pgsql_literal_generator.dart';
import 'utils.dart';

String constMapName(DartType targetType) =>
    '_\$pg${targetType.element!.name}EnumMap';

String? enumValueMapFromType(
  DartType targetType, {
  bool nullWithNoAnnotation = false,
}) {
  final annotation = _pgsqlEnumChecker.firstAnnotationOf(targetType.element!);
  final pgsqlEnum = _fromAnnotation(annotation);

  final enumFields = iterateEnumFields(targetType);

  if (enumFields == null || (nullWithNoAnnotation && !pgsqlEnum.alwaysCreate)) {
    return null;
  }

  MapEntry<FieldElement, dynamic> _generateEntry(FieldElement fe) {
    final annotation =
        const TypeChecker.fromRuntime(PgSqlValue).firstAnnotationOfExact(fe);

    dynamic fieldValue;
    if (annotation == null) {
      fieldValue = encodedFieldName(pgsqlEnum.fieldRename, fe.name);
    } else {
      final reader = ConstantReader(annotation);

      final valueReader = reader.read('value');

      if (valueReader.isString || valueReader.isNull || valueReader.isInt) {
        fieldValue = valueReader.literalValue;
      } else {
        final targetTypeCode = typeToCode(targetType);
        throw InvalidGenerationSourceError(
            'The `PgSqlValue` annotation on `$targetTypeCode.${fe.name}` does '
            'not have a value of type String, int, or null.',
            element: fe);
      }
    }

    final entry = MapEntry(fe, fieldValue);

    return entry;
  }

  final enumMap =
      Map<FieldElement, dynamic>.fromEntries(enumFields.map(_generateEntry));

  final items = enumMap.entries
      .map((e) => '  ${targetType.element!.name}.${e.key.name}: '
          '${pgsqlLiteralAsDart(e.value)},')
      .join();

  return 'const ${constMapName(targetType)} = {\n$items\n};';
}

const _pgsqlEnumChecker = TypeChecker.fromRuntime(PgSqlEnum);

PgSqlEnum _fromAnnotation(DartObject? dartObject) {
  if (dartObject == null) {
    return const PgSqlEnum();
  }
  final reader = ConstantReader(dartObject);
  return PgSqlEnum(
      alwaysCreate: reader.read('alwaysCreate').literalValue as bool,
      fieldRename: enumValueForDartObject(
        reader.read('fieldRename').objectValue,
        FieldRename.values,
        (f) => f.toString().split('.')[1],
      ));
}
