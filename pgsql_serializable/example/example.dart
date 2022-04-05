// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'example.g.dart';

@PgSqlSerializable()
class Person {
  /// The generated code assumes these values exist in PgSQL.
  final String firstName, lastName;

  /// The generated code below handles if the corresponding PgSQL value doesn't
  /// exist or is empty.
  final DateTime? dateOfBirth;

  Person({required this.firstName, required this.lastName, this.dateOfBirth});

  /// Connect the generated [_$PersonFromPgSql] function to the `fromPgSql`
  /// factory.
  factory Person.fromPgSql(Map<String, dynamic> pgsql) => _$PersonFromPgSql(pgsql);

  /// Connect the generated [_$PersonToPgSql] function to the `toPgSql` method.
  Map<String, dynamic> toPgSql() => _$PersonToPgSql(this);
}
