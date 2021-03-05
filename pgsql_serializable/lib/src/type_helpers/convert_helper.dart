// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../shared_checkers.dart';
import '../type_helper.dart';
import '../utils.dart';

/// Information used by [ConvertHelper] when handling `PgSqlKey`-annotated
/// fields with `toPgSql` or `fromPgSql` values set.
class ConvertData {
  final String name;
  final DartType paramType;

  ConvertData(this.name, this.paramType);
}

abstract class TypeHelperContextWithConvert extends TypeHelperContext {
  ConvertData get serializeConvertData;

  ConvertData get deserializeConvertData;
}

class ConvertHelper extends TypeHelper<TypeHelperContextWithConvert> {
  const ConvertHelper();

  @override
  String serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConvert context,
  ) {
    final toPgSqlData = context.serializeConvertData;
    if (toPgSqlData == null) {
      return null;
    }

    assert(toPgSqlData.paramType is TypeParameterType ||
        targetType.isAssignableTo(toPgSqlData.paramType));
    return '${toPgSqlData.name}($expression)';
  }

  @override
  String deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConvert context,
    bool defaultProvided,
  ) {
    final fromPgSqlData = context.deserializeConvertData;
    if (fromPgSqlData == null) {
      return null;
    }

    final asContent = asStatement(fromPgSqlData.paramType);
    return '${fromPgSqlData.name}($expression$asContent)';
  }
}
