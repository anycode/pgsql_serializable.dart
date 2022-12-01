// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'input.type_bigint.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) => SimpleClass(
      BigInt.parse(pgsql['value'] as String),
      pgsql['withDefault'] == null
          ? _defaultValueFunc()
          : BigInt.parse(pgsql['withDefault'] as String),
    );

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value.toString(),
      'withDefault': instance.withDefault.toString(),
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      pgsql['value'] == null ? null : BigInt.parse(pgsql['value'] as String),
      pgsql['withDefault'] == null
          ? _defaultValueFunc()
          : BigInt.parse(pgsql['withDefault'] as String),
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toString(),
      'withDefault': instance.withDefault?.toString(),
    };
