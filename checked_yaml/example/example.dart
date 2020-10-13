// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'example.g.dart';

@PgSqlSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
  nullable: false,
)
class Configuration {
  @PgSqlKey(required: true)
  final String name;
  @PgSqlKey(required: true)
  final int count;

  Configuration({this.name, this.count}) {
    if (name.isEmpty) {
      throw ArgumentError.value(name, 'name', 'Cannot be empty.');
    }
  }

  factory Configuration.fromPgSql(Map pgsql) => _$ConfigurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ConfigurationToPgSql(this);

  @override
  String toString() => 'Configuration: ${toPgSql()}';
}

void main(List<String> arguments) {
  var sourcePathOrYaml = arguments.single;
  String yamlContent;

  if (FileSystemEntity.isFileSync(sourcePathOrYaml)) {
    yamlContent = File(sourcePathOrYaml).readAsStringSync();
  } else {
    yamlContent = sourcePathOrYaml;
    sourcePathOrYaml = null;
  }

  final config = checkedYamlDecode(
      yamlContent, (m) => Configuration.fromPgSql(m),
      sourceUrl: sourcePathOrYaml);
  print(config);
}
