// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:checked_yaml/checked_yaml.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'example.g.dart';

@PgSqlSerializable(anyMap: true, checked: true, disallowUnrecognizedKeys: true)
class Configuration {
  @PgSqlKey(required: true)
  final String name;
  final int count;

  Configuration({required this.name, required this.count}) {
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
  final sourcePathOrYaml = arguments.single;
  String yamlContent;
  Uri? sourceUri;

  if (FileSystemEntity.isFileSync(sourcePathOrYaml)) {
    yamlContent = File(sourcePathOrYaml).readAsStringSync();
    sourceUri = Uri.parse(sourcePathOrYaml);
  } else {
    yamlContent = sourcePathOrYaml;
  }

  final config = checkedYamlDecode(
    yamlContent,
    (m) => Configuration.fromPgSql(m!),
    sourceUrl: sourceUri,
  );
  print(config);
}
