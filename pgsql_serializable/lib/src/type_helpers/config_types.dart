// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';

/// Represents values from [PgSqlKey] when merged with local configuration.
class KeyConfig {
  final String? defaultValue;

  final bool disallowNullValue;

  final bool? includeFromPgSql;

  final bool includeIfNull;

  final bool? includeToPgSql;

  final String name;

  final bool required;

  final String? unknownEnumValue;

  final String? readValueFunctionName;

  KeyConfig({
    required this.defaultValue,
    required this.disallowNullValue,
    required this.includeFromPgSql,
    required this.includeIfNull,
    required this.includeToPgSql,
    required this.name,
    required this.readValueFunctionName,
    required this.required,
    required this.unknownEnumValue,
  });
}

/// Represents values from [PgSqlSerializable] when merged with local
/// configuration.
///
/// Values are all known, so types are non-nullable.
class ClassConfig {
  final bool anyMap;
  final bool checked;
  final String constructor;
  final bool createFactory;
  final bool createToPgSql;
  final bool createFieldMap;
  final bool createPerFieldToPgSql;
  final bool disallowUnrecognizedKeys;
  final String enumMapPrefix;
  final bool explicitToPgSql;
  final FieldRename fieldRename;
  final bool genericArgumentFactories;
  final bool ignoreUnannotated;
  final bool includeIfNull;
  final Map<String, String> ctorParamDefaults;
  final List<DartObject> converters;

  const ClassConfig({
    required this.anyMap,
    required this.checked,
    required this.constructor,
    required this.createFactory,
    required this.createToPgSql,
    required this.createFieldMap,
    required this.createPerFieldToPgSql,
    required this.disallowUnrecognizedKeys,
    required this.enumMapPrefix,
    required this.explicitToPgSql,
    required this.fieldRename,
    required this.genericArgumentFactories,
    required this.ignoreUnannotated,
    required this.includeIfNull,
    this.converters = const [],
    this.ctorParamDefaults = const {},
  });

  factory ClassConfig.fromPgSqlSerializable(PgSqlSerializable config) =>
      // #CHANGE WHEN UPDATING pgsql_annotation
      ClassConfig(
        checked: config.checked ?? ClassConfig.defaults.checked,
        anyMap: config.anyMap ?? ClassConfig.defaults.anyMap,
        constructor: config.constructor ?? ClassConfig.defaults.constructor,
        createFieldMap:
            config.createFieldMap ?? ClassConfig.defaults.createFieldMap,
        createPerFieldToPgSql: config.createPerFieldToPgSql ??
            ClassConfig.defaults.createPerFieldToPgSql,
        createFactory:
            config.createFactory ?? ClassConfig.defaults.createFactory,
        createToPgSql: config.createToPgSql ?? ClassConfig.defaults.createToPgSql,
        ignoreUnannotated:
            config.ignoreUnannotated ?? ClassConfig.defaults.ignoreUnannotated,
        enumMapPrefix:
            config.enumMapPrefix ?? ClassConfig.defaults.enumMapPrefix,
        explicitToPgSql:
            config.explicitToPgSql ?? ClassConfig.defaults.explicitToPgSql,
        includeIfNull:
            config.includeIfNull ?? ClassConfig.defaults.includeIfNull,
        genericArgumentFactories: config.genericArgumentFactories ??
            ClassConfig.defaults.genericArgumentFactories,
        fieldRename: config.fieldRename ?? ClassConfig.defaults.fieldRename,
        disallowUnrecognizedKeys: config.disallowUnrecognizedKeys ??
            ClassConfig.defaults.disallowUnrecognizedKeys,
        // TODO typeConverters = []
      );

  /// An instance of [PgSqlSerializable] with all fields set to their default
  /// values.
  static const defaults = ClassConfig(
    anyMap: false,
    checked: false,
    constructor: '',
    createFactory: true,
    createToPgSql: true,
    createFieldMap: false,
    createPerFieldToPgSql: false,
    disallowUnrecognizedKeys: false,
    enumMapPrefix: 'pg',
    explicitToPgSql: false,
    fieldRename: FieldRename.none,
    genericArgumentFactories: false,
    ignoreUnannotated: false,
    includeIfNull: true,
  );

  PgSqlSerializable toPgSqlSerializable() => PgSqlSerializable(
        checked: checked,
        anyMap: anyMap,
        constructor: constructor,
        createFactory: createFactory,
        createToPgSql: createToPgSql,
        createFieldMap: createFieldMap,
        createPerFieldToPgSql: createPerFieldToPgSql,
        ignoreUnannotated: ignoreUnannotated,
        enumMapPrefix: enumMapPrefix,
        explicitToPgSql: explicitToPgSql,
        includeIfNull: includeIfNull,
        genericArgumentFactories: genericArgumentFactories,
        fieldRename: fieldRename,
        disallowUnrecognizedKeys: disallowUnrecognizedKeys,
        // TODO typeConverters = []
      );
}
