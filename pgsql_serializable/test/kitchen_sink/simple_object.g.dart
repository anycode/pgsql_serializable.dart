// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'simple_object.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleObject _$SimpleObjectFromPgSql(Map pgsql) {
  return SimpleObject(
    pgsql['value'] as int,
  );
}

Map<String, dynamic> _$SimpleObjectToPgSql(SimpleObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
