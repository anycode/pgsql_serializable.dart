// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_value.g_any_map__checked.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromPgSql(Map pgsql) {
  return $checkedNew('DefaultValue', pgsql, () {
    final val = DefaultValue(
      $checkedConvert(pgsql, 'fieldBool', (v) => v as bool?) ?? true,
      $checkedConvert(pgsql, 'fieldString', (v) => v as String?) ?? 'string',
      $checkedConvert(pgsql, 'fieldInt', (v) => v as int?) ?? 42,
      $checkedConvert(pgsql, 'fieldDouble', (v) => (v as num?)?.toDouble()) ??
          3.14,
      $checkedConvert(pgsql, 'fieldListEmpty', (v) => v as List<dynamic>?) ?? [],
      $checkedConvert(
              pgsql, 'fieldSetEmpty', (v) => (v as List<dynamic>?)?.toSet()) ??
          {},
      $checkedConvert(pgsql, 'fieldMapEmpty', (v) => v as Map?) ?? {},
      $checkedConvert(pgsql, 'fieldListSimple',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()) ??
          [1, 2, 3],
      $checkedConvert(pgsql, 'fieldSetSimple',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toSet()) ??
          {'entry1', 'entry2'},
      $checkedConvert(
              pgsql,
              'fieldMapSimple',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e as int),
                  )) ??
          {'answer': 42},
      $checkedConvert(
              pgsql,
              'fieldMapListString',
              (v) => (v as Map?)?.map(
                    (k, e) => MapEntry(k as String,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  )) ??
          {
            'root': ['child']
          },
      $checkedConvert(pgsql, 'fieldEnum',
              (v) => _$enumDecodeNullable(_$GreekEnumMap, v)) ??
          Greek.beta,
    );
    return val;
  });
}

Map<String, dynamic> _$DefaultValueToPgSql(DefaultValue instance) =>
    <String, dynamic>{
      'fieldBool': instance.fieldBool,
      'fieldString': instance.fieldString,
      'fieldInt': instance.fieldInt,
      'fieldDouble': instance.fieldDouble,
      'fieldListEmpty': instance.fieldListEmpty,
      'fieldSetEmpty': instance.fieldSetEmpty.toList(),
      'fieldMapEmpty': instance.fieldMapEmpty,
      'fieldListSimple': instance.fieldListSimple,
      'fieldSetSimple': instance.fieldSetSimple.toList(),
      'fieldMapSimple': instance.fieldMapSimple,
      'fieldMapListString': instance.fieldMapListString,
      'fieldEnum': _$GreekEnumMap[instance.fieldEnum],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
