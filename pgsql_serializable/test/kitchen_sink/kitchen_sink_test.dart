// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:test/test.dart';

import '../test_utils.dart';
import 'pgsql_converters.dart';
import 'kitchen_sink.factories.dart';
import 'kitchen_sink_interface.dart';
import 'kitchen_sink_test_shared.dart';
import 'strict_keys_object.dart';

Matcher _isMissingKeyException(String expectedMessage) =>
    isA<MissingRequiredKeysException>().having(
      (e) => e.message,
      'message',
      expectedMessage,
    );

void main() {
  test('valid values covers all keys', () {
    expect(invalidValueTypes.keys, orderedEquals(validValues.keys));
  });

  test('tracking Map/Iterable types correctly', () {
    for (var entry in validValues.entries) {
      if (_iterableMapKeys.contains(entry.key) ||
          _encodedAsMapKeys.contains(entry.key)) {
        expect(entry.value, anyOf(isMap, isList));
      } else {
        expect(entry.value, isNot(anyOf(isMap, isList)));
      }
    }
  });

  test('required keys', () {
    expect(
      () => StrictKeysObject.fromPgSql({}),
      throwsA(
        _isMissingKeyException(
          'Required keys are missing: value, custom_field.',
        ),
      ),
    );
  });

  for (var factory in factories) {
    group(factory.description, () {
      if (factory.nullable) {
        _nullableTests(factory);
      } else {
        _nonNullableTests(factory);
      }
      _sharedTests(factory);
    });
  }
}

const _pgsqlConverterValidValues = {
  'duration': 5,
  'durationList': [5],
  'bigInt': '5',
  'bigIntMap': {'value': '5'},
  'numberSilly': 5,
  'numberSillySet': [5],
  'dateTime': 5,
  'trivialString': '',
  'nullableNumberSilly': 5,
  'nullableBigInt': '42',
  'nullableBigIntMap': {'value': '42'},
  'nullableNumberSillySet': [42],
};

void _nonNullableTests(KitchenSinkFactory factory) {
  test('with empty pgsql fails deserialization', () {
    Matcher matcher;
    if (factory.checked) {
      matcher = checkedMatcher('set');
    } else {
      matcher = isTypeError;
    }
    expect(() => factory.fromPgSql(<String, dynamic>{}), throwsA(matcher));
  });

  test('nullable values are not allowed in non-nullable version', () {
    final instance = factory.pgsqlConverterFromPgSql(_pgsqlConverterValidValues);
    final pgsql = instance.toPgSql();
    expect(pgsql, _pgsqlConverterValidValues);
    expect(pgsql.values, everyElement(isNotNull));

    final instance2 = factory.pgsqlConverterFromPgSql(pgsql);
    expect(instance2.toPgSql(), pgsql);
  });
}

void _nullableTests(KitchenSinkFactory factory) {
  void roundTripSink(KitchenSink p) {
    roundTripObject(p, factory.fromPgSql);
  }

  test('nullable values are allowed in the nullable version', () {
    final instance = factory.pgsqlConverterCtor();
    final pgsql = instance.toPgSql();

    expect(pgsql, const {
      'duration': 0,
      'durationList': <dynamic>[],
      'bigInt': '0',
      'bigIntMap': <String, dynamic>{},
      'nullableBigInt': '0',
      'nullableBigIntMap': <String, dynamic>{},
      'numberSilly': 0,
      'numberSillySet': <dynamic>[],
      'dateTime': 0,
      'trivialString': '',
      'nullableNumberSilly': 0,
      'nullableNumberSillySet': <dynamic>[],
    });

    expect(pgsql.keys, unorderedEquals(_pgsqlConverterValidValues.keys));

    final instance2 = factory.pgsqlConverterFromPgSql(pgsql);
    expect(instance2.toPgSql(), pgsql);
  });

  test('Fields with `!includeIfNull` should not be included when null', () {
    final item = factory.ctor();
    final encoded = item.toPgSql();

    if (factory.excludeNull) {
      expect(encoded.keys, orderedEquals(_nonNullableFields));
    } else {
      expect(encoded.keys, orderedEquals(validValues.keys));

      for (final key in validValues.keys) {
        expect(
          encoded,
          containsPair(
            key,
            _nonNullableFields.contains(key) ? isNotNull : isNull,
          ),
        );
      }
    }
  });

  test('list and map of DateTime', () {
    final now = DateTime.now();
    final later = now.add(const Duration(days: 1));
    final item = factory.ctor(dateTimeIterable: <DateTime>[now])
      ..dateTimeList = <DateTime>[now, later]
      ..objectDateTimeMap = <Object, DateTime>{'value': now, 'null': later};

    roundTripSink(item);
  });

  test('complex nested type', () {
    final item = factory.ctor()
      ..crazyComplex = [
        null,
        {},
        {
          'null': null,
          'empty': {},
          'items': {
            'null': null,
            'empty': [],
            'items': [
              null,
              [],
              [DateTime.now()],
            ],
          },
        },
      ];
    roundTripSink(item);
  });
}

