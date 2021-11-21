// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'default_value.g_any_map__checked.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromPgSql(Map pgsql) => $checkedCreate(
      'DefaultValue',
      pgsql,
      ($checkedConvert) {
        final val = DefaultValue(
          $checkedConvert('fieldBool', (v) => v as bool? ?? true),
          $checkedConvert('fieldString', (v) => v as String? ?? 'string'),
          $checkedConvert('fieldInt', (v) => v as int? ?? 42),
          $checkedConvert(
              'fieldDouble', (v) => (v as num?)?.toDouble() ?? 3.14),
          $checkedConvert('fieldListEmpty', (v) => v as List<dynamic>? ?? []),
          $checkedConvert(
              'fieldSetEmpty', (v) => (v as List<dynamic>?)?.toSet() ?? {}),
          $checkedConvert('fieldMapEmpty', (v) => v as Map? ?? {}),
          $checkedConvert(
              'fieldListSimple',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as int).toList() ??
                  [1, 2, 3]),
          $checkedConvert(
              'fieldSetSimple',
              (v) =>
                  (v as List<dynamic>?)?.map((e) => e as String).toSet() ??
                  {'entry1', 'entry2'}),
          $checkedConvert(
              'fieldMapSimple',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e as int),
                  ) ??
                  {'answer': 42}),
          $checkedConvert(
              'fieldMapListString',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String,
                        (e as List<dynamic>).map((e) => e as String).toList()),
                  ) ??
                  {
                    'root': ['child']
                  }),
          $checkedConvert('fieldEnum',
              (v) => $enumDecodeNullable(_$GreekEnumMap, v) ?? Greek.beta),
          constClass: $checkedConvert(
              'constClass',
              (v) => v == null
                  ? const ConstClass('value')
                  : ConstClass.fromPgSql(Map<String, dynamic>.from(v as Map))),
          valueFromConverter: $checkedConvert(
              'valueFromConverter',
              (v) => v == null
                  ? const ConstClass('value')
                  : const ConstClassConverter().fromPgSql(v as String)),
          valueFromFunction: $checkedConvert(
              'valueFromFunction',
              (v) => v == null
                  ? const ConstClass('value')
                  : constClassFromPgSql(v as String)),
        );
        return val;
      },
    );

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
      'constClass': instance.constClass,
      'valueFromConverter':
          const ConstClassConverter().toPgSql(instance.valueFromConverter),
      'valueFromFunction': constClassToPgSql(instance.valueFromFunction),
    };

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
