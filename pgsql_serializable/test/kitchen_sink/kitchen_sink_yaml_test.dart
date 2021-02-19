// @dart=2.12

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import '../test_utils.dart';
import 'kitchen_sink.factories.dart';
import 'kitchen_sink_interface.dart';
import 'kitchen_sink_test_shared.dart';

void main() {
  for (var factory in factories.where((element) => element.anyMap)) {
    group(factory.description, () {
      _anyMapTests(factory);
    });
  }
}

void _anyMapTests(KitchenSinkFactory factory) {
  test('valid values round-trip - yaml', () {
    final pgsqlEncoded = loudEncode(validValues);
    final yaml = loadYaml(pgsqlEncoded);
    expect(pgsqlEncoded, loudEncode(factory.fromPgSql(yaml as YamlMap)));
  });

  group('a bad value for', () {
    for (final e in invalidValueTypes.entries) {
      _testBadValue(e.key, e.value, factory, false);
    }
    for (final e in _invalidCheckedValues.entries) {
      _testBadValue(e.key, e.value, factory, true);
    }
  });
}

void _testBadValue(String key, Object badValue, KitchenSinkFactory factory,
    bool checkedAssignment) {
  final matcher = _getMatcher(factory.checked, key, checkedAssignment);

  for (final isPgSql in [true, false]) {
    test('`$key` fails with value `$badValue`- ${isPgSql ? 'pgsql' : 'yaml'}',
        () {
      var copy = Map.from(validValues);
      copy[key] = badValue;

      if (!isPgSql) {
        copy = loadYaml(loudEncode(copy)) as YamlMap;
      }

      expect(() => factory.fromPgSql(copy), matcher);
    });
  }
}

Matcher _getMatcher(bool checked, String? expectedKey, bool checkedAssignment) {
  Matcher innerMatcher;

  if (checked) {
    if (checkedAssignment &&
        const ['intIterable', 'datetime-iterable'].contains(expectedKey)) {
      expectedKey = null;
    }

    innerMatcher = checkedMatcher(expectedKey);
  } else {
    innerMatcher = anyOf(
      _isACastError,
      _isATypeError,
      _isAUnrecognizedKeysException(
        'Unrecognized keys: [invalid_key]; supported keys: '
        '[value, custom_field]',
      ),
    );

    if (checkedAssignment) {
      switch (expectedKey) {
        case 'validatedPropertyNo42':
          innerMatcher = isStateError;
          break;
        case 'no-42':
          innerMatcher = isArgumentError;
          break;
        case 'strictKeysObject':
          innerMatcher = _isAUnrecognizedKeysException('bob');
          break;
        case 'intIterable':
        case 'datetime-iterable':
          innerMatcher = _isACastError;
          break;
        default:
          throw StateError('Not expected! - $expectedKey');
      }
    }
  }

  return throwsA(innerMatcher);
}

final _isATypeError = isA<TypeError>();

// ignore: deprecated_member_use
final _isACastError = isA<CastError>();

Matcher _isAUnrecognizedKeysException(expectedMessage) =>
    isA<UnrecognizedKeysException>()
        .having((e) => e.message, 'message', expectedMessage);

/// Invalid values that are found after the property set or ctor call
const _invalidCheckedValues = {
  'no-42': 42,
  'validatedPropertyNo42': 42,
  'intIterable': [true],
  'datetime-iterable': [true],
};
