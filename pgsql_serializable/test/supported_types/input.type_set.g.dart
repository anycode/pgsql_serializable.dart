// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_set.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    (pgsql['value'] as List)?.toSet(),
    (pgsql['nullable'] as List).toSet(),
  )..withDefault =
      (pgsql['withDefault'] as List)?.toSet() ?? {42, true, false, null};
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
      'withDefault': instance.withDefault?.toList(),
    };

SimpleClassBigInt _$SimpleClassBigIntFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassBigInt(
    (pgsql['value'] as List)
        ?.map((e) => e == null ? null : BigInt.parse(e as String))
        ?.toSet(),
    (pgsql['nullable'] as List).map((e) => BigInt.parse(e as String)).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassBigIntToPgSql(SimpleClassBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString())?.toList(),
      'nullable': instance.nullable.map((e) => e.toString()).toList(),
    };

SimpleClassBool _$SimpleClassBoolFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassBool(
    (pgsql['value'] as List)?.map((e) => e as bool)?.toSet(),
    (pgsql['nullable'] as List).map((e) => e as bool).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassBoolToPgSql(SimpleClassBool instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassDateTime _$SimpleClassDateTimeFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassDateTime(
    (pgsql['value'] as List)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        ?.toSet(),
    (pgsql['nullable'] as List).map((e) => DateTime.parse(e as String)).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassDateTimeToPgSql(
        SimpleClassDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toIso8601String())?.toList(),
      'nullable': instance.nullable.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassDouble _$SimpleClassDoubleFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassDouble(
    (pgsql['value'] as List)?.map((e) => (e as num)?.toDouble())?.toSet(),
    (pgsql['nullable'] as List).map((e) => (e as num).toDouble()).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassDoubleToPgSql(SimpleClassDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassDuration _$SimpleClassDurationFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassDuration(
    (pgsql['value'] as List)
        ?.map((e) => e == null ? null : Duration(microseconds: e as int))
        ?.toSet(),
    (pgsql['nullable'] as List)
        .map((e) => Duration(microseconds: e as int))
        .toSet(),
  );
}

Map<String, dynamic> _$SimpleClassDurationToPgSql(
        SimpleClassDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.inMicroseconds)?.toList(),
      'nullable': instance.nullable.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassDynamic _$SimpleClassDynamicFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassDynamic(
    (pgsql['value'] as List)?.toSet(),
    (pgsql['nullable'] as List).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassDynamicToPgSql(SimpleClassDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassEnumType _$SimpleClassEnumTypeFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassEnumType(
    (pgsql['value'] as List)
        ?.map((e) => _$enumDecodeNullable(_$EnumTypeEnumMap, e))
        ?.toSet(),
    (pgsql['nullable'] as List)
        .map((e) => _$enumDecode(_$EnumTypeEnumMap, e))
        .toSet(),
  );
}

Map<String, dynamic> _$SimpleClassEnumTypeToPgSql(
        SimpleClassEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e])?.toList(),
      'nullable': instance.nullable.map((e) => _$EnumTypeEnumMap[e]).toList(),
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

SimpleClassInt _$SimpleClassIntFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassInt(
    (pgsql['value'] as List)?.map((e) => e as int)?.toSet(),
    (pgsql['nullable'] as List).map((e) => e as int).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassIntToPgSql(SimpleClassInt instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassNum _$SimpleClassNumFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNum(
    (pgsql['value'] as List)?.map((e) => e as num)?.toSet(),
    (pgsql['nullable'] as List).map((e) => e as num).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassNumToPgSql(SimpleClassNum instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassObject _$SimpleClassObjectFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassObject(
    (pgsql['value'] as List)?.toSet(),
    (pgsql['nullable'] as List).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassObjectToPgSql(SimpleClassObject instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassString _$SimpleClassStringFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassString(
    (pgsql['value'] as List)?.map((e) => e as String)?.toSet(),
    (pgsql['nullable'] as List).map((e) => e as String).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassStringToPgSql(SimpleClassString instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'nullable': instance.nullable.toList(),
    };

SimpleClassUri _$SimpleClassUriFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassUri(
    (pgsql['value'] as List)
        ?.map((e) => e == null ? null : Uri.parse(e as String))
        ?.toSet(),
    (pgsql['nullable'] as List).map((e) => Uri.parse(e as String)).toSet(),
  );
}

Map<String, dynamic> _$SimpleClassUriToPgSql(SimpleClassUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString())?.toList(),
      'nullable': instance.nullable.map((e) => e.toString()).toList(),
    };