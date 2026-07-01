// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

class PgSqlLiteralGenerator extends GeneratorForAnnotation<PgSqlLiteral> {
  const PgSqlLiteralGenerator() : super(inPackage: 'pgsql_annotation');

  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    if (p.isAbsolute(annotation.read('path').stringValue)) {
      throw ArgumentError(
        '`annotation.path` must be relative path to the source file.',
      );
    }

    final sourcePathDir = p.dirname(buildStep.inputId.path);
    final fileId = AssetId(
      buildStep.inputId.package,
      p.join(sourcePathDir, annotation.read('path').stringValue),
    );
    final content = json.decode(await buildStep.readAsString(fileId));

    final asConst = annotation.read('asConst').boolValue;

    final thing = pgsqlLiteralAsDart(content).toString();
    final marked = asConst ? 'const' : 'final';

    return '$marked _\$${element.name}PgSqlLiteral = $thing;';
  }
}

/// Returns a [String] representing a valid Dart literal for [value].
String pgsqlLiteralAsDart(Object? value) => switch (value) {
  null => 'null',
  final String s => escapeDartString(s),
  final double d when d.isNaN => 'double.nan',
  final double d when d.isInfinite =>
    d.isNegative ? 'double.negativeInfinity' : 'double.infinity',
  bool() || num() => value.toString(),
  final List l => '[${l.map(pgsqlLiteralAsDart).join(', ')}]',
  final Set s => '{${s.map(pgsqlLiteralAsDart).join(', ')}}',
  final Map m => pgsqlMapAsDart(m),
  _ => throw StateError(
    'Should never get here – with ${value.runtimeType} - `$value`.',
  ),
};

String pgsqlMapAsDart(Map value) {
  final buffer = StringBuffer('{');

  var first = true;
  value.forEach((k, v) {
    if (first) {
      first = false;
    } else {
      buffer.writeln(',');
    }
    buffer
      ..write(escapeDartString(k as String))
      ..write(': ')
      ..write(pgsqlLiteralAsDart(v));
  });

  buffer.write('}');

  return buffer.toString();
}
