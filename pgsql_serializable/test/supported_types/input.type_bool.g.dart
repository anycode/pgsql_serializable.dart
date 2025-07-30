// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'input.type_bool.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClass(pgsql['value'] as bool, pgsql['withDefault'] as bool? ?? true);

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      pgsql['value'] as bool?,
      pgsql['withDefault'] as bool? ?? true,
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
  SimpleClassNullable instance,
) => <String, dynamic>{
  'value': instance.value,
  'withDefault': instance.withDefault,
};
