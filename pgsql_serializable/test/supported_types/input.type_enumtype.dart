// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_enumtype.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final EnumType value;

  @PgSqlKey(nullable: false)
  final EnumType nullable;

  @PgSqlKey(defaultValue: EnumType.alpha)
  EnumType withDefault;

  SimpleClass(
    this.value,
    this.nullable,
  );

  factory SimpleClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassToPgSql(this);
}
