// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// @dart=2.12

import 'dart:convert';

import 'package:test/test.dart';

import '../test_utils.dart';
import 'generic_argument_factories.dart';
import 'generic_class.dart';

void main() {
  group('generic', () {
    GenericClass<T, S> roundTripGenericClass<T extends num, S>(GenericClass<T, S> p) {
      final outputPgSql = loudEncode(p);
      final p2 = GenericClass<T, S>.fromPgSql(jsonDecode(outputPgSql) as Map<String, dynamic>);
      final outputPgSql2 = loudEncode(p2);
      expect(outputPgSql2, outputPgSql);
      return p2;
    }

    test('no type args', () {
      roundTripGenericClass(GenericClass()
        ..fieldDynamic = 1
        ..fieldInt = 2
        ..fieldObject = 3
        ..fieldT = 5
        ..fieldS = 'six');
    });
    test('with type arguments', () {
      roundTripGenericClass(GenericClass<double, String>()
        ..fieldDynamic = 1
        ..fieldInt = 2
        ..fieldObject = 3
        ..fieldT = 5.0
        ..fieldS = 'six');
    });
    test('with bad arguments', () {
      expect(() => GenericClass<double, String>()..fieldT = (true as dynamic) as double, throwsCastError);
    });
    test('with bad arguments', () {
      expect(() => GenericClass<double, String>()..fieldS = (5 as dynamic) as String, throwsCastError);
    });
  });

  group('genericArgumentFactories', () {
    test('basic round-trip', () {
      final instance = GenericClassWithHelpers<DateTime, Duration>(
        DateTime.fromMillisecondsSinceEpoch(0).toUtc(),
        [
          DateTime.fromMillisecondsSinceEpoch(1).toUtc(),
          DateTime.fromMillisecondsSinceEpoch(2).toUtc(),
        ],
        {const Duration(milliseconds: 3), const Duration(milliseconds: 4)},
      );

      String encodeDateTime(DateTime value) => value.toIso8601String();
      int encodeDuration(Duration value) => value.inMilliseconds;

      final encodedPgSql = loudEncode(
        instance.toPgSql(encodeDateTime, encodeDuration),
      );

      final decoded = GenericClassWithHelpers<DateTime, Duration>.fromPgSql(
        jsonDecode(encodedPgSql) as Map<String, dynamic>,
        (value) => DateTime.parse(value as String),
        (value) => Duration(milliseconds: value as int),
      );

      final encodedPgSql2 = loudEncode(
        decoded.toPgSql(encodeDateTime, encodeDuration),
      );

      expect(encodedPgSql2, encodedPgSql);
    });
  });

  group('argument factories', () {
    test('round trip decode/decode', () {
      const inputPgSql = r'''
{
 "value": {
  "value": 5,
  "list": [
   5
  ],
  "someSet": [
   "string"
  ]
 },
 "value2": {
  "value": 3.14,
  "list": [
   3.14
  ],
  "someSet": [
   "2"
  ]
 }
}''';

      final instance = ConcreteClass.fromPgSql(
        jsonDecode(inputPgSql) as Map<String, dynamic>,
      );

      expect(loudEncode(instance), inputPgSql);
    });
  });
}
