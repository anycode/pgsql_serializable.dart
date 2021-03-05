// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'input.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final dynamic value;

  @PgSqlKey(defaultValue: 42)
  dynamic withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}
