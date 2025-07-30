// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:convert';

import 'package:test/test.dart';

import '../test_utils.dart';
import 'input.type_uri.dart';

void main() {
  group('non-nullable', () {
    test('round trip', () {
      final object = SimpleClass.fromPgSql(_defaultInput);
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_defaultOutput));

      final object2 = SimpleClass.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);
    });

    test('round trip null', () {
      expect(() => loudEncode(SimpleClass.fromPgSql({})), throwsTypeError);
    });

    test('round trip alternate values', () {
      final object = SimpleClass.fromPgSql(_nonDefaultPgSql);
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_nonDefaultPgSql));
      expect(encoded, isNot(loudEncode(_defaultOutput)));

      final object2 = SimpleClass.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);
    });
  }); // end non-nullable group

  group('nullable', () {
    test('round trip', () {
      final object = SimpleClassNullable.fromPgSql(_defaultInput);
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_defaultOutput));

      final object2 = SimpleClassNullable.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);
    });

    test('round trip null', () {
      final object = SimpleClassNullable.fromPgSql({});
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_nullableDefaultOutput));
      final object2 = SimpleClassNullable.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);
    });

    test('round trip alternate values', () {
      final object = SimpleClassNullable.fromPgSql(_nonDefaultPgSql);
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_nonDefaultPgSql));
      expect(encoded, isNot(loudEncode(_defaultOutput)));

      final object2 = SimpleClassNullable.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);
    });
  }); // end nullable group
}

const _defaultValue = 'https://example.com';
const _altValue = 'https://dart.dev';

final _defaultInput = <String, Object?>{'value': _defaultValue};

final _defaultOutput = {'value': _defaultValue, 'withDefault': _defaultValue};

final _nullableDefaultOutput = {'value': null, 'withDefault': _defaultValue};

final _nonDefaultPgSql = {'value': _altValue, 'withDefault': _altValue};
