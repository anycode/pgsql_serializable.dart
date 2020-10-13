// GENERATED CODE - DO NOT MODIFY BY HAND

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
