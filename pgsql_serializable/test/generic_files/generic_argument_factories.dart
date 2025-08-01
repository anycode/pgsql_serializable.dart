// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'generic_argument_factories.g.dart';

@PgSqlSerializable(genericArgumentFactories: true)
class GenericClassWithHelpers<T, S> {
  final T value;

  final List<T> list;

  final Set<S> someSet;

  GenericClassWithHelpers(this.value, this.list, this.someSet);

  factory GenericClassWithHelpers.fromPgSql(
    Map<String, dynamic> pgsql,
    T Function(Object? pgsql) fromPgSqlT,
    S Function(Object? pgsql) fromPgSqlS,
  ) => _$GenericClassWithHelpersFromPgSql(pgsql, fromPgSqlT, fromPgSqlS);

  Map<String, dynamic> toPgSql(
    Object? Function(T value) toPgSqlT,
    Object? Function(S value) toPgSqlS,
  ) => _$GenericClassWithHelpersToPgSql(this, toPgSqlT, toPgSqlS);
}

@PgSqlSerializable()
class ConcreteClass {
  final GenericClassWithHelpers<int, String> value;

  final GenericClassWithHelpers<double, BigInt> value2;

  // Regression scenario for google/pgsql_serializable.dart#803
  final GenericClassWithHelpers<double?, BigInt?> value3;

  ConcreteClass(this.value, this.value2, this.value3);

  factory ConcreteClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ConcreteClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ConcreteClassToPgSql(this);
}
