// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

// ignore_for_file: prefer_const_declarations

import 'dart:convert';

@TestOn('vm')
import 'package:test/test.dart';

import '../test_utils.dart';
import 'input.type_iterable.dart';

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
      expect(
        () => loudEncode(SimpleClass.fromPgSql({})),
        throwsA(isA<TypeError>()),
      );
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

final _defaultValue = [42, true, false, null];
final _altValue = [43, false];

final _defaultInput = <String, Object?>{
  'value': _defaultValue,
};

final _defaultOutput = {
  'value': _defaultValue,
  'withDefault': _defaultValue,
};

final _nullableDefaultOutput = {
  'value': null,
  'withDefault': _defaultValue,
};

final _nonDefaultPgSql = {
  'value': _altValue,
  'withDefault': _altValue,
};
