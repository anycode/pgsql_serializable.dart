// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_double.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    (pgsql['value'] as num).toDouble(),
    (pgsql['withDefault'] as num?)?.toDouble() ?? 3.14,
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullable(
    (pgsql['value'] as num?)?.toDouble(),
    (pgsql['withDefault'] as num?)?.toDouble() ?? 3.14,
  );
}

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };
