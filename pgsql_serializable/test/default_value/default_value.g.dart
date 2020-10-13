// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_value.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromPgSql(Map<String, dynamic> pgsql) {
  return DefaultValue()
    ..fieldBool = pgsql['fieldBool'] as bool ?? true
    ..fieldString = pgsql['fieldString'] as String ?? 'string'
    ..fieldInt = pgsql['fieldInt'] as int ?? 42
    ..fieldDouble = (pgsql['fieldDouble'] as num)?.toDouble() ?? 3.14
    ..fieldListEmpty = pgsql['fieldListEmpty'] as List ?? []
    ..fieldSetEmpty = (pgsql['fieldSetEmpty'] as List)?.toSet() ?? {}
    ..fieldMapEmpty = pgsql['fieldMapEmpty'] as Map<String, dynamic> ?? {}
    ..fieldListSimple =
        (pgsql['fieldListSimple'] as List)?.map((e) => e as int)?.toList() ??
            [1, 2, 3]
    ..fieldSetSimple =
        (pgsql['fieldSetSimple'] as List)?.map((e) => e as String)?.toSet() ??
            {'entry1', 'entry2'}
    ..fieldMapSimple = (pgsql['fieldMapSimple'] as Map<String, dynamic>)?.map(
          (k, e) => MapEntry(k, e as int),
        ) ??
        {'answer': 42}
    ..fieldMapListString =
        (pgsql['fieldMapListString'] as Map<String, dynamic>)?.map(
              (k, e) =>
                  MapEntry(k, (e as List)?.map((e) => e as String)?.toList()),
            ) ??
            {
              'root': ['child']
            }
    ..fieldEnum =
        _$enumDecodeNullable(_$GreekEnumMap, pgsql['fieldEnum']) ?? Greek.beta;
}

Map<String, dynamic> _$DefaultValueToPgSql(DefaultValue instance) {
  final val = <String, dynamic>{
    'fieldBool': instance.fieldBool,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldString', instance.fieldString);
  val['fieldInt'] = instance.fieldInt;
  val['fieldDouble'] = instance.fieldDouble;
  val['fieldListEmpty'] = instance.fieldListEmpty;
  val['fieldSetEmpty'] = instance.fieldSetEmpty?.toList();
  val['fieldMapEmpty'] = instance.fieldMapEmpty;
  val['fieldListSimple'] = instance.fieldListSimple;
  val['fieldSetSimple'] = instance.fieldSetSimple?.toList();
  val['fieldMapSimple'] = instance.fieldMapSimple;
  val['fieldMapListString'] = instance.fieldMapListString;
  val['fieldEnum'] = _$GreekEnumMap[instance.fieldEnum];
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
