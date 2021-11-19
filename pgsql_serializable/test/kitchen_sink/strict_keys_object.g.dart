// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars

part of 'strict_keys_object.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

StrictKeysObject _$StrictKeysObjectFromPgSql(Map pgsql) {
  $checkKeys(
    pgsql,
    allowedKeys: const ['value', 'custom_field'],
    requiredKeys: const ['value', 'custom_field'],
  );
  return StrictKeysObject(
    pgsql['value'] as int,
    pgsql['custom_field'] as String,
  );
}

Map<String, dynamic> _$StrictKeysObjectToPgSql(StrictKeysObject instance) =>
    <String, dynamic>{
      'value': instance.value,
      'custom_field': instance.customField,
    };
