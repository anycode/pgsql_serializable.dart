// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_pgsql_serializable_test_input.dart';

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  '`defaultValue` is `Symbol`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithSymbol {
  @PgSqlKey(defaultValue: #symbol)
  Object field;

  DefaultWithSymbol();
}

int _function() => 42;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  '`defaultValue` is `Function`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithFunction {
  @PgSqlKey(defaultValue: _function)
  Object field;

  DefaultWithFunction();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  '`defaultValue` is `Type`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithType {
  @PgSqlKey(defaultValue: Object)
  Object field;

  DefaultWithType();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  '`defaultValue` is `Duration`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithConstObject {
  @PgSqlKey(defaultValue: Duration())
  Object field;

  DefaultWithConstObject();
}

enum Enum { value }

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  '`defaultValue` is `List > Enum`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithNestedEnum {
  @PgSqlKey(defaultValue: [Enum.value])
  Object field;

  DefaultWithNestedEnum();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  'Cannot use `defaultValue` on a field with `nullable` false.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithNonNullableField {
  @PgSqlKey(defaultValue: 42, nullable: false)
  Object field;

  DefaultWithNonNullableField();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. '
  'Cannot use `defaultValue` on a field with `nullable` false.',
  element: 'field',
)
@PgSqlSerializable(nullable: false)
class DefaultWithNonNullableClass {
  @PgSqlKey(defaultValue: 42)
  Object field;

  DefaultWithNonNullableClass();
}

@ShouldGenerate(
  r'''
DefaultWithToPgSqlClass _$DefaultWithToPgSqlClassFromPgSql(
    Map<String, dynamic> pgsql) {
  return DefaultWithToPgSqlClass()
    ..fieldDefaultValueToPgSql = DefaultWithToPgSqlClass._fromPgSql(
            pgsql['fieldDefaultValueToPgSql'] as String) ??
        7;
}
''',
  expectedLogItems: [
    '''
The field `fieldDefaultValueToPgSql` has both `defaultValue` and `fromPgSql` defined which likely won't work for your scenario.
Instead of using `defaultValue`, set `nullable: false` and handle `null` in the `fromPgSql` function.'''
  ],
)
@PgSqlSerializable(createToPgSql: false)
class DefaultWithToPgSqlClass {
  @PgSqlKey(defaultValue: 7, fromPgSql: _fromPgSql)
  int fieldDefaultValueToPgSql;

  DefaultWithToPgSqlClass();

  static int _fromPgSql(String input) => 41;
}

@ShouldGenerate(
  r'''
DefaultWithDisallowNullRequiredClass
    _$DefaultWithDisallowNullRequiredClassFromPgSql(Map<String, dynamic> pgsql) {
  $checkKeys(pgsql,
      requiredKeys: const ['theField'], disallowNullValues: const ['theField']);
  return DefaultWithDisallowNullRequiredClass()
    ..theField = pgsql['theField'] as int ?? 7;
}
''',
  expectedLogItems: [
    'The `defaultValue` on field `theField` will have no effect because both '
        '`disallowNullValue` and `required` are set to `true`.',
  ],
)
@PgSqlSerializable(createToPgSql: false)
class DefaultWithDisallowNullRequiredClass {
  @PgSqlKey(defaultValue: 7, disallowNullValue: true, required: true)
  int theField;

  DefaultWithDisallowNullRequiredClass();
}

@ShouldGenerate(r'''
DefaultDoubleConstants _$DefaultDoubleConstantsFromPgSql(
    Map<String, dynamic> pgsql) {
  return DefaultDoubleConstants()
    ..defaultNan = (pgsql['defaultNan'] as num)?.toDouble() ?? double.nan
    ..defaultNegativeInfinity =
        (pgsql['defaultNegativeInfinity'] as num)?.toDouble() ??
            double.negativeInfinity
    ..defaultInfinity =
        (pgsql['defaultInfinity'] as num)?.toDouble() ?? double.infinity
    ..defaultMinPositive =
        (pgsql['defaultMinPositive'] as num)?.toDouble() ?? 5e-324
    ..defaultMaxFinite = (pgsql['defaultMaxFinite'] as num)?.toDouble() ??
        1.7976931348623157e+308;
}
''')
@PgSqlSerializable(createToPgSql: false)
class DefaultDoubleConstants {
  @PgSqlKey(defaultValue: double.nan)
  double defaultNan;
  @PgSqlKey(defaultValue: double.negativeInfinity)
  double defaultNegativeInfinity;
  @PgSqlKey(defaultValue: double.infinity)
  double defaultInfinity;

  // Since these values can be represented as number literals, there is no
  // special handling. Including them here for completeness, though.
  @PgSqlKey(defaultValue: double.minPositive)
  double defaultMinPositive;
  @PgSqlKey(defaultValue: double.maxFinite)
  double defaultMaxFinite;

  DefaultDoubleConstants();
}
