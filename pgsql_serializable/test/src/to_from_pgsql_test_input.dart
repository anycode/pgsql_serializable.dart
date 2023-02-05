// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_pgsql_serializable_test_input.dart';

int _toInt(bool input) => 42;

int _twoArgFunction(int a, int b) => 42;

dynamic _toDynamic(dynamic input) => null;

Object _toObject(Object input) => throw UnimplementedError();

String _toStringFromObject(Object? input) => throw UnimplementedError();

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. The `fromPgSql` function '
  '`_toInt` return type `int` is not compatible with field type `String`.',
  element: 'field',
)
@PgSqlSerializable()
class BadFromFuncReturnType {
  @PgSqlKey(fromPgSql: _toInt)
  late String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. The `fromPgSql` function '
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
        Map<String, dynamic> pgsql) =>
    ValidToFromFuncClassStatic()
      ..field =
          ValidToFromFuncClassStatic._staticFunc(pgsql['field'] as String);

Map<String, dynamic> _$ValidToFromFuncClassStaticToPgSql(
        ValidToFromFuncClassStatic instance) =>
    <String, dynamic>{
      'field': ValidToFromFuncClassStatic._staticFunc(instance.field),
    };
''',
)
@PgSqlSerializable()
class ValidToFromFuncClassStatic {
  static String _staticFunc(String param) => throw UnimplementedError();

  @PgSqlKey(fromPgSql: _staticFunc, toPgSql: _staticFunc)
  late String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. The `toPgSql` function `_toInt` '
  'argument type `bool` is not compatible with field type `String`.',
  element: 'field',
)
@PgSqlSerializable()
class BadToFuncReturnType {
  @PgSqlKey(toPgSql: _toInt)
  late String field;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `values` field. The `fromPgSql` function '
  '`_fromList` return type `List<int>?` is not compatible with field type '
  '`List<int>`.',
  element: 'values',
)
@PgSqlSerializable()
class Reproduce869NullableGenericType {
  @PgSqlKey(
    toPgSql: _toList, // nullable
    fromPgSql: _fromList, // nullable
  )
  late final List<int> values;
}

@ShouldGenerate(
  r'''
Reproduce869NullableGenericTypeWithDefault
    _$Reproduce869NullableGenericTypeWithDefaultFromPgSql(
            Map<String, dynamic> pgsql) =>
        Reproduce869NullableGenericTypeWithDefault()
          ..values =
              pgsql['values'] == null ? [] : _fromList(pgsql['values'] as List?)
          ..valuesNullable = pgsql['valuesNullable'] == null
              ? []
              : _fromList(pgsql['valuesNullable'] as List?);

Map<String, dynamic> _$Reproduce869NullableGenericTypeWithDefaultToPgSql(
        Reproduce869NullableGenericTypeWithDefault instance) =>
    <String, dynamic>{
      'values': _toList(instance.values),
      'valuesNullable': _toList(instance.valuesNullable),
    };
''',
)
@PgSqlSerializable()
class Reproduce869NullableGenericTypeWithDefault {
  @PgSqlKey(
    toPgSql: _toList, // nullable
    fromPgSql: _fromList, // nullable
    defaultValue: <int>[],
  )
  late List<int> values;

  @PgSqlKey(
    toPgSql: _toList, // nullable
    fromPgSql: _fromList, // nullable
    defaultValue: <int>[],
  )
  List<int>? valuesNullable;
}

List<int>? _fromList(List? pairs) =>
    pairs?.map((it) => it as int).toList(growable: false);

List<List>? _toList(List<int>? pairs) =>
    pairs?.map((it) => [it]).toList(growable: false);

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. The `toPgSql` function '
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
)
@PgSqlSerializable()
class TypedConvertMethods {
  @PgSqlKey(fromPgSql: _toString, toPgSql: _toString)
  late String field;
}

String? _toStringNullOnEmpty(String input) => input.isEmpty ? null : input;

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

  writeNotNull('field', _toStringNullOnEmpty(instance.field));
  return val;
}
''',
)
@PgSqlSerializable(createFactory: false)
class ToPgSqlNullableFalseIncludeIfNullFalse {
  @PgSqlKey(toPgSql: _toStringNullOnEmpty, includeIfNull: false)
  late String field;
}

String _fromDynamicMap(Map input) => '';

String _fromDynamicList(List input) => 'null';

String _fromDynamicIterable(Iterable input) => 'null';

@ShouldGenerate(
  r'''
FromDynamicCollection _$FromDynamicCollectionFromPgSql(
        Map<String, dynamic> pgsql) =>
    FromDynamicCollection()
      ..mapField = _fromDynamicMap(pgsql['mapField'] as Map)
      ..listField = _fromDynamicList(pgsql['listField'] as List)
      ..iterableField = _fromDynamicIterable(pgsql['iterableField'] as List);
''',
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
        Map<String, dynamic> pgsql) =>
    FromNullableDynamicCollection()
      ..mapField = _fromNullableDynamicMap(pgsql['mapField'] as Map?)
      ..listField = _fromNullableDynamicList(pgsql['listField'] as List?)
      ..iterableField =
          _fromNullableDynamicIterable(pgsql['iterableField'] as List?);
''',
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
  'Error with `@PgSqlKey` on the `field` field. The `fromPgSql` function '
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
  'Error with `@PgSqlKey` on the `field` field. The `fromPgSql` function '
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
  'Error with `@PgSqlKey` on the `field` field. The `fromPgSql` function '
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

@ShouldGenerate(
  r'''
_BetterPrivateNames _$BetterPrivateNamesFromPgSql(Map<String, dynamic> pgsql) =>
    _BetterPrivateNames(
      name: pgsql['name'] as String,
    );

Map<String, dynamic> _$BetterPrivateNamesToPgSql(
        _BetterPrivateNames instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
''',
)
@PgSqlSerializable(createFactory: true, createToPgSql: true)
// ignore: unused_element
class _BetterPrivateNames {
  final String name;

  _BetterPrivateNames({required this.name});
}
