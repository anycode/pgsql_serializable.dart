// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars

part of 'input.type_enumtype.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) => SimpleClass(
      $enumDecode(_$EnumTypeEnumMap, pgsql['value']),
      $enumDecodeNullable(_$EnumTypeEnumMap, pgsql['withDefault']) ??
          EnumType.alpha,
    );

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': _$EnumTypeEnumMap[instance.value],
      'withDefault': _$EnumTypeEnumMap[instance.withDefault],
    };

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullable _$SimpleClassNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      $enumDecodeNullable(_$EnumTypeEnumMap, pgsql['value']),
      $enumDecodeNullable(_$EnumTypeEnumMap, pgsql['withDefault']) ??
          EnumType.alpha,
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': _$EnumTypeEnumMap[instance.value],
      'withDefault': _$EnumTypeEnumMap[instance.withDefault],
    };
