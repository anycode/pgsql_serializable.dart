// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars

part of 'simple_object.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleObject _$SimpleObjectFromPgSql(Map pgsql) => SimpleObject(
      pgsql['value'] as int,
    );

Map<String, dynamic> _$SimpleObjectToPgSql(SimpleObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };
