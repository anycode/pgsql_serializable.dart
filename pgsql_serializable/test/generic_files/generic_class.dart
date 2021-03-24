// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'generic_class.g.dart';

@PgSqlSerializable()
class GenericClass<T extends num, S> {
  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  Object? fieldObject;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  dynamic fieldDynamic;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  int? fieldInt;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  T? fieldT;

  @PgSqlKey(fromPgSql: _dataFromPgSql, toPgSql: _dataToPgSql)
  S? fieldS;

  GenericClass();

  factory GenericClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$GenericClassFromPgSql<T, S>(pgsql);

  Map<String, dynamic> toPgSql() => _$GenericClassToPgSql(this);

  static T _dataFromPgSql<T, S, U>(Map<String, dynamic> input,
          [S? other1, U? other2]) =>
      input['value'] as T;

  static Map<String, dynamic> _dataToPgSql<T, S, U>(T input,
          [S? other1, U? other2]) =>
      {'value': input};
}

@PgSqlSerializable()
@_DurationMillisecondConverter.named()
@_DurationListMillisecondConverter()
class GenericClassWithConverter<T extends num, S> {
  @_SimpleConverter()
  Object? fieldObject;

  @_SimpleConverter()
  dynamic fieldDynamic;

  @_SimpleConverter()
  int? fieldInt;

  @_SimpleConverter()
  T? fieldT;

  @_SimpleConverter()
  S? fieldS;

  Duration? duration;

  List<Duration>? listDuration;

  GenericClassWithConverter();

  factory GenericClassWithConverter.fromPgSql(Map<String, dynamic> pgsql) =>
      _$GenericClassWithConverterFromPgSql<T, S>(pgsql);

  Map<String, dynamic> toPgSql() => _$GenericClassWithConverterToPgSql(this);
}

class _SimpleConverter<T> implements PgSqlConverter<T, Map<String, dynamic>> {
  const _SimpleConverter();

  @override
  T fromPgSql(Map<String, dynamic> pgsql) => pgsql['value'] as T;

  @override
  Map<String, dynamic> toPgSql(T object) => {'value': object};
}

class _DurationMillisecondConverter implements PgSqlConverter<Duration?, int?> {
  const _DurationMillisecondConverter.named();

  @override
  Duration? fromPgSql(int? pgsql) =>
      pgsql == null ? null : Duration(milliseconds: pgsql);

  @override
  int? toPgSql(Duration? object) => object?.inMilliseconds;
}

class _DurationListMillisecondConverter
    implements PgSqlConverter<List<Duration>?, int?> {
  const _DurationListMillisecondConverter();

  @override
  List<Duration>? fromPgSql(int? pgsql) =>
      pgsql == null ? null : [Duration(milliseconds: pgsql)];

  @override
  int? toPgSql(List<Duration>? object) =>
      object?.fold<int>(0, (sum, obj) => sum + obj.inMilliseconds);
}
