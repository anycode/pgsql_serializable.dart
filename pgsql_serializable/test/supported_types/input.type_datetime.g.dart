// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_datetime.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    DateTime.parse(pgsql['value'] as String),
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value.toIso8601String(),
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullable(
    pgsql['value'] == null ? null : DateTime.parse(pgsql['value'] as String),
  );
}

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toIso8601String(),
    };