void _sharedTests(KitchenSinkFactory factory) {
  test('other names', () {
    final originalName = factory.fromPgSql(validValues);

    final aliasName = factory.fromPgSql(
      <String, dynamic>{
          ...validValues,
          'theIterable': validValues['iterable'],
          'STRING': validValues[trickyKeyName],
        }
        ..remove('iterable')
        ..remove(trickyKeyName),
    );

    expect(loudEncode(aliasName), loudEncode(originalName));
  });

  test('empty', () {
    final item = factory.ctor();
    roundTripObject(item, factory.fromPgSql);
  });

  test('PgSqlConverters with nullable PgSQL keys handle `null` PgSQL values', () {
    final item = factory.pgsqlConverterFromPgSql({
      ..._pgsqlConverterValidValues,
      'nullableNumberSilly': null,
    });

    expect(
      item.nullableNumberSilly,
      isA<TrivialNumber>().having((e) => e.value, 'value', isNull),
    );
  });

  test('list and map of DateTime - not null', () {
    final now = DateTime.now();
    final item = factory.ctor(dateTimeIterable: <DateTime>[now])
      ..dateTimeList = <DateTime>[now, now]
      ..objectDateTimeMap = <Object, DateTime>{'value': now};

    roundTripObject(item, factory.fromPgSql);
  });

  test('complex nested type - not null', () {
    final item = factory.ctor()
      ..crazyComplex = [
        {},
        {
          'empty': {},
          'items': {
            'empty': [],
            'items': [
              [],
              [DateTime.now()],
            ],
          },
        },
      ];
    roundTripObject(item, factory.fromPgSql);
  });

  test('round trip valid, empty values', () {
    final values = Map.fromEntries(
      validValues.entries.map((e) {
        var value = e.value;
        if (_iterableMapKeys.contains(e.key)) {
          if (value is List) {
            value = [];
          } else {
            assert(value is Map);
            value = <String, dynamic>{};
          }
        }
        return MapEntry(e.key, value);
      }),
    );

    final validInstance = factory.fromPgSql(values);

    roundTripObject(validInstance, factory.fromPgSql);
  });

  test('PgSQL keys should be defined in field/property order', () {
    final pgsql = factory.ctor().toPgSql();
    if (factory.excludeNull) {
      expect(pgsql.keys, _nonNullableFields);
    } else {
      expect(pgsql.keys, orderedEquals(validValues.keys));
    }
  });

  test('valid values round-trip - pgsql', () {
    final validInstance = factory.fromPgSql(validValues);
    roundTripObject(validInstance, factory.fromPgSql);
  });
}

const _nonNullableFields = {
  'dynamicIterable',
  'objectIterable',
  'intIterable',
  'set',
  'dynamicSet',
  'objectSet',
  'intSet',
  'dateTimeSet',
  'datetime-iterable',
  'list',
  'dynamicList',
  'objectList',
  'intList',
  'dateTimeList',
  'nullableSimpleObjectList',
  'map',
  'stringStringMap',
  'dynamicIntMap',
  'objectDateTimeMap',
  'nullableSimpleObjectMap',
  'crazyComplex',
  'val',
  'simpleObject',
  'strictKeysObject',
};

const _encodedAsMapKeys = {'simpleObject', 'strictKeysObject', 'recordField'};

const _iterableMapKeys = {
  'bigIntMap',
  'crazyComplex',
  'datetime-iterable',
  'dateTimeList',
  'dateTimeSet',
  'durationList',
  'dynamicIntMap',
  'dynamicIterable',
  'dynamicList',
  'dynamicSet',
  'intIterable',
  'intList',
  'intSet',
  'iterable',
  'nullableSimpleObjectList',
  'list',
  'map',
  'nullableSimpleObjectMap',
  'numberSillySet',
  'objectDateTimeMap',
  'objectIterable',
  'objectList',
  'objectSet',
  'set',
  'stringStringMap',
  generatedLocalVarName,
};
