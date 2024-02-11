// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: inference_failure_on_instance_creation

import 'package:collection/collection.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';

import '../test_utils.dart';

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

class Issue980GenericClass<T> {
  final T value;

  Issue980GenericClass(this.value);

  factory Issue980GenericClass.fromPgSql(Map<String, dynamic> pgsql) =>
      Issue980GenericClass(pgsql['value'] as T);

  Map<String, dynamic> toPgSql() => {'value': value};

  @override
  bool operator ==(Object other) =>
      other is Issue980GenericClass && value == other.value;

  @override
  int get hashCode => value.hashCode;
}

@PgSqlSerializable()
class Issue980ParentClass {
  final List<Issue980GenericClass<int>> list;

  Issue980ParentClass(this.list);

  factory Issue980ParentClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Issue980ParentClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$Issue980ParentClassToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is Issue980ParentClass && deepEquals(list, other.list);

  @override
  int get hashCode => const DeepCollectionEquality().hash(list);
}

@PgSqlSerializable(genericArgumentFactories: true)
class Issue1047ParentClass<T> {
  Issue1047ParentClass({required this.edges});

  factory Issue1047ParentClass.fromPgSql(
          Map<String, dynamic> pgsql, T Function(Object? pgsql) fromPgSqlT) =>
      _$Issue1047ParentClassFromPgSql<T>(pgsql, fromPgSqlT);

  final List<Issue1047Class<T>> edges;

  Map<String, dynamic> toPgSql(Object? Function(T value) toPgSqlT) =>
      _$Issue1047ParentClassToPgSql(this, toPgSqlT);
}

@PgSqlSerializable(genericArgumentFactories: true)
class Issue1047Class<T> {
  Issue1047Class({
    required this.node,
  });

  factory Issue1047Class.fromPgSql(
    Map<String, dynamic> pgsql,
    T Function(Object? pgsql) fromPgSqlT,
  ) =>
      _$Issue1047ClassFromPgSql<T>(pgsql, fromPgSqlT);

  final T node;

  Map<String, dynamic> toPgSql(Object? Function(T value) toPgSqlT) =>
      _$Issue1047ClassToPgSql(this, toPgSqlT);
}
