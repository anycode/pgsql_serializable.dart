// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

/// Represents values from [PgSqlKey] when merged with local configuration.
class KeyConfig {
  final String? defaultValue;

  final bool disallowNullValue;

  final bool ignore;

  final bool includeIfNull;

  final String name;

  final bool required;

  final String? unknownEnumValue;

  final String? readValueFunctionName;

  KeyConfig({
    required this.defaultValue,
    required this.disallowNullValue,
    required this.ignore,
    required this.includeIfNull,
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
class ClassConfig implements PgSqlSerializable {
  @override
  final bool anyMap;

  @override
  final bool checked;

  @override
  final String constructor;

  @override
  final bool createFactory;

  @override
  final bool createToPgSql;

  @override
  final bool disallowUnrecognizedKeys;

  @override
  final bool explicitToPgSql;

  @override
  final FieldRename fieldRename;

  @override
  final bool genericArgumentFactories;

  @override
  final bool ignoreUnannotated;

  @override
  final bool includeIfNull;

  final Map<String, String> ctorParamDefaults;

  const ClassConfig({
    required this.anyMap,
    required this.checked,
    required this.constructor,
    required this.createFactory,
    required this.createToPgSql,
    required this.disallowUnrecognizedKeys,
    required this.explicitToPgSql,
    required this.fieldRename,
    required this.genericArgumentFactories,
    required this.ignoreUnannotated,
    required this.includeIfNull,
    this.ctorParamDefaults = const {},
  });

  /// An instance of [PgSqlSerializable] with all fields set to their default
  /// values.
  static const defaults = ClassConfig(
    anyMap: false,
    checked: false,
    constructor: '',
    createFactory: true,
    createToPgSql: true,
    disallowUnrecognizedKeys: false,
    explicitToPgSql: false,
    fieldRename: FieldRename.none,
    genericArgumentFactories: false,
    ignoreUnannotated: false,
    includeIfNull: true,
  );

  @override
  Map<String, dynamic> toPgSql() => _$PgSqlSerializableToPgSql(this);

  @override
  PgSqlSerializable withDefaults() => this;
}

const _$FieldRenameEnumMap = {
  FieldRename.none: 'none',
  FieldRename.kebab: 'kebab',
  FieldRename.snake: 'snake',
  FieldRename.pascal: 'pascal',
};

// #CHANGE WHEN UPDATING pgsql_annotation
Map<String, dynamic> _$PgSqlSerializableToPgSql(PgSqlSerializable instance) =>
    <String, dynamic>{
      'any_map': instance.anyMap,
      'checked': instance.checked,
      'constructor': instance.constructor,
      'create_factory': instance.createFactory,
      'create_to_pgsql': instance.createToPgSql,
      'disallow_unrecognized_keys': instance.disallowUnrecognizedKeys,
      'explicit_to_pgsql': instance.explicitToPgSql,
      'field_rename': _$FieldRenameEnumMap[instance.fieldRename],
      'generic_argument_factories': instance.genericArgumentFactories,
      'ignore_unannotated': instance.ignoreUnannotated,
      'include_if_null': instance.includeIfNull,
    };
