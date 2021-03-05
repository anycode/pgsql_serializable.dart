// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

part of '_pgsql_serializable_test_input.dart';

int _toInt(bool input) => 42;

int _twoArgFunction(int a, int b) => 42;

dynamic _toDynamic(dynamic input) => null;

Object _toObject(Object input) => throw UnimplementedError();

String _toStringFromObject(Object? input) => throw UnimplementedError();

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function `_toInt` '
  'return type `int` is not compatible with field type `String`.',
  element: 'field',
)
@PgSqlSerializable()
class BadFromFuncReturnType {
  @PgSqlKey(fromPgSql: _toInt)
  late String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_twoArgFunction` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable()
class InvalidFromFunc2Args {
  @PgSqlKey(fromPgSql: _twoArgFunction)
  late String field;
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
  static String _staticFunc(String param) => throw UnimplementedError();

  @PgSqlKey(fromPgSql: _staticFunc, toPgSql: _staticFunc)
  late String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `toPgSql` function `_toInt` '
  'argument type `bool` is not compatible with field type `String`.',
  element: 'field',
)
@PgSqlSerializable()
class BadToFuncReturnType {
  @PgSqlKey(toPgSql: _toInt)
  late String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `toPgSql` function '
  '`_twoArgFunction` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable()
class InvalidToFunc2Args {
  @PgSqlKey(toPgSql: _twoArgFunction)
  late String field;
}

@ShouldGenerate(
  "_toStringFromObject(pgsql['field'])",
  contains: true,
)
@PgSqlSerializable()
class ObjectConvertMethods {
  @PgSqlKey(fromPgSql: _toStringFromObject, toPgSql: _toObject)
  late String field;
}

@ShouldGenerate(
  "_toDynamic(pgsql['field'])",
  contains: true,
  configurations: ['default'],
)
@PgSqlSerializable()
class DynamicConvertMethods {
  @PgSqlKey(fromPgSql: _toDynamic, toPgSql: _toDynamic)
  late String field;
}

String _toString(String input) => 'null';

@ShouldGenerate(
  "_toString(pgsql['field'] as String)",
  contains: true,
  configurations: ['default'],
)
@PgSqlSerializable()
class TypedConvertMethods {
  @PgSqlKey(fromPgSql: _toString, toPgSql: _toString)
  late String field;
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
  configurations: ['default'],
)
@PgSqlSerializable(createFactory: false)
class ToPgSqlNullableFalseIncludeIfNullFalse {
  @PgSqlKey(toPgSql: _toString, includeIfNull: false)
  late String field;
}

String _fromDynamicMap(Map input) => '';

String _fromDynamicList(List input) => 'null';

String _fromDynamicIterable(Iterable input) => 'null';

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
  late String mapField;
  @PgSqlKey(fromPgSql: _fromDynamicList)
  late String listField;
  @PgSqlKey(fromPgSql: _fromDynamicIterable)
  late String iterableField;
}

String _fromNullableDynamicMap(Map? input) => '';

String _fromNullableDynamicList(List? input) => 'null';

String _fromNullableDynamicIterable(Iterable? input) => 'null';

@ShouldGenerate(
  r'''
FromNullableDynamicCollection _$FromNullableDynamicCollectionFromPgSql(
    Map<String, dynamic> pgsql) {
  return FromNullableDynamicCollection()
    ..mapField = _fromNullableDynamicMap(pgsql['mapField'] as Map?)
    ..listField = _fromNullableDynamicList(pgsql['listField'] as List?)
    ..iterableField =
        _fromNullableDynamicIterable(pgsql['iterableField'] as List?);
}
''',
  configurations: ['default'],
)
@PgSqlSerializable(createToPgSql: false)
class FromNullableDynamicCollection {
  @PgSqlKey(fromPgSql: _fromNullableDynamicMap)
  late String mapField;
  @PgSqlKey(fromPgSql: _fromNullableDynamicList)
  late String listField;
  @PgSqlKey(fromPgSql: _fromNullableDynamicIterable)
  late String iterableField;
}

String _noArgs() => throw UnimplementedError();

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_noArgs` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable(createToPgSql: false)
class BadNoArgs {
  @PgSqlKey(fromPgSql: _noArgs)
  String? field;
}

String? _twoArgs(a, b) => null;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_twoArgs` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable(createToPgSql: false)
class BadTwoRequiredPositional {
  @PgSqlKey(fromPgSql: _twoArgs)
  String? field;
}

String? _oneNamed({a}) => null;

@ShouldThrow(
  'Error with `@PgSqlKey` on `field`. The `fromPgSql` function '
  '`_oneNamed` must have one positional parameter.',
  element: 'field',
)
@PgSqlSerializable(createToPgSql: false)
class BadOneNamed {
  @PgSqlKey(fromPgSql: _oneNamed)
  String? field;
}

String _oneNormalOnePositional(a, [b]) => throw UnimplementedError();

@ShouldGenerate("_oneNormalOnePositional(pgsql['field'])", contains: true)
@PgSqlSerializable(createToPgSql: false)
class OkayOneNormalOptionalPositional {
  @PgSqlKey(fromPgSql: _oneNormalOnePositional)
  String? field;
}

String _oneNormalOptionalNamed(a, {b}) => throw UnimplementedError();

@ShouldGenerate("_oneNormalOptionalNamed(pgsql['field'])", contains: true)
@PgSqlSerializable(createToPgSql: false)
class OkayOneNormalOptionalNamed {
  @PgSqlKey(fromPgSql: _oneNormalOptionalNamed)
  String? field;
}

String _onlyOptionalPositional([a, b]) => throw UnimplementedError();

@ShouldGenerate("_onlyOptionalPositional(pgsql['field'])", contains: true)
@PgSqlSerializable(createToPgSql: false)
class OkayOnlyOptionalPositional {
  @PgSqlKey(fromPgSql: _onlyOptionalPositional)
  String? field;
}
