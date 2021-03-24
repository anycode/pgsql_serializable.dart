// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_value.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromPgSql(Map<String, dynamic> pgsql) {
  return DefaultValue(
    pgsql['fieldBool'] as bool? ?? true,
    pgsql['fieldString'] as String? ?? 'string',
    pgsql['fieldInt'] as int? ?? 42,
    (pgsql['fieldDouble'] as num?)?.toDouble() ?? 3.14,
    pgsql['fieldListEmpty'] as List<dynamic>? ?? [],
    (pgsql['fieldSetEmpty'] as List<dynamic>?)?.toSet() ?? {},
    pgsql['fieldMapEmpty'] as Map<String, dynamic>? ?? {},
    (pgsql['fieldListSimple'] as List<dynamic>?)
            ?.map((e) => e as int)
            .toList() ??
        [1, 2, 3],
    (pgsql['fieldSetSimple'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toSet() ??
        {'entry1', 'entry2'},
    (pgsql['fieldMapSimple'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as int),
        ) ??
        {'answer': 42},
    (pgsql['fieldMapListString'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(
              k, (e as List<dynamic>).map((e) => e as String).toList()),
        ) ??
        {
          'root': ['child']
        },
    _$enumDecodeNullable(_$GreekEnumMap, pgsql['fieldEnum']) ?? Greek.beta,
  );
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
