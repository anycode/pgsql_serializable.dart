// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'pgsql_keys_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Model _$ModelFromPgSql(Map<String, dynamic> pgsql) => Model(
  firstName: pgsql['first-name'] as String,
  lastName: pgsql['LAST_NAME'] as String,
);

abstract final class _$ModelPgSqlKeys {
  static const String firstName = 'first-name';
  static const String lastName = 'LAST_NAME';
}

Map<String, dynamic> _$ModelToPgSql(Model instance) => <String, dynamic>{
  'first-name': instance.firstName,
  'LAST_NAME': instance.lastName,
};
