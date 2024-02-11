// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

enum EnumType { alpha, beta, gamma, delta }

class FromPgSqlDynamicParam {
  FromPgSqlDynamicParam({required this.value});

  final int value;

  factory FromPgSqlDynamicParam.fromPgSql(dynamic pgsql) =>
      FromPgSqlDynamicParam(value: pgsql as int);

  dynamic toPgSql() => null;
}

class FromPgSqlNullableObjectParam {
  FromPgSqlNullableObjectParam({required this.value});

  final int value;

  factory FromPgSqlNullableObjectParam.fromPgSql(Object? pgsql) =>
      FromPgSqlNullableObjectParam(value: pgsql as int);

  Object? toPgSql() => null;
}

class FromPgSqlObjectParam {
  FromPgSqlObjectParam({required this.value});

  final int value;

  factory FromPgSqlObjectParam.fromPgSql(Object pgsql) =>
      FromPgSqlObjectParam(value: pgsql as int);

  dynamic toPgSql() => null;
}
