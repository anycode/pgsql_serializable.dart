// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'pgsql_converter_example.g.dart';

/// An example of using [PgSqlConverter] to change the encode/decode of a default
/// type.
@PgSqlSerializable()
@_DateTimeEpochConverter()
class DateTimeExample {
  final DateTime when;

  DateTimeExample(this.when);

  factory DateTimeExample.fromPgSql(Map<String, dynamic> pgsql) =>
      _$DateTimeExampleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$DateTimeExampleToPgSql(this);
}

class _DateTimeEpochConverter implements PgSqlConverter<DateTime, int> {
  const _DateTimeEpochConverter();

  @override
  DateTime fromPgSql(int pgsql) => DateTime.fromMillisecondsSinceEpoch(pgsql);

  @override
  int toPgSql(DateTime object) => object.millisecondsSinceEpoch;
}

@PgSqlSerializable()
class GenericCollection<T> {
  @PgSqlKey(name: 'page')
  final int? page;

  @PgSqlKey(name: 'total_results')
  final int? totalResults;

  @PgSqlKey(name: 'total_pages')
  final int? totalPages;

  @PgSqlKey(name: 'results')
  @_Converter()
  final List<T>? results;

  GenericCollection({
    this.page,
    this.totalResults,
    this.totalPages,
    this.results,
  });

  factory GenericCollection.fromPgSql(Map<String, dynamic> pgsql) =>
      _$GenericCollectionFromPgSql<T>(pgsql);

  Map<String, dynamic> toPgSql() => _$GenericCollectionToPgSql(this);
}

class _Converter<T> implements PgSqlConverter<T, Object?> {
  const _Converter();

  @override
  T fromPgSql(Object? pgsql) {
    if (pgsql is Map<String, dynamic> &&
        pgsql.containsKey('name') &&
        pgsql.containsKey('size')) {
      return CustomResult.fromPgSql(pgsql) as T;
    }
    // This will only work if `pgsql` is a native PgSQL type:
    //   num, String, bool, null, etc
    // *and* is assignable to `T`.
    return pgsql as T;
  }

  // This will only work if `object` is a native PgSQL type:
  //   num, String, bool, null, etc
  // Or if it has a `toPgSql()` function`.
  @override
  Object? toPgSql(T object) => object;
}

@PgSqlSerializable()
class CustomResult {
  final String name;
  final int size;

  CustomResult(this.name, this.size);

  factory CustomResult.fromPgSql(Map<String, dynamic> pgsql) =>
      _$CustomResultFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$CustomResultToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is CustomResult && other.name == name && other.size == size;

  @override
  int get hashCode => name.hashCode * 31 ^ size.hashCode;
}
