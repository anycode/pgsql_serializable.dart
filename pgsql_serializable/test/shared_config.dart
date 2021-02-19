// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

final pgsqlSerializableFields = generatorConfigDefaultPgSql.keys.toList();

final generatorConfigDefaultPgSql = Map<String, dynamic>.unmodifiable(
    const PgSqlSerializable().withDefaults().toPgSql());

final generatorConfigNonDefaultPgSql =
    Map<String, dynamic>.unmodifiable(const PgSqlSerializable(
  anyMap: true,
  checked: true,
  createFactory: false,
  createToPgSql: false,
  disallowUnrecognizedKeys: true,
  explicitToPgSql: true,
  fieldRename: FieldRename.kebab,
  ignoreUnannotated: true,
  includeIfNull: false,
  genericArgumentFactories: true,
).toPgSql());
