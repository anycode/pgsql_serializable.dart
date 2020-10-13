// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:meta/meta.dart';

part 'build_config.g.dart';

@PgSqlSerializable(checked: true, anyMap: true)
class Config {
  @PgSqlKey(required: true)
  final Map<String, Builder> builders;

  // Verifying enum keys in map
  Map<AutoApply, int> weights;

  Config({@required this.builders});

  factory Config.fromPgSql(Map map) => _$ConfigFromPgSql(map);

  Map<String, dynamic> toPgSql() => _$ConfigToPgSql(this);
}

@PgSqlSerializable(
    includeIfNull: false,
    disallowUnrecognizedKeys: true,
    checked: true,
    anyMap: true)
class Builder {
  @PgSqlKey(nullable: true)
  final String target;

  final String import;

  @PgSqlKey(name: 'is_optional')
  final bool isOptional;

  @PgSqlKey(disallowNullValue: true)
  final Uri configLocation;

  @PgSqlKey(name: 'auto_apply', disallowNullValue: true)
  final AutoApply autoApply;

  @PgSqlKey(name: 'build_to')
  final BuildTo buildTo;

  final AutoApply defaultEnumTest;

  @PgSqlKey(name: 'builder_factories', nullable: false)
  final List<String> builderFactories;

  @PgSqlKey(name: 'applies_builders')
  final List<String> appliesBuilders;

  @PgSqlKey(name: 'required_inputs')
  final List<String> requiredInputs;

  @PgSqlKey(name: 'build_extensions')
  final Map<String, List<String>> buildExtensions;

  Builder(
      {@required this.import,
      this.target,
      this.isOptional,
      this.autoApply,
      this.buildTo,
      this.defaultEnumTest,
      this.builderFactories,
      this.appliesBuilders,
      this.requiredInputs,
      this.buildExtensions,
      this.configLocation}) {
    if (builderFactories.isEmpty) {
      throw ArgumentError.value(builderFactories, 'builderFactories',
          'Must have at least one value.');
    }
  }

  factory Builder.fromPgSql(Map map) => _$BuilderFromPgSql(map);

  Map<String, dynamic> toPgSql() => _$BuilderToPgSql(this);
}

enum AutoApply {
  none,
  dependents,
  @PgSqlValue('all_packages')
  allPackages,
  @PgSqlValue('root_package')
  rootPackage
}

enum BuildTo { cache, source }
