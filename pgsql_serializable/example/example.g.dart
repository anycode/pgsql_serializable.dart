// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map<String, dynamic> pgsql) => Person(
  firstName: pgsql['firstName'] as String,
  lastName: pgsql['lastName'] as String,
  dateOfBirth: pgsql['dateOfBirth'] == null
      ? null
      : DateTime.parse(pgsql['dateOfBirth'] as String),
);

Map<String, dynamic> _$PersonToPgSql(Person instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
};

const _$PersonJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'firstName': {'type': 'string'},
    'lastName': {'type': 'string'},
    'dateOfBirth': {'type': 'string', 'format': 'date-time'},
  },
  'required': ['firstName', 'lastName'],
};
