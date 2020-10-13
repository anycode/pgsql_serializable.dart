// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_datetime.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] == null ? null : DateTime.parse(pgsql['value'] as String),
    DateTime.parse(pgsql['nullable'] as String),
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value?.toIso8601String(),
      'nullable': instance.nullable.toIso8601String(),
    };
