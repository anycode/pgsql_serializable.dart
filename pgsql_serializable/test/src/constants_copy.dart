// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

// TODO: remove this and return link to lib/src/constants.dart once this
//  package runs with full null safety

/// Name used for closure argument when generating calls to `map`.
const closureArg = 'e';

const generatedLocalVarName = 'val';
const toPgSqlMapHelperName = 'writeNotNull';

const converterOrKeyInstructions = r'''
* Use `PgSqlConverter`
  https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlConverter-class.html
* Use `PgSqlKey` fields `fromPgSql` and `toPgSql`
  https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/fromPgSql.html
  https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/toPgSql.html''';
