// Copyright (c) 2017, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:build/build.dart';
import 'package:dart_style/dart_style.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:source_gen/source_gen.dart';

import 'check_dependencies.dart';
import 'pgsql_enum_generator.dart';
import 'pgsql_literal_generator.dart';
import 'pgsql_serializable_generator.dart';
import 'settings.dart';

/// Returns a [Builder] for use within a `package:build_runner`
/// `BuildAction`.
///
/// [formatOutput] is called to format the generated code. If not provided,
/// the default Dart code formatter is used.
Builder pgsqlPartBuilder({
  String Function(String code, Version languageVersion)? formatOutput,
  PgSqlSerializable? config,
}) {
  final settings = Settings(config: config);

  return SharedPartBuilder(
    [
      _UnifiedGenerator([
        PgSqlSerializableGenerator.fromSettings(settings),
        PgSqlEnumGenerator.fromSettings(settings),
      ]),
      const PgSqlLiteralGenerator(),
    ],
    'pgsql_serializable',
    formatOutput: formatOutput ?? defaultFormatOutput,
  );
}

/// Allows exposing separate [GeneratorForAnnotation] instances as one
/// generator.
///
/// We want duplicate items to be merged if folks use both `@PgSqlEnum` and
/// `@PgSqlSerializable` so we don't get duplicate enum helper functions.
///
/// This can only be done if the output is merged into one generator.
///
/// This class allows us to keep the implementations separate.
class _UnifiedGenerator extends Generator {
  final List<GeneratorForAnnotation> _generators;

  _UnifiedGenerator(this._generators);

  @override
  Future<String?> generate(LibraryReader library, BuildStep buildStep) async {
    final values = <String>{};

    for (var generator in _generators) {
      for (var annotatedElement in library.annotatedWith(
        generator.typeChecker,
      )) {
        await pubspecHasRightVersion(buildStep);

        final generatedValue = generator.generateForAnnotatedElement(
          annotatedElement.element,
          annotatedElement.annotation,
          buildStep,
        );
        for (var value in _normalizeGeneratorOutput(generatedValue)) {
          assert(value.length == value.trim().length);
          values.add(value);
        }
      }
    }

    return values.join('\n\n');
  }

  @override
  String toString() => 'PgSqlSerializableGenerator';
}

// Borrowed from `package:source_gen`
Iterable<String> _normalizeGeneratorOutput(Object? value) {
  if (value == null) {
    return const [];
  } else if (value is String) {
    value = [value];
  }

  if (value is Iterable) {
    return value
        .where((e) => e != null)
        .map((e) {
          if (e is String) {
            return e.trim();
          }

          throw _argError(e as Object);
        })
        .where((e) => e.isNotEmpty);
  }
  throw _argError(value);
}

// Borrowed from `package:source_gen`
ArgumentError _argError(Object value) => ArgumentError(
  'Must be a String or be an Iterable containing String values. '
  'Found `${Error.safeToString(value)}` (${value.runtimeType}).',
);

String defaultFormatOutput(String code, Version languageVersion) =>
    DartFormatter(languageVersion: languageVersion).format(code);
