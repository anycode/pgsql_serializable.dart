// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: annotate_overrides

import 'package:pgsql_annotation/pgsql_annotation.dart';

import 'default_value_interface.dart' as dvi hide Greek;
import 'default_value_interface.dart'
    show
        ConstClass,
        ConstClassConverter,
        Greek,
        constClassFromPgSql,
        constClassToPgSql,
        intDefaultValueFunction;

part 'default_value.g_any_map__checked.g.dart';

const _intValue = 42;

dvi.DefaultValue fromPgSql(Map<String, dynamic> pgsql) =>
    _$DefaultValueFromPgSql(pgsql);

@PgSqlSerializable(
  checked: true,
  anyMap: true,
)
class DefaultValue implements dvi.DefaultValue {
  @PgSqlKey(defaultValue: true)
  bool fieldBool;

  @PgSqlKey(defaultValue: 'string', includeIfNull: false)
  String fieldString;

  @PgSqlKey(defaultValue: _intValue)
  int fieldInt;

  @PgSqlKey(defaultValue: 3.14)
  double fieldDouble;

  @PgSqlKey(defaultValue: [])
  List fieldListEmpty;

  @PgSqlKey(defaultValue: <int>{})
  Set fieldSetEmpty;

  @PgSqlKey(defaultValue: {})
  Map fieldMapEmpty;

  @PgSqlKey(defaultValue: [1, 2, 3])
  List<int> fieldListSimple;

  @PgSqlKey(defaultValue: {'entry1', 'entry2'})
  Set<String> fieldSetSimple;

  @PgSqlKey(defaultValue: {'answer': 42})
  Map<String, int> fieldMapSimple;

  @PgSqlKey(defaultValue: {
    'root': ['child']
  })
  Map<String, List<String>> fieldMapListString;

  Duration durationField;

  @PgSqlKey(defaultValue: Greek.beta)
  Greek fieldEnum;

  ConstClass constClass;

  @ConstClassConverter()
  ConstClass valueFromConverter;

  @PgSqlKey(fromPgSql: constClassFromPgSql, toPgSql: constClassToPgSql)
  ConstClass valueFromFunction;

  @PgSqlKey(defaultValue: intDefaultValueFunction)
  int intDefaultValueFromFunction;

  @PgSqlKey(defaultValue: ConstClass.new)
  ConstClass valueFromDefaultValueDefaultConstructor;

  @PgSqlKey(defaultValue: ConstClass.easy)
  ConstClass valueFromDefaultValueNamedConstructor;

  DefaultValue(
    this.fieldBool,
    this.fieldString,
    this.fieldInt,
    this.fieldDouble,
    this.fieldListEmpty,
    this.fieldSetEmpty,
    this.fieldMapEmpty,
    this.fieldListSimple,
    this.fieldSetSimple,
    this.fieldMapSimple,
    this.fieldMapListString,
    this.fieldEnum, {
    this.durationField = Duration.zero,
    this.constClass = const ConstClass('value'),
    this.valueFromConverter = const ConstClass('value'),
    this.valueFromFunction = const ConstClass('value'),
    required this.intDefaultValueFromFunction,
    required this.valueFromDefaultValueDefaultConstructor,
    required this.valueFromDefaultValueNamedConstructor,
  });

  factory DefaultValue.fromPgSql(Map<String, dynamic> pgsql) =>
      _$DefaultValueFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$DefaultValueToPgSql(this);
}
