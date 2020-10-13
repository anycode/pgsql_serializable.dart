// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_enumtype.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    _$enumDecodeNullable(_$EnumTypeEnumMap, pgsql['value']),
    _$enumDecode(_$EnumTypeEnumMap, pgsql['nullable']),
  )..withDefault =
      _$enumDecodeNullable(_$EnumTypeEnumMap, pgsql['withDefault']) ??
          EnumType.alpha;
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': _$EnumTypeEnumMap[instance.value],
      'nullable': _$EnumTypeEnumMap[instance.nullable],
      'withDefault': _$EnumTypeEnumMap[instance.withDefault],
    };

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

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};
