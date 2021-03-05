// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'strict_keys_object.g.dart';

@PgSqlSerializable(disallowUnrecognizedKeys: true, anyMap: true)
class StrictKeysObject {
  @PgSqlKey(required: true)
  final int value;

  @PgSqlKey(name: 'custom_field', required: true)
  final String customField;

  StrictKeysObject(this.value, this.customField);

  factory StrictKeysObject.fromPgSql(Map pgsql) =>
      _$StrictKeysObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$StrictKeysObjectToPgSql(this);
}
