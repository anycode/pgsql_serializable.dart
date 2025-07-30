// Copyright (c) 2021, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'generic_argument_factories_nullable.g.dart';

@PgSqlSerializable(genericArgumentFactories: true)
class GenericClassWithHelpersNullable<T, S> {
  final T? value;

  final List<T?>? list;

  final Set<S?>? someSet;

  GenericClassWithHelpersNullable({this.value, this.list, this.someSet});

  factory GenericClassWithHelpersNullable.fromPgSql(
    Map<String, dynamic> pgsql,
    T Function(Object? pgsql) fromPgSqlT,
    S Function(Object? pgsql) fromPgSqlS,
  ) => _$GenericClassWithHelpersNullableFromPgSql(pgsql, fromPgSqlT, fromPgSqlS);

  Map<String, dynamic> toPgSql(
    Object? Function(T value) toPgSqlT,
    Object? Function(S value) toPgSqlS,
  ) => _$GenericClassWithHelpersNullableToPgSql(this, toPgSqlT, toPgSqlS);
}

@PgSqlSerializable()
class ConcreteClassNullable {
  final GenericClassWithHelpersNullable<int, String> value;

  final GenericClassWithHelpersNullable<double, BigInt> value2;

  // Regression scenario for google/pgsql_serializable.dart#803
  final GenericClassWithHelpersNullable<double?, BigInt?> value3;

  ConcreteClassNullable(this.value, this.value2, this.value3);

  factory ConcreteClassNullable.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ConcreteClassNullableFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ConcreteClassNullableToPgSql(this);
}
