// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';

import 'package:test/test.dart';

import '../test_utils.dart';
import 'input.type_map.dart' show SimpleClassOfStringToStringNullable;

void main() {
  for (var input in const <Map<String, Object?>>{
    {'value': {}},
    {
      'value': {'key': 'value'},
    },
    {
      // Regression case for https://github.com/anycode/pgsql_serializable.dart/issues/864
      'value': {'key': null},
    },
  }) {
    test(input, () {
      final object = SimpleClassOfStringToStringNullable.fromPgSql(input);
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(input));

      final object2 = SimpleClassOfStringToStringNullable.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);
    });
  }
}
