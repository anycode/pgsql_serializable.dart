// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/type.dart';
import 'package:source_helper/source_helper.dart';

import '../lambda_result.dart';
import '../type_helper.dart';

class GenericFactoryHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const GenericFactoryHelper();

  @override
  Object? serialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
  ) {
    if (context.config.genericArgumentFactories &&
        targetType is TypeParameterType) {
      final toPgSqlFunc = toPgSqlForType(targetType);
      if (targetType.isNullableType) {
        context.addMember(_toPgSqlHelper);
        return '$_toPgSqlHelperName($expression, $toPgSqlFunc)';
      }

      return LambdaResult(expression, toPgSqlFunc);
    }

    return null;
  }

  @override
  Object? deserialize(
    DartType targetType,
    String expression,
    TypeHelperContextWithConfig context,
    bool defaultProvided,
  ) {
    if (context.config.genericArgumentFactories &&
        targetType is TypeParameterType) {
      final fromPgSqlFunc = fromPgSqlForType(targetType);

      if (targetType.isNullableType) {
        context.addMember(_fromPgSqlHelper);
        return '$_fromPgSqlHelperName($expression, $fromPgSqlFunc)';
      }

      return LambdaResult(expression, fromPgSqlFunc);
    }

    return null;
  }
}

const _fromPgSqlHelperName = r'_$nullableGenericFromPgSql';

const _fromPgSqlHelper = '''
T? $_fromPgSqlHelperName<T>(
  Object? input,
  T Function(Object? pgsql) fromPgSql,
) =>
    input == null ? null : fromPgSql(input);
''';

const _toPgSqlHelperName = r'_$nullableGenericToPgSql';

const _toPgSqlHelper = '''
Object? $_toPgSqlHelperName<T>(
  T? input,
  Object? Function(T value) toPgSql,
) =>
    input == null ? null : toPgSql(input);
''';

String toPgSqlForType(TypeParameterType type) =>
    toPgSqlForName(type.getDisplayString(withNullability: false));

String toPgSqlForName(String genericType) => 'toPgSql$genericType';

String fromPgSqlForType(TypeParameterType type) =>
    fromPgSqlForName(type.getDisplayString(withNullability: false));

String fromPgSqlForName(String genericType) => 'fromPgSql$genericType';
