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
      return LambdaResult(expression, topgsqlForType(targetType));
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
      return LambdaResult(expression, frompgsqlForType(targetType));
    }

    return null;
  }
}

String topgsqlForType(TypeParameterType type) =>
    topgsqlForName(type.getDisplayString(withNullability: false));

String topgsqlForName(String genericType) => 'topgsql$genericType';

String frompgsqlForType(TypeParameterType type) =>
    frompgsqlForName(type.getDisplayString(withNullability: false));

String frompgsqlForName(String genericType) => 'frompgsql$genericType';
