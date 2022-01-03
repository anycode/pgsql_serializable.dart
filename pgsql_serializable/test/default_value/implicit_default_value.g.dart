// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'implicit_default_value.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DefaultValueImplicit _$DefaultValueImplicitFromPgSql(
        Map<String, dynamic> pgsql) =>
    DefaultValueImplicit(
      fieldBool: pgsql['fieldBool'] as bool? ?? true,
      fieldString: pgsql['fieldString'] as String? ?? 'string',
      fieldInt: pgsql['fieldInt'] as int? ?? 42,
      fieldDouble: (pgsql['fieldDouble'] as num?)?.toDouble() ?? 3.14,
      fieldListEmpty: pgsql['fieldListEmpty'] as List<dynamic>? ?? const [],
      fieldSetEmpty:
          (pgsql['fieldSetEmpty'] as List<dynamic>?)?.toSet() ?? const {},
      fieldMapEmpty: pgsql['fieldMapEmpty'] as Map<String, dynamic>? ?? const {},
      fieldListSimple: (pgsql['fieldListSimple'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [1, 2, 3],
      fieldSetSimple: (pgsql['fieldSetSimple'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {'entry1', 'entry2'},
      fieldMapSimple: (pgsql['fieldMapSimple'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          ) ??
          const {'answer': 42},
      fieldMapListString:
          (pgsql['fieldMapListString'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(
                    k, (e as List<dynamic>).map((e) => e as String).toList()),
              ) ??
              const {
                'root': ['child']
              },
      fieldEnum:
          $enumDecodeNullable(_$GreekEnumMap, pgsql['fieldEnum']) ?? Greek.beta,
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
    );

Map<String, dynamic> _$DefaultValueImplicitToPgSql(
        DefaultValueImplicit instance) =>
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
