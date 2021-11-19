// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars

part of 'input.type_duration.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) => SimpleClass(
      Duration(microseconds: pgsql['value'] as int),
    );

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value.inMicroseconds,
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      pgsql['value'] == null
          ? null
          : Duration(microseconds: pgsql['value'] as int),
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.inMicroseconds,
    };
