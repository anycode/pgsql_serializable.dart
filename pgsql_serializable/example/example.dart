// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'example.g.dart';

@PgSqlSerializable()
class Person {
  final String firstName;
  final String lastName;
  final DateTime? dateOfBirth;
  Person({required this.firstName, required this.lastName, this.dateOfBirth});
  factory Person.fromPgSql(Map<String, dynamic> pgsql) => _$PersonFromPgSql(pgsql);
  Map<String, dynamic> toPgSql() => _$PersonToPgSql(this);
}
