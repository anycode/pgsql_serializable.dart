// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_num.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] as num,
    pgsql['nullable'] as num,
  )..withDefault = pgsql['withDefault'] as num ?? 88.6;
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
