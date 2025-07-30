// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

abstract class DefaultValue {
  bool get fieldBool;

  String get fieldString;

  int get fieldInt;

  double get fieldDouble;

  List get fieldListEmpty;

  Map get fieldMapEmpty;

  Set get fieldSetEmpty;

  List<int> get fieldListSimple;

  Set<String> get fieldSetSimple;

  Map<String, int> get fieldMapSimple;

  Map<String, List<String>> get fieldMapListString;

  Duration get durationField;

  Greek get fieldEnum;

  ConstClass get constClass;

  ConstClass get valueFromConverter;

  ConstClass get valueFromFunction;

  int get intDefaultValueFromFunction;

  ConstClass get valueFromDefaultValueDefaultConstructor;

  ConstClass get valueFromDefaultValueNamedConstructor;
}

enum Greek { alpha, beta, gamma, delta }

// Regression for https://github.com/anycode/pgsql_serializable.dart/issues/903
class ConstClass {
  final String field;

  const ConstClass([this.field = 'default']);

  ConstClass.easy() : field = 'easy';

  factory ConstClass.fromPgSql(Map<String, dynamic> pgsql) =>
      ConstClass(pgsql['field'] as String);

  Map<String, dynamic> toPgSql() => <String, dynamic>{'field': field};
}

ConstClass constClassFromPgSql(String pgsql) => ConstClass(pgsql);

String constClassToPgSql(ConstClass object) => object.field;

class ConstClassConverter extends PgSqlConverter<ConstClass, String> {
  const ConstClassConverter();

  @override
  ConstClass fromPgSql(String pgsql) => ConstClass(pgsql);

  @override
  String toPgSql(ConstClass object) => object.field;
}

int intDefaultValueFunction() => 43;
