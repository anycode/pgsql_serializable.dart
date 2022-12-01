// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'field_map_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Model _$ModelFromPgSql(Map<String, dynamic> pgsql) => Model(
      firstName: pgsql['first-name'] as String,
      lastName: pgsql['LAST_NAME'] as String,
    );

const _$ModelFieldMap = <String, String>{
  'firstName': 'first-name',
  'lastName': 'LAST_NAME',
};

Map<String, dynamic> _$ModelToPgSql(Model instance) => <String, dynamic>{
      'first-name': instance.firstName,
      'LAST_NAME': instance.lastName,
    };

const _$PrivateModelFieldMap = <String, String>{
  'fullName': 'full-name',
};

Map<String, dynamic> _$PrivateModelToPgSql(_PrivateModel instance) =>
    <String, dynamic>{
      'full-name': instance.fullName,
    };
