// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'enum_utils.dart';

class PgSqlEnumGenerator extends GeneratorForAnnotation<PgSqlEnum> {
  const PgSqlEnumGenerator();

  @override
  List<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement || !element.isEnum) {
      throw InvalidGenerationSourceError(
        '`@PgSqlEnum` can only be used on enum elements.',
        element: element,
      );
    }

    final value =
        enumValueMapFromType(element.thisType, nullWithNoAnnotation: true);

    return [
      if (value != null) value,
    ];
  }
}
