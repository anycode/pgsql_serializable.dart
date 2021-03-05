// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'input.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'],
    pgsql['withDefault'] ?? 42,
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };
