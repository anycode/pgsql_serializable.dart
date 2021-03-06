// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:build/build.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'pgsql_literal_generator.dart';
import 'pgsql_serializable_generator.dart';
import 'settings.dart';

/// Returns a [Builder] for use within a `package:build_runner`
/// `BuildAction`.
///
/// [formatOutput] is called to format the generated code. If not provided,
/// the default Dart code formatter is used.
Builder pgsqlPartBuilder({
  String Function(String code)? formatOutput,
  PgSqlSerializable? config,
}) {
  final settings = Settings(config: config);

  return SharedPartBuilder(
    [
      PgSqlSerializableGenerator.fromSettings(settings),
      const PgSqlLiteralGenerator(),
    ],
    'pgsql_serializable',
    formatOutput: formatOutput,
  );
}
