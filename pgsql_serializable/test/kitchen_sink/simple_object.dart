// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'simple_object.g.dart';

@PgSqlSerializable(anyMap: true)
class SimpleObject {
  final int value;

  SimpleObject(this.value);

  factory SimpleObject.fromPgSql(Map pgsql) => _$SimpleObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleObjectToPgSql(this);
}
