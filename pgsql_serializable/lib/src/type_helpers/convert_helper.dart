// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';
import 'package:source_helper/source_helper.dart';

import '../lambda_result.dart';
import '../type_helper.dart';

/// Information used by [ConvertHelper] when handling `PgSqlKey`-annotated
/// fields with `toPgSql` or `fromPgSql` values set.
class ConvertData {
  final String name;
  final DartType paramType;
  final DartType returnType;

  ConvertData(this.name, this.paramType, this.returnType);
}

abstract class TypeHelperContextWithConvert extends TypeHelperContext {
  ConvertData? get serializeConvertData;

  ConvertData? get deserializeConvertData;
}

/// Handles `PgSqlKey`-annotated fields with `toPgSql` or `fromPgSql` values set.
class ConvertHelper extends TypeHelper<TypeHelperContextWithConvert> {
  const ConvertHelper();

  @override
  Object? serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConvert context,
  ) {
    final toPgSqlData = context.serializeConvertData;
    if (toPgSqlData == null) {
      return null;
    }

    assert(
      toPgSqlData.paramType is TypeParameterType ||
          targetType.isAssignableTo(toPgSqlData.paramType),
    );
    return LambdaResult(expression, toPgSqlData.name);
  }

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConvert context,
    bool defaultProvided,
  ) {
    final fromPgSqlData = context.deserializeConvertData;
    if (fromPgSqlData == null) {
      return null;
    }

    return LambdaResult(
      expression,
      fromPgSqlData.name,
      asContent: fromPgSqlData.paramType,
    );
  }
}
