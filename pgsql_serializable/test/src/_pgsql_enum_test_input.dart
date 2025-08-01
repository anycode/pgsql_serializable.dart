// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldGenerate(r'''
const _$pgEnumValueIssue1147EnumMap = {
  EnumValueIssue1147.success: 200,
  EnumValueIssue1147.weird: 601,
};
''')
@PgSqlEnum(alwaysCreate: true, valueField: 'statusCodeNumber')
enum EnumValueIssue1147 {
  success(200),
  @PgSqlValue(601)
  weird(701);

  const EnumValueIssue1147(this.statusCodeNumber);

  final int statusCodeNumber;
}

@ShouldThrow(
  '`PgSqlEnum.valueField` was set to "notAField", but that is not a valid, '
  'instance field on `EnumValueNotAField`.',
)
@PgSqlEnum(alwaysCreate: true, valueField: 'notAField')
enum EnumValueNotAField {
  success(200),
  @PgSqlValue(601)
  weird(701);

  const EnumValueNotAField(this.statusCodeNumber);

  final int statusCodeNumber;
}

@ShouldThrow(
  '`PgSqlEnum.valueField` was set to "symbolWeird", but that field does not '
  'have a type of String, int, or null.',
)
@PgSqlEnum(alwaysCreate: true, valueField: 'symbolWeird')
enum EnumValueNotSupportType {
  success(#success),
  @PgSqlValue(601)
  weird(#weird);

  const EnumValueNotSupportType(this.symbolWeird);

  final Symbol symbolWeird;
}

@ShouldThrow(
  '`PgSqlEnum.valueField` was set to "values", but that is not a valid, '
  'instance field on `EnumValueWeirdField`.',
)
@PgSqlEnum(alwaysCreate: true, valueField: 'values')
enum EnumValueWeirdField {
  success(200),
  weird(701);

  const EnumValueWeirdField(this.something);

  final int something;
}

@ShouldThrow('`@PgSqlEnum` can only be used on enum elements.')
@PgSqlEnum() // ignore: invalid_annotation_target
class UnsupportedClass {}
