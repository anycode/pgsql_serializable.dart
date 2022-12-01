// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'default_value.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DefaultValue _$DefaultValueFromPgSql(Map<String, dynamic> pgsql) => DefaultValue(
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
      $enumDecodeNullable(_$GreekEnumMap, pgsql['fieldEnum']) ?? Greek.beta,
      durationField: pgsql['durationField'] == null
          ? Duration.zero
          : Duration(microseconds: pgsql['durationField'] as int),
      constClass: pgsql['constClass'] == null
          ? const ConstClass('value')
          : ConstClass.fromPgSql(pgsql['constClass'] as Map<String, dynamic>),
      valueFromConverter: pgsql['valueFromConverter'] == null
          ? const ConstClass('value')
          : const ConstClassConverter()
              .fromPgSql(pgsql['valueFromConverter'] as String),
      valueFromFunction: pgsql['valueFromFunction'] == null
          ? const ConstClass('value')
          : constClassFromPgSql(pgsql['valueFromFunction'] as String),
      intDefaultValueFromFunction:
          pgsql['intDefaultValueFromFunction'] as int? ??
              intDefaultValueFunction(),
      valueFromDefaultValueDefaultConstructor:
          pgsql['valueFromDefaultValueDefaultConstructor'] == null
              ? const ConstClass()
              : ConstClass.fromPgSql(
                  pgsql['valueFromDefaultValueDefaultConstructor']
                      as Map<String, dynamic>),
      valueFromDefaultValueNamedConstructor:
          pgsql['valueFromDefaultValueNamedConstructor'] == null
              ? ConstClass.easy()
              : ConstClass.fromPgSql(
                  pgsql['valueFromDefaultValueNamedConstructor']
                      as Map<String, dynamic>),
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
      'durationField': instance.durationField.inMicroseconds,
      'fieldEnum': _$GreekEnumMap[instance.fieldEnum]!,
      'constClass': instance.constClass,
      'valueFromConverter':
          const ConstClassConverter().toPgSql(instance.valueFromConverter),
      'valueFromFunction': constClassToPgSql(instance.valueFromFunction),
      'intDefaultValueFromFunction': instance.intDefaultValueFromFunction,
      'valueFromDefaultValueDefaultConstructor':
          instance.valueFromDefaultValueDefaultConstructor,
      'valueFromDefaultValueNamedConstructor':
          instance.valueFromDefaultValueNamedConstructor,
    };

const _$GreekEnumMap = {
  Greek.alpha: 'alpha',
  Greek.beta: 'beta',
  Greek.gamma: 'gamma',
  Greek.delta: 'delta',
};
