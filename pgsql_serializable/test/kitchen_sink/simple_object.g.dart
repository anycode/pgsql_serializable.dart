// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'simple_object.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleObject _$SimpleObjectFromPgSql(Map pgsql) =>
    SimpleObject((pgsql['value'] as num).toInt());

Map<String, dynamic> _$SimpleObjectToPgSql(SimpleObject instance) =>
    <String, dynamic>{'value': instance.value};
