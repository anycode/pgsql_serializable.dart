// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:example/example.dart';
import 'package:test/test.dart';

void main() {
  test('PgSqlSerializable', () {
    final person = Person('Inigo', 'Montoya', DateTime(1560, 5, 5))
      ..orders = [Order(DateTime.now())..item = (Item()..count = 42)];

    final personPgSql = _encode(person);

    final person2 =
        Person.fromPgSql(pgsql.decode(personPgSql) as Map<String, dynamic>);

    expect(person.firstName, person2.firstName);
    expect(person.lastName, person2.lastName);
    expect(person.dateOfBirth, person2.dateOfBirth);
    expect(person.orders.single.date, person2.orders.single.date);
    expect(person.orders.single.item!.count, 42);

    expect(_encode(person2), equals(personPgSql));
  });

  test('PgSqlLiteral', () {
    expect(glossaryData, hasLength(1));
  });
}

String _encode(Object object) =>
    const PgSqlEncoder.withIndent(' ').convert(object);
