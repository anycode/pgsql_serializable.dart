// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Configuration _$ConfigurationFromPgSql(Map pgsql) =>
    $checkedCreate('Configuration', pgsql, ($checkedConvert) {
      $checkKeys(
        pgsql,
        allowedKeys: const ['name', 'count'],
        requiredKeys: const ['name'],
      );
      final val = Configuration(
        name: $checkedConvert('name', (v) => v as String),
        count: $checkedConvert('count', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ConfigurationToPgSql(Configuration instance) =>
    <String, dynamic>{'name': instance.name, 'count': instance.count};
