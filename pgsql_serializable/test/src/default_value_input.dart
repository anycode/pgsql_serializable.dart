// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. '
  '`defaultValue` is `Symbol`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithSymbol {
  @PgSqlKey(defaultValue: #symbol)
  late Object field;

  DefaultWithSymbol();
}

int _function() => 42;

@ShouldGenerate(r'''
DefaultWithFunction _$DefaultWithFunctionFromPgSql(Map<String, dynamic> pgsql) =>
    DefaultWithFunction()..field = pgsql['field'] ?? _function();

Map<String, dynamic> _$DefaultWithFunctionToPgSql(
  DefaultWithFunction instance,
) => <String, dynamic>{'field': instance.field};
''')
@PgSqlSerializable()
class DefaultWithFunction {
  @PgSqlKey(defaultValue: _function)
  Object? field;

  DefaultWithFunction();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. '
  '`defaultValue` is `List > Function`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithFunctionInList {
  @PgSqlKey(defaultValue: [_function])
  Object? field;

  DefaultWithFunctionInList();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. '
  '`defaultValue` is `Type`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithType {
  @PgSqlKey(defaultValue: Object)
  late Object field;

  DefaultWithType();
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. '
  '`defaultValue` is `Duration`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithConstObject {
  @PgSqlKey(defaultValue: Duration())
  late Object field;

  DefaultWithConstObject();
}

enum Enum { value }

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. '
  '`defaultValue` is `List > Enum`, it must be a literal.',
  element: 'field',
)
@PgSqlSerializable()
class DefaultWithNestedEnum {
  @PgSqlKey(defaultValue: [Enum.value])
  late Object field;

  DefaultWithNestedEnum();
}

@ShouldThrow(
  '`PgSqlKey.nullForUndefinedEnumValue` cannot be used with '
  '`PgSqlKey.defaultValue`.',
  element: 'enumValue',
)
@PgSqlSerializable()
class BadEnumDefaultValue {
  @PgSqlKey(defaultValue: PgSqlKey.nullForUndefinedEnumValue)
  Enum? enumValue;

  BadEnumDefaultValue();
}

@ShouldGenerate(r'''
DefaultWithToPgSqlClass _$DefaultWithToPgSqlClassFromPgSql(
  Map<String, dynamic> pgsql,
) => DefaultWithToPgSqlClass()
  ..fieldDefaultValueToPgSql = pgsql['fieldDefaultValueToPgSql'] == null
      ? 7
      : DefaultWithToPgSqlClass._fromPgSql(
          pgsql['fieldDefaultValueToPgSql'] as String,
        );
''')
@PgSqlSerializable(createToPgSql: false)
class DefaultWithToPgSqlClass {
  @PgSqlKey(defaultValue: 7, fromPgSql: _fromPgSql)
  late int fieldDefaultValueToPgSql;

  DefaultWithToPgSqlClass();

  static int _fromPgSql(String input) => 41;
}

@ShouldGenerate(
  r'''
DefaultWithDisallowNullRequiredClass
_$DefaultWithDisallowNullRequiredClassFromPgSql(Map<String, dynamic> pgsql) {
  $checkKeys(
    pgsql,
    requiredKeys: const ['theField'],
    disallowNullValues: const ['theField'],
  );
  return DefaultWithDisallowNullRequiredClass()
    ..theField = (pgsql['theField'] as num?)?.toInt() ?? 7;
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
  int? theField;

  DefaultWithDisallowNullRequiredClass();
}

@ShouldGenerate(
  r'''
CtorDefaultValueAndPgSqlKeyDefaultValue
_$CtorDefaultValueAndPgSqlKeyDefaultValueFromPgSql(Map<String, dynamic> pgsql) =>
    CtorDefaultValueAndPgSqlKeyDefaultValue(
      (pgsql['theField'] as num?)?.toInt() ?? 7,
    );
''',
  expectedLogItems: [
    'The constructor parameter for `theField` has a default value `6`, but the '
        '`PgSqlKey.defaultValue` value `7` will be used for missing or `null` '
        'values in PgSQL decoding.',
  ],
)
@PgSqlSerializable(createToPgSql: false)
class CtorDefaultValueAndPgSqlKeyDefaultValue {
  @PgSqlKey(defaultValue: 7)
  final int theField;

  CtorDefaultValueAndPgSqlKeyDefaultValue([this.theField = 6]);
}

@ShouldGenerate(
  r'''
SameCtorAndPgSqlKeyDefaultValue _$SameCtorAndPgSqlKeyDefaultValueFromPgSql(
  Map<String, dynamic> pgsql,
) => SameCtorAndPgSqlKeyDefaultValue((pgsql['theField'] as num?)?.toInt() ?? 3);
''',
  expectedLogItems: [
    'The default value `3` for `theField` is defined twice '
        'in the constructor and in the `PgSqlKey.defaultValue`.',
  ],
)
@PgSqlSerializable(createToPgSql: false)
class SameCtorAndPgSqlKeyDefaultValue {
  @PgSqlKey(defaultValue: 3)
  final int theField;

  SameCtorAndPgSqlKeyDefaultValue([this.theField = 3]);
}

@ShouldGenerate(r'''
DefaultDoubleConstants _$DefaultDoubleConstantsFromPgSql(
  Map<String, dynamic> pgsql,
) => DefaultDoubleConstants()
  ..defaultNan = (pgsql['defaultNan'] as num?)?.toDouble() ?? double.nan
  ..defaultNegativeInfinity =
      (pgsql['defaultNegativeInfinity'] as num?)?.toDouble() ??
      double.negativeInfinity
  ..defaultInfinity =
      (pgsql['defaultInfinity'] as num?)?.toDouble() ?? double.infinity
  ..defaultMinPositive =
      (pgsql['defaultMinPositive'] as num?)?.toDouble() ?? 5e-324
  ..defaultMaxFinite =
      (pgsql['defaultMaxFinite'] as num?)?.toDouble() ?? 1.7976931348623157e+308;
''')
@PgSqlSerializable(createToPgSql: false)
class DefaultDoubleConstants {
  @PgSqlKey(defaultValue: double.nan)
  late double defaultNan;
  @PgSqlKey(defaultValue: double.negativeInfinity)
  late double defaultNegativeInfinity;
  @PgSqlKey(defaultValue: double.infinity)
  late double defaultInfinity;

  // Since these values can be represented as number literals, there is no
  // special handling. Including them here for completeness, though.
  @PgSqlKey(defaultValue: double.minPositive)
  late double defaultMinPositive;
  @PgSqlKey(defaultValue: double.maxFinite)
  late double defaultMaxFinite;

  DefaultDoubleConstants();
}
