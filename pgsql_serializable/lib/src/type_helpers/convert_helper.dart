// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../pgsql_key_utils.dart';
import '../shared_checkers.dart';
import '../type_helper.dart';
import '../utils.dart';

/// Information used by [ConvertHelper] when handling `PgSqlKey`-annotated
/// fields with `topgsql` or `frompgsql` values set.
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
    final topgsqlData = context.serializeConvertData;
    if (topgsqlData == null) {
      return null;
    }

    logFieldWithConversionFunction(context.fieldElement);

    assert(topgsqlData.paramType is TypeParameterType ||
        targetType.isAssignableTo(topgsqlData.paramType));
    return '${topgsqlData.name}($expression)';
  }

  @override
  String deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConvert context,
  ) {
    final frompgsqlData = context.deserializeConvertData;
    if (frompgsqlData == null) {
      return null;
    }

    logFieldWithConversionFunction(context.fieldElement);

    final asContent = asStatement(frompgsqlData.paramType);
    return '${frompgsqlData.name}($expression$asContent)';
  }
}
