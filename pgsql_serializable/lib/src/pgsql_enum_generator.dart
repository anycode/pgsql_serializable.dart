// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'enum_utils.dart';
import 'settings.dart';

class PgSqlEnumGenerator extends GeneratorForAnnotation<PgSqlEnum> {
  final Settings _settings;

  PgSqlEnumGenerator.fromSettings(this._settings);
  factory PgSqlEnumGenerator({
    PgSqlSerializable? config,
  }) =>
      PgSqlEnumGenerator.fromSettings(Settings(
        config: config,
      ));

  @override
  List<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! EnumElement) {
      throw InvalidGenerationSourceError(
        '`@PgSqlEnum` can only be used on enum elements.',
        element: element,
      );
    }

    final value =
        enumValueMapFromType(element.thisType, _settings.config.enumMapPrefix,
            nullWithNoAnnotation: true);

    return [
      if (value != null) value,
    ];
  }
}
