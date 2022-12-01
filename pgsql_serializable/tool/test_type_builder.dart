// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:build/build.dart';
import 'package:collection/collection.dart';
import 'package:pgsql_serializable/src/type_helpers/map_helper.dart';

import 'shared.dart';
import 'test_type_data.dart';

const _trivialTypesToTest = {
  'BigInt': TestTypeData.defaultFunc(
    pgsqlExpression: "'12345'",
    altPgSqlExpression: "'67890'",
  ),
  'bool': TestTypeData(
    defaultExpression: 'true',
    altPgSqlExpression: 'false',
  ),
  'DateTime': TestTypeData.defaultFunc(
    pgsqlExpression: "'2020-01-01T00:00:00.000'",
    altPgSqlExpression: "'2018-01-01T00:00:00.000'",
  ),
  'double': TestTypeData(
    defaultExpression: '3.14',
    altPgSqlExpression: '6.28',
  ),
  'Duration': TestTypeData(
    pgsqlExpression: '1234',
    altPgSqlExpression: '2345',
  ),
  customEnumType: TestTypeData(
    defaultExpression: '$customEnumType.alpha',
    pgsqlExpression: "'alpha'",
    altPgSqlExpression: "'beta'",
  ),
  'int': TestTypeData(
    defaultExpression: '42',
    altPgSqlExpression: '43',
  ),
  'num': TestTypeData(
    defaultExpression: '88.6',
    altPgSqlExpression: '29',
  ),
  'Object': TestTypeData(
    defaultExpression: "'o1'",
    altPgSqlExpression: "'o2'",
  ),
  'String': TestTypeData(
    defaultExpression: "'a string'",
    altPgSqlExpression: "'another string'",
  ),
  'Uri': TestTypeData.defaultFunc(
    pgsqlExpression: "'https://example.com'",
    altPgSqlExpression: "'https://dart.dev'",
  ),
};

Iterable<String> supportedTypes() => _typesToTest.keys;

Iterable<String> collectionTypes() => _collectionTypes.keys;

final _collectionTypes = {
  'Map': TestTypeData(
    defaultExpression: "{'a': 1}",
    altPgSqlExpression: "{'b': 2}",
    genericArgs: _iterableGenericArgs
        .expand((v) => mapKeyTypes.map((k) => '$k,$v'))
        .toSet(),
  ),
  'List': TestTypeData(
    defaultExpression: '[$_defaultCollectionExpressions]',
    altPgSqlExpression: '[$_altCollectionExpressions]',
    genericArgs: _iterableGenericArgs,
  ),
  'Set': TestTypeData(
    defaultExpression: '{$_defaultCollectionExpressions}',
    pgsqlExpression: '[$_defaultCollectionExpressions]',
    altPgSqlExpression: '[$_altCollectionExpressions]',
    genericArgs: _iterableGenericArgs,
  ),
  'Iterable': TestTypeData(
    defaultExpression: '[$_defaultCollectionExpressions]',
    altPgSqlExpression: '[$_altCollectionExpressions]',
    genericArgs: _iterableGenericArgs,
  ),
};

final _typesToTest = {
  ..._trivialTypesToTest,
  ..._collectionTypes,
};

Iterable<String> get mapKeyTypes =>
    allowedMapKeyTypes.map((e) => e == 'enum' ? customEnumType : e).toList()
      ..sort(compareAsciiLowerCase);

final _iterableGenericArgs = ([
  ..._trivialTypesToTest.keys,
  ..._trivialTypesToTest.keys.map((e) => '$e?'),
  'dynamic',
]..sort(compareAsciiLowerCase))
    .toSet();

const _defaultCollectionExpressions = '42, true, false, null';
const _altCollectionExpressions = '43, false';

Builder typeBuilder([_]) => validate('_type_builder', const _TypeBuilder());

class _TypeBuilder implements Builder {
  const _TypeBuilder();

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;

    final sourceContent = await buildStep.readAsString(inputId);

    for (var entry in _typesToTest.entries) {
      final type = entry.key;
      final newId = buildStep.inputId.changeExtension(toTypeExtension(type));

      await buildStep.writeAsString(
        newId,
        formatter.format(entry.value.libContent(sourceContent, type)),
      );
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.dart': _typesToTest.keys.map(toTypeExtension).toSet().toList()..sort()
      };
}

Builder typeTestBuilder([_]) =>
    validate('_type_test_builder', const _TypeTestBuilder());

class _TypeTestBuilder implements Builder {
  const _TypeTestBuilder();

  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final inputId = buildStep.inputId;

    final sourceContent = await buildStep.readAsString(inputId);

    for (var entry in _typesToTest.entries) {
      final type = entry.key;
      final newId =
          buildStep.inputId.changeExtension(_toTypeTestExtension(type));

      await buildStep.writeAsString(
        newId,
        entry.value.testContent(sourceContent, type),
      );
    }
  }

  @override
  Map<String, List<String>> get buildExtensions => {
        '.dart': _typesToTest.keys.map(_toTypeTestExtension).toSet().toList()
          ..sort()
      };
}

String _toTypeTestExtension(String e) => '.${typeToPathPart(e)}_test.dart';
