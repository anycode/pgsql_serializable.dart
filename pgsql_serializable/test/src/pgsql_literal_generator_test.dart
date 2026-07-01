// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_serializable/src/pgsql_literal_generator.dart';
import 'package:test/test.dart';

void main() {
  test('pgsqlLiteralAsDart', () {
    expect(pgsqlLiteralAsDart(null), 'null');
    expect(pgsqlLiteralAsDart(true), 'true');
    expect(pgsqlLiteralAsDart(false), 'false');
    expect(pgsqlLiteralAsDart(42), '42');
    expect(pgsqlLiteralAsDart(42.5), '42.5');
    expect(pgsqlLiteralAsDart(double.infinity), 'double.infinity');
    expect(
      pgsqlLiteralAsDart(double.negativeInfinity),
      'double.negativeInfinity',
    );
    expect(pgsqlLiteralAsDart(double.nan), 'double.nan');
    expect(pgsqlLiteralAsDart('foo'), "'foo'");
    expect(pgsqlLiteralAsDart('foo"bar'), "'foo\"bar'");

    expect(pgsqlLiteralAsDart([1, 2]), '[1, 2]');
    expect(pgsqlLiteralAsDart({1, 2}), '{1, 2}');
    expect(pgsqlLiteralAsDart({'a': 1}), "{'a': 1}");
  });
}
