// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_bigint.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    BigInt.parse(pgsql['value'] as String),
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value.toString(),
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullable(
    pgsql['value'] == null ? null : BigInt.parse(pgsql['value'] as String),
  );
}

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toString(),
    };
