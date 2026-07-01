// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'schema_example.g.dart';

@PgSqlSerializable(createPgSqlSchema: true)
final class SchemaExample {
  /// Required named constructor parameter
  final double requiredName;

  /// Nullable required named constructor parameter
  final double? nullableNotRequired;

  final double? nullableRequiredPositional;
  final double? nullableRequiredName;

  /// Required named constructor parameter
  final List<SchemaExample> requiredBranch;

  @PgSqlKey(defaultValue: 3.145)
  final double? optionalNullableFieldWithPgSqlKeyDefault;

  final Branch branch;

  final ComprehensiveNested? nested;

  SchemaExample(
    this.requiredBranch,
    this.nullableRequiredPositional, {
    required this.requiredName,
    this.nullableNotRequired = 3.145,
    required this.nullableRequiredName,
    this.optionalNullableFieldWithPgSqlKeyDefault,
    required this.branch,
    this.nested,
  });

  factory SchemaExample.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SchemaExampleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SchemaExampleToPgSql(this);

  /// Getter only - should not be in schema
  double get propGetterOnly => requiredName / requiredBranch.length;

  /// Non-nullable field with default value - should NOT be required
  bool propExtraField = false;

  /// Non-ctor field with `required: true` - should be required
  @PgSqlKey(required: true)
  bool propExtraFieldRequired = false;

  static const schema = _$SchemaExamplePgSqlSchema;
}

@PgSqlSerializable()
final class Branch {
  final double length;
  final List<Branch> branch;

  const Branch({required this.length, required this.branch});

  factory Branch.fromPgSql(Map<String, dynamic> pgsql) => _$BranchFromPgSql(pgsql);

  // This getter should NOT be in the schema, especially as required
  @PgSqlKey(includeFromPgSql: false, includeToPgSql: false, required: false)
  double get proportion => length / branch.length;

  Map<String, dynamic> toPgSql() => _$BranchToPgSql(this);
}

@PgSqlSerializable(createPgSqlSchema: true)
final class ComprehensiveNested {
  static const staticConst = 1;
  static int staticVar = 2;

  // ignore: unused_field
  final int _privateVar = 3;

  @PgSqlKey(includeToPgSql: false)
  int noIncludeToPgSql = 4;

  @PgSqlKey(includeFromPgSql: false)
  int noIncludeFromPgSql = 4;

  /// Writable field comment
  ///
  /// With a second line.
  int writableField = 5;

  /// Description with a multiplication: a * b
  int regexChecks = 10;

  @PgSqlKey(name: 'renamed_field')
  int renamedField = 6;

  int get getterOnly => 7;

  @PgSqlKey(includeToPgSql: true)
  int get getterIncluded => 8;

  @PgSqlKey(includeToPgSql: false)
  int get getterExcluded => 9;

  ComprehensiveNested();

  factory ComprehensiveNested.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ComprehensiveNestedFromPgSql(pgsql);
  Map<String, dynamic> toPgSql() => _$ComprehensiveNestedToPgSql(this);

  static const schema = _$ComprehensiveNestedPgSqlSchema;
}
