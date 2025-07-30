// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'tuple_example.g.dart';

@PgSqlSerializable(genericArgumentFactories: true)
class Tuple<T, S> {
  final T value1;

  final S value2;

  Tuple(this.value1, this.value2);

  factory Tuple.fromPgSql(
    Map<String, dynamic> pgsql,
    T Function(Object? pgsql) fromPgSqlT,
    S Function(Object? pgsql) fromPgSqlS,
  ) => _$TupleFromPgSql(pgsql, fromPgSqlT, fromPgSqlS);

  Map<String, dynamic> toPgSql(
    Object Function(T value) toPgSqlT,
    Object Function(S value) toPgSqlS,
  ) => _$TupleToPgSql(this, toPgSqlT, toPgSqlS);
}

@PgSqlSerializable()
class ConcreteClass {
  final Tuple<int, DateTime> tuple1;

  final Tuple<Duration, BigInt> tuple2;

  ConcreteClass(this.tuple1, this.tuple2);

  factory ConcreteClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ConcreteClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ConcreteClassToPgSql(this);
}
