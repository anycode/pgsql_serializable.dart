// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library test;

import 'dart:async';

import 'package:analyzer/dart/element/type.dart';
import 'package:build/experiments.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:pgsql_serializable/pgsql_serializable.dart';
import 'package:pgsql_serializable/src/constants.dart';
import 'package:pgsql_serializable/src/type_helper.dart';
import 'package:pgsql_serializable/src/type_helpers/config_types.dart';
import 'package:path/path.dart' as p;
import 'package:source_gen/source_gen.dart';
import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

import 'shared_config.dart';

late LibraryReader _libraryReader;

Future<void> main() async {
  initializeBuildLogTracking();
  _libraryReader = await withEnabledExperiments(
    () => initializeLibraryReaderForDirectory(
      p.join('test', 'test_sources'),
      'test_sources.dart',
    ),
    ['non-nullable'],
  );

  group('without wrappers', () {
    _registerTests(ClassConfig.defaults.toPgSqlSerializable());
  });

  group('configuration', () {
    Future<void> runWithConfigAndLogger(
        PgSqlSerializable? config, String className) async {
      await generateForElement(
          PgSqlSerializableGenerator(
              config: config, typeHelpers: const [_ConfigLogger()]),
          _libraryReader,
          className);
    }

    setUp(_ConfigLogger.configurations.clear);

    group('defaults', () {
      for (var className in [
        'ConfigurationImplicitDefaults',
        'ConfigurationExplicitDefaults',
      ]) {
        for (var nullConfig in [true, false]) {
          final testDescription =
              '$className with ${nullConfig ? 'null' : 'default'} config';

          test(testDescription, () async {
            await runWithConfigAndLogger(
                nullConfig ? null : const PgSqlSerializable(), className);

            expect(_ConfigLogger.configurations, hasLength(2));
            expect(
              _ConfigLogger.configurations.first.toPgSql(),
              _ConfigLogger.configurations.last.toPgSql(),
            );
            expect(_ConfigLogger.configurations.first.toPgSql(),
                generatorConfigDefaultPgSql);
          });
        }
      }
    });

    test(
        'values in config override unconfigured (default) values in annotation',
        () async {
      await runWithConfigAndLogger(
          PgSqlSerializable.fromPgSql(generatorConfigNonDefaultPgSql),
          'ConfigurationImplicitDefaults');

      expect(_ConfigLogger.configurations, isEmpty,
          reason: 'all generation is disabled');

      // Create a configuration with just `create_to_pgsql` set to true so we
      // can validate the configuration that is run with
      final configMap =
          Map<String, dynamic>.from(generatorConfigNonDefaultPgSql);
      configMap['create_to_pgsql'] = true;

      await runWithConfigAndLogger(PgSqlSerializable.fromPgSql(configMap),
          'ConfigurationImplicitDefaults');
    });

    test(
      'explicit values in annotation override corresponding settings in config',
      () async {
        await runWithConfigAndLogger(
            PgSqlSerializable.fromPgSql(generatorConfigNonDefaultPgSql),
            'ConfigurationExplicitDefaults');

        expect(_ConfigLogger.configurations, hasLength(2));
        expect(
          _ConfigLogger.configurations.first.toPgSql(),
          _ConfigLogger.configurations.last.toPgSql(),
        );

        // The effective configuration should be non-Default configuration, but
        // with all fields set from PgSqlSerializable as the defaults

        final expected =
            Map<String, dynamic>.from(generatorConfigNonDefaultPgSql);
        for (var pgsqlSerialKey in pgsqlSerializableFields) {
          expected[pgsqlSerialKey] = generatorConfigDefaultPgSql[pgsqlSerialKey];
        }

        expect(
          _ConfigLogger.configurations.first.toPgSql(),
          expected,
          reason: 'Did you forget to change README.md?',
        );
      },
    );
  });
}

Future<String> _runForElementNamed(PgSqlSerializable config, String name) async {
  final generator = PgSqlSerializableGenerator(config: config);
  return generateForElement(generator, _libraryReader, name);
}

void _registerTests(PgSqlSerializable generator) {
  Future<String> runForElementNamed(String name) =>
      _runForElementNamed(generator, name);

  group('explicit toPgSql', () {
    test('nullable', () async {
      final output = await _runForElementNamed(
          const PgSqlSerializable(), 'TrivialNestedNullable');

      const expected = r'''
Map<String, dynamic> _$TrivialNestedNullableToPgSql(
        TrivialNestedNullable instance) =>
    <String, dynamic>{
      'child': instance.child?.toPgSql(),
      'otherField': instance.otherField,
    };
''';

      expect(output, expected);
    });
    test('non-nullable', () async {
      final output = await _runForElementNamed(
          const PgSqlSerializable(), 'TrivialNestedNonNullable');

      const expected = r'''
Map<String, dynamic> _$TrivialNestedNonNullableToPgSql(
        TrivialNestedNonNullable instance) =>
    <String, dynamic>{
      'child': instance.child.toPgSql(),
      'otherField': instance.otherField,
    };
''';

      expect(output, expected);
    });
  });

  group('valid inputs', () {
    test('class with fromPgSql() constructor with optional parameters',
        () async {
      final output = await runForElementNamed('FromPgSqlOptionalParameters');

      expect(output, contains('ChildWithFromPgSql.fromPgSql'));
    });

    test('class with child pgsql-able object', () async {
      final output = await runForElementNamed('ParentObject');

      expect(
          output,
          contains("ChildObject.fromPgSql(pgsql['child'] "
              'as Map<String, dynamic>)'));
    });

    test('class with child pgsql-able object - anyMap', () async {
      final output = await _runForElementNamed(
          const PgSqlSerializable(anyMap: true), 'ParentObject');

      expect(output, contains("ChildObject.fromPgSql(pgsql['child'] as Map)"));
    });

    test('class with child list of pgsql-able objects', () async {
      final output = await runForElementNamed('ParentObjectWithChildren');

      expect(output, contains('.toList()'));
      expect(output, contains('ChildObject.fromPgSql'));
    });

    test('class with child list of dynamic objects is left alone', () async {
      final output =
          await runForElementNamed('ParentObjectWithDynamicChildren');

      expect(
        output,
        contains('children = pgsql[\'children\'] as List<dynamic>;'),
      );
    });
  });

  group('includeIfNull', () {
    test('some', () async {
      final output = await runForElementNamed('IncludeIfNullAll');
      expect(output, isNot(contains(generatedLocalVarName)));
      expect(output, isNot(contains(toPgSqlMapHelperName)));
    });
  });
}

class _ConfigLogger implements TypeHelper<TypeHelperContextWithConfig> {
  static final configurations = <PgSqlSerializable>[];

  const _ConfigLogger();

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    configurations.add(context.config.toPgSqlSerializable());
    return null;
  }

  @override
  Object? serialize(DartType targetType, String expression,
      TypeHelperContextWithConfig context) {
    configurations.add(context.config.toPgSqlSerializable());
    return null;
  }
}
