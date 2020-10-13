// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:collection';

import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

import 'shared.dart';

final _formatter = DartFormatter();

Builder testBuilder([_]) => validate('_test_builder', const _TestBuilder());

class _TestBuilder implements Builder {
  const _TestBuilder();

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final baseName = p.basenameWithoutExtension(buildStep.inputId.path);

    final sourceContent = await buildStep.readAsString(buildStep.inputId);

    final factories =
        SplayTreeMap.from({'$_kitchenSinkBaseName.dart': 'normal'});

    for (var config in _fileConfigurationMap[baseName]) {
      final extension = _configToExtension(config);
      final newId = buildStep.inputId.changeExtension(extension);

      final partName = extension.substring(0, extension.length - 5);

      final replacements = <Replacement>[
        Replacement(
          "part '$baseName.g.dart';",
          "part '$baseName$partName.g.dart';",
        )
      ];

      if (baseName == _kitchenSinkBaseName) {
        final description = _configToName(config.toSet());
        replacements.add(Replacement(
          "String get description => '--defaults--';",
          "String get description => '$description';",
        ));

        factories['$baseName$partName.dart'] = description;
      }

      for (var entry in config) {
        replacements.addAll(_optionReplacement(baseName, entry));
      }

      final content = Replacement.generate(sourceContent, replacements);

      await buildStep.writeAsString(newId, _formatter.format(content));
    }

    if (baseName == _kitchenSinkBaseName) {
      final newId = buildStep.inputId.changeExtension('.factories.dart');

      final lines = <String>[
        ...factories.entries.map((e) => "import '${e.key}' as ${e.value};"),
        'const factories = [',
        ...factories.values.map((e) => '$e.factory,'),
        '];',
      ];

      await buildStep.writeAsString(newId, _formatter.format(lines.join('\n')));
    }
  }

  @override
  Map<String, List<String>> get buildExtensions =>
      {'.dart': _fileConfigurations};
}

const _configReplacements = {
  'any_map': Replacement.addPgSqlSerializableKey('anyMap', true),
  'checked': Replacement.addPgSqlSerializableKey('checked', true),
  'non_nullable': Replacement.addPgSqlSerializableKey('nullable', false),
  'explicit_to_pgsql':
      Replacement.addPgSqlSerializableKey('explicitToPgSql', true),
  'exclude_null': Replacement.addPgSqlSerializableKey('includeIfNull', false),
};

const _kitchenSinkReplacements = {
  'any_map': [
    Replacement(
      'bool get anyMap => false;',
      'bool get anyMap => true;',
    ),
    Replacement(
      'class _Factory implements k.KitchenSinkFactory<String, dynamic>',
      'class _Factory implements k.KitchenSinkFactory<dynamic, dynamic>',
    ),
    Replacement(
      'k.KitchenSink fromPgSql(Map<String, dynamic> pgsql)',
      'k.KitchenSink fromPgSql(Map pgsql)',
    ),
    Replacement(
      'factory KitchenSink.fromPgSql(Map<String, dynamic> pgsql)',
      'factory KitchenSink.fromPgSql(Map pgsql)',
    ),
  ],
  'checked': [
    Replacement(
      'bool get checked => false;',
      'bool get checked => true;',
    )
  ],
  'exclude_null': [
    Replacement(
      'bool get excludeNull => false;',
      'bool get excludeNull => true;',
    ),
  ],
  'explicit_to_pgsql': [
    Replacement(
      'bool get explicitToPgSql => false;',
      'bool get explicitToPgSql => true;',
    ),
  ],
  'non_nullable': [
    Replacement(
      'bool get nullable => true;',
      'bool get nullable => false;',
    ),
    Replacement(
      'List<T> _defaultList<T>() => null;',
      'List<T> _defaultList<T>() => <T>[];',
    ),
    Replacement(
      'Set<T> _defaultSet<T>() => null;',
      'Set<T> _defaultSet<T>() => <T>{};',
    ),
    Replacement(
      'Map<K, V> _defaultMap<K, V>() => null;',
      'Map<String, T> _defaultMap<T>() => <String, T>{};',
    ),
    Replacement(
      'SimpleObject _defaultSimpleObject() => null;',
      'SimpleObject _defaultSimpleObject() => SimpleObject(42);',
    ),
    Replacement(
      'StrictKeysObject _defaultStrictKeysObject() => null;',
      'StrictKeysObject _defaultStrictKeysObject() => '
          "StrictKeysObject(10, 'cool');",
    ),
    Replacement(
      'DateTime dateTime;',
      'DateTime dateTime = DateTime(1981, 6, 5);',
    ),
    Replacement(
      'BigInt bigInt;',
      "BigInt bigInt = BigInt.parse('10000000000000000000');",
    ),
  ],
};

Iterable<Replacement> _optionReplacement(
    String baseName, String optionKey) sync* {
  yield _configReplacements[optionKey];

  if (baseName == _kitchenSinkBaseName &&
      _kitchenSinkReplacements.containsKey(optionKey)) {
    yield* _kitchenSinkReplacements[optionKey];
  }
}

String _configToExtension(Iterable<String> config) =>
    '.g_${_configToName(config.toSet())}.dart';

String _configToName(Set<String> config) =>
    (config.toList()..sort()).join('__');

List<String> get _fileConfigurations => _fileConfigurationMap.values
    .expand((v) => v)
    .map(_configToExtension)
    .followedBy(['.factories.dart'])
    .toSet()
    .toList()
      ..sort();

const _kitchenSinkBaseName = 'kitchen_sink';

const _fileConfigurationMap = <String, Set<Set<String>>>{
  _kitchenSinkBaseName: {
    {'any_map', 'checked', 'non_nullable'},
    {'any_map', 'non_nullable'},
    {'any_map'},
    {'exclude_null'},
    {'non_nullable'},
    {'exclude_null', 'non_nullable'},
    {'explicit_to_pgsql'},
  },
  'default_value': {
    {'any_map', 'checked'},
  },
  'generic_class': <Set<String>>{},
  'pgsql_test_example': {
    {'any_map'},
    {'non_nullable'},
  }
};
