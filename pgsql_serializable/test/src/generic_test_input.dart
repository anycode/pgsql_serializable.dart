// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `result` because of type `TResult` (type parameter).
To support type parameters (generic types) you can:
$converterOrKeyInstructions
* Set `PgSqlSerializable.genericArgumentFactories` to `true`
  https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/genericArgumentFactories.html''',
  element: 'result',
)
@PgSqlSerializable()
class Issue713<TResult> {
  List<TResult>? result;
}

@ShouldGenerate(r'''
GenericClass<T, S> _$GenericClassFromPgSql<T extends num, S>(
  Map<String, dynamic> pgsql,
) => GenericClass<T, S>()
  ..fieldObject = _dataFromPgSql(pgsql['fieldObject'])
  ..fieldDynamic = _dataFromPgSql(pgsql['fieldDynamic'])
  ..fieldInt = _dataFromPgSql(pgsql['fieldInt'])
  ..fieldT = _dataFromPgSql(pgsql['fieldT'])
  ..fieldS = _dataFromPgSql(pgsql['fieldS']);

Map<String, dynamic> _$GenericClassToPgSql<T extends num, S>(
  GenericClass<T, S> instance,
) => <String, dynamic>{
  'fieldObject': _dataToPgSql(instance.fieldObject),
  'fieldDynamic': _dataToPgSql(instance.fieldDynamic),
  'fieldInt': _dataToPgSql(instance.fieldInt),
  'fieldT': _dataToPgSql(instance.fieldT),
  'fieldS': _dataToPgSql(instance.fieldS),
};
''')
@PgSqlSerializable()
class GenericClass<T extends num, S> {
  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  late Object fieldObject;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  dynamic fieldDynamic;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  late int fieldInt;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  late T fieldT;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  late S fieldS;

  GenericClass();
}

T _dataFromPgSql<T extends num>(Object? input) => throw UnimplementedError();

Object _dataToPgSql<T extends num>(T input) => throw UnimplementedError();

@ShouldGenerate(
  r'''
GenericArgumentFactoriesFlagWithoutGenericType
_$GenericArgumentFactoriesFlagWithoutGenericTypeFromPgSql(
  Map<String, dynamic> pgsql,
) => GenericArgumentFactoriesFlagWithoutGenericType();

Map<String, dynamic> _$GenericArgumentFactoriesFlagWithoutGenericTypeToPgSql(
  GenericArgumentFactoriesFlagWithoutGenericType instance,
) => <String, dynamic>{};
''',
  expectedLogItems: [
    'The class `GenericArgumentFactoriesFlagWithoutGenericType` is annotated '
        'with `PgSqlSerializable` field `genericArgumentFactories: true`. '
        '`genericArgumentFactories: true` only affects classes with type '
        'parameters. For classes without type parameters, the option is '
        'ignored.',
  ],
)
@PgSqlSerializable(genericArgumentFactories: true)
class GenericArgumentFactoriesFlagWithoutGenericType {}
