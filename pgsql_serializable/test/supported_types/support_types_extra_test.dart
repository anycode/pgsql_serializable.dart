// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:test/test.dart';

import '../test_utils.dart';
import 'input.type_map.dart';

void main() {
  test('SimpleClassOfStringToDouble', () {
    const value = {
      'value': {
        'double': 1.0,
        'int': 1,
      }
    };

    final object = SimpleClassOfStringToDouble.fromPgSql(value);
    final encoded = loudEncode(object);

    expect(
      encoded,
      loudEncode({
        'value': {
          'double': 1.0,
          // Note! Encoded as a double on output!
          'int': 1.0,
        }
      }),
    );

    final object2 = SimpleClassOfStringToDouble.fromPgSql(
      jsonDecode(encoded) as Map<String, Object?>,
    );
    expect(loudEncode(object2), encoded);
  });

  test('SimpleClassOfStringToInt', () {
    const value = {
      'value': {
        'int': 1,
      }
    };

    final object = SimpleClassOfStringToInt.fromPgSql(value);
    final encoded = loudEncode(object);

    expect(encoded, loudEncode(value));

    final object2 = SimpleClassOfStringToInt.fromPgSql(
      jsonDecode(encoded) as Map<String, Object?>,
    );
    expect(loudEncode(object2), encoded);
  });

  test('SimpleClassOfStringToNum', () {
    const value = {
      'value': {
        'double': 1.0,
        'int': 1,
      }
    };

    final object = SimpleClassOfStringToNum.fromPgSql(value);
    final encoded = loudEncode(object);

    expect(encoded, loudEncode(value));

    final object2 = SimpleClassOfStringToNum.fromPgSql(
      jsonDecode(encoded) as Map<String, Object?>,
    );
    expect(loudEncode(object2), encoded);
  });

  test('SimpleClassOfStringToRecord', () {
    const value = {
      'value': {
        'key': {
          r'$1': 1,
          r'$2': 'string',
          'truth': false,
        }
      }
    };

    final object = SimpleClassOfStringToRecord.fromPgSql(value);
    final encoded = loudEncode(object);

    expect(encoded, loudEncode(value));

    final object2 = SimpleClassOfStringToRecord.fromPgSql(
      jsonDecode(encoded) as Map<String, Object?>,
    );
    expect(loudEncode(object2), encoded);
  });
}
