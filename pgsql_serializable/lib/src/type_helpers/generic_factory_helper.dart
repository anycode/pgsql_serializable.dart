// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';

import '../lambda_result.dart';
import '../type_helper.dart';

class GenericFactoryHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const GenericFactoryHelper();

  @override
  Object serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (context.config.genericArgumentFactories &&
        targetType is TypeParameterType) {
      return LambdaResult(expression, toPgSqlForType(targetType));
    }

    return null;
  }

  @override
  Object deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (context.config.genericArgumentFactories &&
        targetType is TypeParameterType) {
      return LambdaResult(expression, fromPgSqlForType(targetType));
    }

    return null;
  }
}

String toPgSqlForType(TypeParameterType type) =>
    toPgSqlForName(type.getDisplayString(withNullability: false));

String toPgSqlForName(String genericType) => 'toPgSql$genericType';

String fromPgSqlForType(TypeParameterType type) =>
    fromPgSqlForName(type.getDisplayString(withNullability: false));

String fromPgSqlForName(String genericType) => 'fromPgSql$genericType';
