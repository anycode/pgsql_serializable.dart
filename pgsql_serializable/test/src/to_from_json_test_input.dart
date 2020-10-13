// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_pgsql_serializable_test_input.dart';

int _toInt(bool input) => 42;

int _twoArgFunction(int a, int b) => 42;

dynamic _toDynamic(dynamic input) => null;

Object _toObject(Object input) => null;

String _toStringFromObject(Object input) => null;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function `_toInt` '
  'return type `int` is not compatible with field type `String`.',
  element: 'field',
)
@PgSqlSerializable()
class BadFromFuncReturnType {
  @PgSqlKey(fromPgSql: _toInt)
  String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_twoArgFunction` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable()
class InvalidFromFunc2Args {
  @PgSqlKey(fromPgSql: _twoArgFunction)
  String field;
}

@ShouldGenerate(
  r'''
ValidToFromFuncClassStatic _$ValidToFromFuncClassStaticFromPgSql(
    Map<String, dynamic> pgsql) {
  return ValidToFromFuncClassStatic()
    ..field = ValidToFromFuncClassStatic._staticFunc(pgsql['field'] as String);
}

Map<String, dynamic> _$ValidToFromFuncClassStaticToPgSql(
        ValidToFromFuncClassStatic instance) =>
    <String, dynamic>{
      'field': ValidToFromFuncClassStatic._staticFunc(instance.field),
    };
''',
  configurations: ['default'],
)
@PgSqlSerializable()
class ValidToFromFuncClassStatic {
  static String _staticFunc(String param) => null;

  @PgSqlKey(fromPgSql: _staticFunc, toPgSql: _staticFunc)
  String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `toPgSql` function `_toInt` '
  'argument type `bool` is not compatible with field type `String`.',
  element: 'field',
)
@PgSqlSerializable()
class BadToFuncReturnType {
  @PgSqlKey(toPgSql: _toInt)
  String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `toPgSql` function '
  '`_twoArgFunction` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable()
class InvalidToFunc2Args {
  @PgSqlKey(toPgSql: _twoArgFunction)
  String field;
}

@ShouldGenerate(
  "_toStringFromObject(pgsql['field'])",
  contains: true,
)
@PgSqlSerializable()
class ObjectConvertMethods {
  @PgSqlKey(fromPgSql: _toStringFromObject, toPgSql: _toObject)
  String field;
}

@ShouldGenerate(
  "_toDynamic(pgsql['field'])",
  contains: true,
  configurations: ['default'],
)
@PgSqlSerializable()
class DynamicConvertMethods {
  @PgSqlKey(fromPgSql: _toDynamic, toPgSql: _toDynamic)
  String field;
}

String _toString(String input) => null;

@ShouldGenerate(
  "_toString(pgsql['field'] as String)",
  contains: true,
  configurations: ['default'],
)
@PgSqlSerializable()
class TypedConvertMethods {
  @PgSqlKey(fromPgSql: _toString, toPgSql: _toString)
  String field;
}

@ShouldGenerate(
  r'''
Map<String, dynamic> _$ToPgSqlNullableFalseIncludeIfNullFalseToPgSql(
    ToPgSqlNullableFalseIncludeIfNullFalse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', _toString(instance.field));
  return val;
}
''',
  expectedLogItems: [
    'The `PgSqlKey.nullable` value on '
        '`ToPgSqlNullableFalseIncludeIfNullFalse.field` will be ignored because '
        'a custom conversion function is being used.',
  ],
  configurations: ['default'],
)
@PgSqlSerializable(createFactory: false)
class ToPgSqlNullableFalseIncludeIfNullFalse {
  @PgSqlKey(toPgSql: _toString, includeIfNull: false, nullable: false)
  String field;
}

String _fromDynamicMap(Map input) => null;

String _fromDynamicList(List input) => null;

String _fromDynamicIterable(Iterable input) => null;

@ShouldGenerate(
  r'''
FromDynamicCollection _$FromDynamicCollectionFromPgSql(
    Map<String, dynamic> pgsql) {
  return FromDynamicCollection()
    ..mapField = _fromDynamicMap(pgsql['mapField'] as Map)
    ..listField = _fromDynamicList(pgsql['listField'] as List)
    ..iterableField = _fromDynamicIterable(pgsql['iterableField'] as List);
}
''',
  configurations: ['default'],
)
@PgSqlSerializable(createToPgSql: false)
class FromDynamicCollection {
  @PgSqlKey(fromPgSql: _fromDynamicMap)
  String mapField;
  @PgSqlKey(fromPgSql: _fromDynamicList)
  String listField;
  @PgSqlKey(fromPgSql: _fromDynamicIterable)
  String iterableField;
}

String _noArgs() => null;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_noArgs` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable(createToPgSql: false)
class BadNoArgs {
  @PgSqlKey(fromPgSql: _noArgs)
  String field;
}

String _twoArgs(a, b) => null;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_twoArgs` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable(createToPgSql: false)
class BadTwoRequiredPositional {
  @PgSqlKey(fromPgSql: _twoArgs)
  String field;
}

String _oneNamed({a}) => null;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_oneNamed` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable(createToPgSql: false)
class BadOneNamed {
  @PgSqlKey(fromPgSql: _oneNamed)
  String field;
}

String _oneNormalOnePositional(a, [b]) => null;

@ShouldGenerate("_oneNormalOnePositional(pgsql['field'])", contains: true)
@PgSqlSerializable(createToPgSql: false)
class OkayOneNormalOptionalPositional {
  @PgSqlKey(fromPgSql: _oneNormalOnePositional)
  String field;
}

String _oneNormalOptionalNamed(a, {b}) => null;

@ShouldGenerate("_oneNormalOptionalNamed(pgsql['field'])", contains: true)
@PgSqlSerializable(createToPgSql: false)
class OkayOneNormalOptionalNamed {
  @PgSqlKey(fromPgSql: _oneNormalOptionalNamed)
  String field;
}

String _onlyOptionalPositional([a, b]) => null;

@ShouldGenerate("_onlyOptionalPositional(pgsql['field'])", contains: true)
@PgSqlSerializable(createToPgSql: false)
class OkayOnlyOptionalPositional {
  @PgSqlKey(fromPgSql: _onlyOptionalPositional)
  String field;
}
