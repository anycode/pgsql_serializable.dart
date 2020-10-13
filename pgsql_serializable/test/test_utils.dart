// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:test/test.dart';

// ignore: deprecated_member_use
final throwsCastError = throwsA(isA<CastError>());

T roundTripObject<T>(T object, T Function(Map<String, dynamic> pgsql) factory) {
  final data = loudEncode(object);

  final object2 = factory(pgsql.decode(data) as Map<String, dynamic>);

  expect(object2, equals(object));

  final pgsql2 = loudEncode(object2);

  expect(pgsql2, equals(data));
  return object2;
}

/// Prints out nested causes before throwing `PgSqlUnsupportedObjectError`.
String loudEncode(Object object) {
  try {
    return const PgSqlEncoder.withIndent(' ').convert(object);
  } on PgSqlUnsupportedObjectError catch (e) // ignore: avoid_catching_errors
  {
    var error = e;
    do {
      final cause = error.cause;
      print(cause);
      error = (cause is PgSqlUnsupportedObjectError) ? cause : null;
    } while (error != null);
    rethrow;
  }
}
