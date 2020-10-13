// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_double.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    (pgsql['value'] as num)?.toDouble(),
    (pgsql['nullable'] as num).toDouble(),
  )..withDefault = (pgsql['withDefault'] as num)?.toDouble() ?? 3.14;
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };
