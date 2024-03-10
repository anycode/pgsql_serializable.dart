// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library test;

import 'dart:io';

import 'package:build/build.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:pgsql_serializable/builder.dart';
import 'package:pgsql_serializable/src/pgsql_serializable_generator.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import 'shared_config.dart';

void main() {
  test('fields in PgSqlSerializable are sorted', () {
    expect(generatorConfigDefaultPgSql.keys,
        orderedEquals(generatorConfigDefaultPgSql.keys.toList()..sort()));
  });

  test('empty', () async {
    final builder = pgsqlSerializable(BuilderOptions.empty);
    expect(builder, isNotNull);
  });

  test('valid default config', () async {
    final builder =
        pgsqlSerializable(BuilderOptions(generatorConfigDefaultPgSql));
    expect(builder, isNotNull);
  });

  test('valid, non-default config', () {
    expect(generatorConfigNonDefaultPgSql.keys,
        unorderedEquals(generatorConfigDefaultPgSql.keys));

    for (var entry in generatorConfigDefaultPgSql.entries) {
      expect(generatorConfigNonDefaultPgSql,
          containsPair(entry.key, isNot(entry.value)),
          reason: 'should have values that are different than the defaults');
    }

    final builder =
        pgsqlSerializable(BuilderOptions(generatorConfigNonDefaultPgSql));
    expect(builder, isNotNull);
  });

  test('config is null-protected when passed to PgSqlSerializableGenerator', () {
    final nullValueMap = Map.fromEntries(
        generatorConfigDefaultPgSql.entries.map((e) => MapEntry(e.key, null)));
    final config = PgSqlSerializable.fromPgSql(nullValueMap);
    final generator = PgSqlSerializableGenerator(config: config);
    expect(generator.config.toPgSql(), generatorConfigDefaultPgSql);
  });

  test('readme config', () async {
    final configExampleContent = File('README.md')
        .readAsLinesSync()
        .skipWhile((line) => line != '```yaml')
        .skip(1)
        .takeWhile((line) => line != '```')
        .join('\n');

    var yaml = loadYaml(configExampleContent) as YamlMap;

    for (final key in [
      'targets',
      r'$default',
      'builders',
      'pgsql_serializable',
      'options'
    ]) {
      yaml = yaml[key] as YamlMap;
    }

    final configMap = Map<String, dynamic>.from(yaml);

    expect(
      configMap.keys,
      unorderedEquals(generatorConfigDefaultPgSql.keys),
      reason: 'All supported keys are documented. '
          'Did you forget to change README.md?',
    );

    expect(
      PgSqlSerializable.fromPgSql(configMap).toPgSql(),
      generatorConfigDefaultPgSql,
    );

    final builder = pgsqlSerializable(BuilderOptions(configMap));
    expect(builder, isNotNull);
  });

  test('unsupported configuration', () async {
    final matcher = isA<StateError>().having(
      (v) => v.message,
      'message',
      'Could not parse the options provided for `pgsql_serializable`.\n'
          'Unrecognized keys: [unsupported]; '
          'supported keys: [${_invalidConfig.keys.join(', ')}]',
    );

    expect(
        () => pgsqlSerializable(const BuilderOptions({'unsupported': 'config'})),
        throwsA(matcher));
  });

  group('invalid config', () {
    test('validated for all supported keys', () {
      expect(_invalidConfig.keys, generatorConfigDefaultPgSql.keys);
    });
    for (final entry in _invalidConfig.entries) {
      test(entry.key, () {
        final config = Map<String, dynamic>.from(generatorConfigDefaultPgSql);
        config[entry.key] = entry.value;

        String lastLine;
        lastLine = switch (entry.key) {
          'field_rename' =>
            '`42` is not one of the supported values: none, kebab, snake, '
                'pascal, screamingSnake',
          'constructor' =>
            "type 'int' is not a subtype of type 'String?' in type "
                'cast',
          'create_to_pgsql' =>
            "type 'int' is not a subtype of type 'bool?' in type "
                'cast',
          _ => "type 'int' is not a subtype of type 'bool?' in type cast"
        };

        final matcher = isA<StateError>().having(
          (v) => v.message,
          'message',
          '''
Could not parse the options provided for `pgsql_serializable`.
There is a problem with "${entry.key}".
$lastLine''',
        );
        expect(
            () => pgsqlSerializable(BuilderOptions(config)), throwsA(matcher));
      });
    }
  });
}

// #CHANGE WHEN UPDATING pgsql_annotation
const _invalidConfig = {
  'any_map': 42,
  'checked': 42,
  'constructor': 42,
  'create_factory': 42,
  'create_field_map': 42,
  'create_pgsql_keys': 42,
  'create_per_field_to_pgsql': 42,
  'create_to_pgsql': 42,
  'disallow_unrecognized_keys': 42,
  'explicit_to_pgsql': 42,
  'field_rename': 42,
  'generic_argument_factories': 42,
  'ignore_unannotated': 42,
  'include_if_null': 42,
};
