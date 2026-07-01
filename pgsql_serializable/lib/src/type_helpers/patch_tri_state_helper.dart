// Copyright (c) 2026, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import '../type_helper_ctx.dart';
import '../utils.dart';
import 'config_types.dart';
import 'pgsql_converter_helper.dart';

/// Whether [pgsqlKey] enables PATCH-style tri-state serialization.
bool usesExplicitPgSqlNullWhenNonNullField(KeyConfig pgsqlKey) =>
    pgsqlKey.explicitPgSqlNullWhenNonNullField;

/// Validates that explicit PgSQL `null` can be passed through deserialization.
void validateExplicitPgSqlNullDeserialize(
  FieldElement field,
  TypeHelperCtx context,
  DartType targetType,
) {
  final fromPgSqlData = context.deserializeConvertData;
  if (fromPgSqlData != null) {
    if (!_acceptsNullablePgSqlInput(fromPgSqlData.paramType)) {
      throwUnsupported(
        field,
        'Fields with `explicitPgSqlNullWhenNonNullField` require `fromPgSql` to '
        'accept a nullable PgSQL input (for example `Object?`), but '
        '`${fromPgSqlData.name}` has a non-nullable parameter type '
        '`${typeToCode(fromPgSqlData.paramType)}`.',
      );
    }
    return;
  }

  final nullableConverterEncode = hasConverterNullEncode(targetType, context);
  if (nullableConverterEncode != null) {
    if (!nullableConverterEncode) {
      throwUnsupported(
        field,
        'Fields with `explicitPgSqlNullWhenNonNullField` require the '
        '`PgSqlConverter` `fromPgSql` input type to be nullable when the field '
        'type is nullable.',
      );
    }
    return;
  }

  if (targetType is! InterfaceType) {
    return;
  }

  final fromPgSqlCtor = targetType.element.constructors
      .where((ce) => ce.name == 'fromPgSql')
      .singleOrNull;

  if (fromPgSqlCtor == null) {
    return;
  }

  final positionalParams = fromPgSqlCtor.formalParameters
      .where((element) => element.isPositional)
      .toList();

  if (positionalParams.isEmpty) {
    return;
  }

  final paramType = positionalParams.first.type;
  if (!_acceptsNullablePgSqlInput(paramType)) {
    throw InvalidGenerationSourceError(
      'Fields with `explicitPgSqlNullWhenNonNullField` cannot deserialize '
      'explicit PgSQL `null` through `${targetType.element.name}.fromPgSql` '
      'because its first parameter is non-nullable '
      '`${typeToCode(paramType)}`. Use a nullable parameter (for example '
      '`Object?`) or provide a custom `@PgSqlKey(fromPgSql: ...)` that accepts '
      'nullable input.',
      element: field,
    );
  }
}

bool _acceptsNullablePgSqlInput(DartType type) =>
    type is DynamicType || type.isNullableType;

/// Wraps [presentExpression] with `containsKey` logic for `fromPgSql`.
///
/// When the key is present, [presentExpression] must deserialize the PgSQL
/// value (including PgSQL `null`) without treating it as a missing key.
String wrapPatchTriStateFromPgSql({
  required String mapExpression,
  required String pgsqlKeyName,
  required String absentExpression,
  required String presentExpression,
}) =>
    '!$mapExpression.containsKey($pgsqlKeyName) '
    '? $absentExpression '
    ': $presentExpression';

/// Wraps checked-mode `$checkedConvert` callback with the same logic.
String wrapPatchTriStateCheckedConvert({
  required String mapExpression,
  required String pgsqlKeyName,
  required String absentExpression,
  required String presentExpression,
}) =>
    '!$mapExpression.containsKey($pgsqlKeyName) '
    '? $absentExpression '
    ': $presentExpression';
