// Copyright (c) 2019, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:build/build.dart';
import 'package:path/path.dart' as p;
import 'package:source_helper/source_helper.dart';

import 'shared.dart';

Builder builder([BuilderOptions? _]) => _FieldMatrixBuilder();

class _FieldMatrixBuilder extends Builder {
  @override
  FutureOr<void> build(BuildStep buildStep) async {
    final formatter = await buildStep.formatter();

    final inputBaseName = p.basenameWithoutExtension(buildStep.inputId.path);

    final output = buildStep.allowedOutputs.single;

    final content = StringBuffer('''
import 'package:pgsql_annotation/pgsql_annotation.dart';

part '$inputBaseName.field_matrix.g.dart';
''');

    final classes = <String>{};

    for (var isPublic in [true, false]) {
      for (var includeToPgSql in [null, true, false]) {
        for (var includeFromPgSql in [null, true, false]) {
          final className =
              'ToPgSql${includeToPgSql.toString().pascal}'
              'FromPgSql${includeFromPgSql.toString().pascal}'
              '${isPublic ? 'Public' : 'Private'}';

          classes.add(className);

          final fieldName = isPublic ? 'field' : '_field';

          final bits = [
            if (includeFromPgSql != null) 'includeFromPgSql: $includeFromPgSql,',
            if (includeToPgSql != null) 'includeToPgSql: $includeToPgSql,',
            if (!isPublic) "name: 'field'",
          ];

          final fieldAnnotation = bits.isEmpty
              ? ''
              : '@PgSqlKey(${bits.join()})';

          content.writeln('''
@PgSqlSerializable()
class $className {
  $className();
  
  int? aField;
  
  $fieldAnnotation
  int? $fieldName;
  
  int? zField;

  factory $className.fromPgSql(Map<String, dynamic> pgsql) =>
      _\$${className}FromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _\$${className}ToPgSql(this);
  
  @override
  String toString() => '$className: $fieldName: \$$fieldName';
}
''');
        }
      }
    }

    content.writeln('''
const fromPgSqlFactories = <Object Function(Map<String, dynamic>)>{
  ${classes.map((e) => '$e.fromPgSql,').join()}
};
''');

    await buildStep.writeAsString(output, formatter.format(content.toString()));
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
    '.dart': ['.field_matrix.dart'],
  };
}
