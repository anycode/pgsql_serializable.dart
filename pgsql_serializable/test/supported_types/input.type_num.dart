// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'input.type_num.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final num value;

  @PgSqlKey(nullable: false)
  final num nullable;

  @PgSqlKey(defaultValue: 88.6)
  num withDefault;

  SimpleClass(
    this.value,
    this.nullable,
  );

  factory SimpleClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassToPgSql(this);
}
