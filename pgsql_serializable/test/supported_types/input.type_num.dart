// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'input.type_num.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final num value;

  @PgSqlKey(defaultValue: 88.6)
  num withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullable {
  final num? value;

  @PgSqlKey(defaultValue: 88.6)
  num? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableToPgSql(this);
}
