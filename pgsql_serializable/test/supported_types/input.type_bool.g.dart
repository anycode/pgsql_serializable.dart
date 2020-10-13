// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_bool.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] as bool,
    pgsql['nullable'] as bool,
  )..withDefault = pgsql['withDefault'] as bool ?? true;
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
