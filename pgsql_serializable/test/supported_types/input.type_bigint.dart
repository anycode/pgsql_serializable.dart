// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'input.type_bigint.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final BigInt value;

  @PgSqlKey(defaultValue: _defaultValueFunc)
  BigInt withDefault;

  SimpleClass(this.value, this.withDefault);

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullable {
  final BigInt? value;

  @PgSqlKey(defaultValue: _defaultValueFunc)
  BigInt? withDefault;

  SimpleClassNullable(this.value, this.withDefault);

  factory SimpleClassNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableToPgSql(this);
}

BigInt _defaultValueFunc() => BigInt.parse('12345');
