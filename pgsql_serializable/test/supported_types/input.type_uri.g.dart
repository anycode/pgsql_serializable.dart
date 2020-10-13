// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_uri.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] == null ? null : Uri.parse(pgsql['value'] as String),
    Uri.parse(pgsql['nullable'] as String),
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value?.toString(),
      'nullable': instance.nullable.toString(),
    };
