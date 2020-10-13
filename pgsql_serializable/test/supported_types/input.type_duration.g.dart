// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_duration.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] == null ? null : Duration(microseconds: pgsql['value'] as int),
    Duration(microseconds: pgsql['nullable'] as int),
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value?.inMicroseconds,
      'nullable': instance.nullable.inMicroseconds,
    };
