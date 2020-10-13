// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_int.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] as int,
    pgsql['nullable'] as int,
  )..withDefault = pgsql['withDefault'] as int ?? 42;
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
