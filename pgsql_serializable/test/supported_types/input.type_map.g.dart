// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_map.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  )..withDefault = pgsql['withDefault'] as Map<String, dynamic> ?? {'a': 1};
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
      'withDefault': instance.withDefault,
    };

SimpleClassBigIntToBigInt _$SimpleClassBigIntToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToBigIntToPgSql(
        SimpleClassBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassDateTimeToBigInt _$SimpleClassDateTimeToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToBigIntToPgSql(
        SimpleClassDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassDynamicToBigInt _$SimpleClassDynamicToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToBigIntToPgSql(
        SimpleClassDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
      'nullable': instance.nullable.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassEnumTypeToBigInt _$SimpleClassEnumTypeToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k),
          e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToBigIntToPgSql(
        SimpleClassEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
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

SimpleClassIntToBigInt _$SimpleClassIntToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(int.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToBigIntToPgSql(
        SimpleClassIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassObjectToBigInt _$SimpleClassObjectToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassObjectToBigIntToPgSql(
        SimpleClassObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
      'nullable': instance.nullable.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassStringToBigInt _$SimpleClassStringToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassStringToBigIntToPgSql(
        SimpleClassStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
      'nullable': instance.nullable.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassUriToBigInt _$SimpleClassUriToBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToBigInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToBigIntToPgSql(
        SimpleClassUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassBigIntToBool _$SimpleClassBigIntToBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as bool),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToBoolToPgSql(
        SimpleClassBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToBool _$SimpleClassDateTimeToBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as bool),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToBoolToPgSql(
        SimpleClassDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToBool _$SimpleClassDynamicToBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
    Map<String, bool>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToBoolToPgSql(
        SimpleClassDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToBool _$SimpleClassEnumTypeToBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k), e as bool),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToBoolToPgSql(
        SimpleClassEnumTypeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToBool _$SimpleClassIntToBoolFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassIntToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as bool),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToBoolToPgSql(
        SimpleClassIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToBool _$SimpleClassObjectToBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
    Map<String, bool>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassObjectToBoolToPgSql(
        SimpleClassObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToBool _$SimpleClassStringToBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    ),
    Map<String, bool>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassStringToBoolToPgSql(
        SimpleClassStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToBool _$SimpleClassUriToBoolFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassUriToBool(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as bool),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as bool),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToBoolToPgSql(
        SimpleClassUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToDateTime _$SimpleClassBigIntToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToDateTimeToPgSql(
        SimpleClassBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassDateTimeToDateTime _$SimpleClassDateTimeToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToDateTimeToPgSql(
        SimpleClassDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassDynamicToDateTime _$SimpleClassDynamicToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToDateTimeToPgSql(
        SimpleClassDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassEnumTypeToDateTime _$SimpleClassEnumTypeToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k),
          e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToDateTimeToPgSql(
        SimpleClassEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toIso8601String())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toIso8601String())),
    };

SimpleClassIntToDateTime _$SimpleClassIntToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          int.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToDateTimeToPgSql(
        SimpleClassIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassObjectToDateTime _$SimpleClassObjectToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassObjectToDateTimeToPgSql(
        SimpleClassObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassStringToDateTime _$SimpleClassStringToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassStringToDateTimeToPgSql(
        SimpleClassStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassUriToDateTime _$SimpleClassUriToDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToDateTime(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToDateTimeToPgSql(
        SimpleClassUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassBigIntToDouble _$SimpleClassBigIntToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), (e as num)?.toDouble()),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToDoubleToPgSql(
        SimpleClassBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToDouble _$SimpleClassDateTimeToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), (e as num)?.toDouble()),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToDoubleToPgSql(
        SimpleClassDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToDouble _$SimpleClassDynamicToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
    Map<String, double>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToDoubleToPgSql(
        SimpleClassDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToDouble _$SimpleClassEnumTypeToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          _$enumDecodeNullable(_$EnumTypeEnumMap, k), (e as num)?.toDouble()),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToDoubleToPgSql(
        SimpleClassEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToDouble _$SimpleClassIntToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), (e as num)?.toDouble()),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToDoubleToPgSql(
        SimpleClassIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToDouble _$SimpleClassObjectToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
    Map<String, double>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassObjectToDoubleToPgSql(
        SimpleClassObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToDouble _$SimpleClassStringToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as num)?.toDouble()),
    ),
    Map<String, double>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassStringToDoubleToPgSql(
        SimpleClassStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToDouble _$SimpleClassUriToDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToDouble(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), (e as num)?.toDouble()),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToDoubleToPgSql(
        SimpleClassUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToDuration _$SimpleClassBigIntToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          BigInt.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToDurationToPgSql(
        SimpleClassBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassDateTimeToDuration _$SimpleClassDateTimeToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k),
          e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToDurationToPgSql(
        SimpleClassDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassDynamicToDuration _$SimpleClassDynamicToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToDurationToPgSql(
        SimpleClassDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassEnumTypeToDuration _$SimpleClassEnumTypeToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k),
          e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          _$enumDecode(_$EnumTypeEnumMap, k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToDurationToPgSql(
        SimpleClassEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.inMicroseconds)),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.inMicroseconds)),
    };

SimpleClassIntToDuration _$SimpleClassIntToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          int.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToDurationToPgSql(
        SimpleClassIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassObjectToDuration _$SimpleClassObjectToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassObjectToDurationToPgSql(
        SimpleClassObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassStringToDuration _$SimpleClassStringToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(k, e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassStringToDurationToPgSql(
        SimpleClassStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassUriToDuration _$SimpleClassUriToDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToDuration(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          Uri.parse(k), e == null ? null : Duration(microseconds: e as int)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToDurationToPgSql(
        SimpleClassUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassBigIntToDynamic _$SimpleClassBigIntToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToDynamic(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToDynamicToPgSql(
        SimpleClassBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToDynamic _$SimpleClassDateTimeToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToDynamic(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToDynamicToPgSql(
        SimpleClassDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToDynamic _$SimpleClassDynamicToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToDynamic(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassDynamicToDynamicToPgSql(
        SimpleClassDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToDynamic _$SimpleClassEnumTypeToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToDynamic(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToDynamicToPgSql(
        SimpleClassEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToDynamic _$SimpleClassIntToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToDynamic(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToDynamicToPgSql(
        SimpleClassIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToDynamic _$SimpleClassObjectToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToDynamic(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassObjectToDynamicToPgSql(
        SimpleClassObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToDynamic _$SimpleClassStringToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToDynamic(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassStringToDynamicToPgSql(
        SimpleClassStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToDynamic _$SimpleClassUriToDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToDynamic(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToDynamicToPgSql(
        SimpleClassUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToEnumType _$SimpleClassBigIntToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(BigInt.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToEnumTypeToPgSql(
        SimpleClassBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassDateTimeToEnumType _$SimpleClassDateTimeToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToEnumTypeToPgSql(
        SimpleClassDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassDynamicToEnumType _$SimpleClassDynamicToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToEnumTypeToPgSql(
        SimpleClassDynamicToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassEnumTypeToEnumType _$SimpleClassEnumTypeToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k),
          _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k),
          _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToEnumTypeToPgSql(
        SimpleClassEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassIntToEnumType _$SimpleClassIntToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(int.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToEnumTypeToPgSql(
        SimpleClassIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassObjectToEnumType _$SimpleClassObjectToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassObjectToEnumTypeToPgSql(
        SimpleClassObjectToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassStringToEnumType _$SimpleClassStringToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassStringToEnumTypeToPgSql(
        SimpleClassStringToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassUriToEnumType _$SimpleClassUriToEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToEnumType(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(Uri.parse(k), _$enumDecodeNullable(_$EnumTypeEnumMap, e)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), _$enumDecode(_$EnumTypeEnumMap, e)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToEnumTypeToPgSql(
        SimpleClassUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassBigIntToInt _$SimpleClassBigIntToIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as int),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToIntToPgSql(
        SimpleClassBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToInt _$SimpleClassDateTimeToIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as int),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToIntToPgSql(
        SimpleClassDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToInt _$SimpleClassDynamicToIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    Map<String, int>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToIntToPgSql(
        SimpleClassDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToInt _$SimpleClassEnumTypeToIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k), e as int),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToIntToPgSql(
        SimpleClassEnumTypeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToInt _$SimpleClassIntToIntFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassIntToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as int),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToIntToPgSql(
        SimpleClassIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToInt _$SimpleClassObjectToIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    Map<String, int>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassObjectToIntToPgSql(
        SimpleClassObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToInt _$SimpleClassStringToIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    Map<String, int>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassStringToIntToPgSql(
        SimpleClassStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToInt _$SimpleClassUriToIntFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassUriToInt(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as int),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as int),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToIntToPgSql(
        SimpleClassUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToNum _$SimpleClassBigIntToNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as num),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToNumToPgSql(
        SimpleClassBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToNum _$SimpleClassDateTimeToNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as num),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToNumToPgSql(
        SimpleClassDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToNum _$SimpleClassDynamicToNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
    Map<String, num>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToNumToPgSql(
        SimpleClassDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToNum _$SimpleClassEnumTypeToNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k), e as num),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToNumToPgSql(
        SimpleClassEnumTypeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToNum _$SimpleClassIntToNumFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassIntToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as num),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToNumToPgSql(
        SimpleClassIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToNum _$SimpleClassObjectToNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
    Map<String, num>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassObjectToNumToPgSql(
        SimpleClassObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToNum _$SimpleClassStringToNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as num),
    ),
    Map<String, num>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassStringToNumToPgSql(
        SimpleClassStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToNum _$SimpleClassUriToNumFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassUriToNum(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as num),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as num),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToNumToPgSql(
        SimpleClassUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToObject _$SimpleClassBigIntToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToObject(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToObjectToPgSql(
        SimpleClassBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToObject _$SimpleClassDateTimeToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToObject(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToObjectToPgSql(
        SimpleClassDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToObject _$SimpleClassDynamicToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToObject(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassDynamicToObjectToPgSql(
        SimpleClassDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToObject _$SimpleClassEnumTypeToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToObject(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToObjectToPgSql(
        SimpleClassEnumTypeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToObject _$SimpleClassIntToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToObject(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToObjectToPgSql(
        SimpleClassIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToObject _$SimpleClassObjectToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToObject(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassObjectToObjectToPgSql(
        SimpleClassObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToObject _$SimpleClassStringToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToObject(
    pgsql['value'] as Map<String, dynamic>,
    pgsql['nullable'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassStringToObjectToPgSql(
        SimpleClassStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToObject _$SimpleClassUriToObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToObject(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToObjectToPgSql(
        SimpleClassUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToString _$SimpleClassBigIntToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(BigInt.parse(k), e as String),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToStringToPgSql(
        SimpleClassBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassDateTimeToString _$SimpleClassDateTimeToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(DateTime.parse(k), e as String),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToStringToPgSql(
        SimpleClassDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassDynamicToString _$SimpleClassDynamicToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    Map<String, String>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToStringToPgSql(
        SimpleClassDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassEnumTypeToString _$SimpleClassEnumTypeToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k), e as String),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToStringToPgSql(
        SimpleClassEnumTypeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassIntToString _$SimpleClassIntToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassIntToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as String),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToStringToPgSql(
        SimpleClassIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassObjectToString _$SimpleClassObjectToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    Map<String, String>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassObjectToStringToPgSql(
        SimpleClassObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassStringToString _$SimpleClassStringToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
    Map<String, String>.from(pgsql['nullable'] as Map),
  );
}

Map<String, dynamic> _$SimpleClassStringToStringToPgSql(
        SimpleClassStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
      'nullable': instance.nullable,
    };

SimpleClassUriToString _$SimpleClassUriToStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassUriToString(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(Uri.parse(k), e as String),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as String),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToStringToPgSql(
        SimpleClassUriToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
      'nullable': instance.nullable.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassBigIntToUri _$SimpleClassBigIntToUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassBigIntToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToUriToPgSql(
        SimpleClassBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassDateTimeToUri _$SimpleClassDateTimeToUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDateTimeToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToUriToPgSql(
        SimpleClassDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassDynamicToUri _$SimpleClassDynamicToUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassDynamicToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToUriToPgSql(
        SimpleClassDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
      'nullable': instance.nullable.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassEnumTypeToUri _$SimpleClassEnumTypeToUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassEnumTypeToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$EnumTypeEnumMap, k),
          e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(_$enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToUriToPgSql(
        SimpleClassEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
      'nullable': instance.nullable
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassIntToUri _$SimpleClassIntToUriFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassIntToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(int.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassIntToUriToPgSql(
        SimpleClassIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassObjectToUri _$SimpleClassObjectToUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassObjectToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassObjectToUriToPgSql(
        SimpleClassObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
      'nullable': instance.nullable.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassStringToUri _$SimpleClassStringToUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassStringToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassStringToUriToPgSql(
        SimpleClassStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
      'nullable': instance.nullable.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassUriToUri _$SimpleClassUriToUriFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassUriToUri(
    (pgsql['value'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(Uri.parse(k), e == null ? null : Uri.parse(e as String)),
    ),
    (pgsql['nullable'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
    ),
  );
}

Map<String, dynamic> _$SimpleClassUriToUriToPgSql(
        SimpleClassUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
      'nullable':
          instance.nullable.map((k, e) => MapEntry(k.toString(), e.toString())),
    };
