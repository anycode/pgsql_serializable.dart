// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input.type_list.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClass(
    pgsql['value'] as List<dynamic>,
    pgsql['withDefault'] as List<dynamic>? ?? [42, true, false, null],
  );
}

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullable(
    pgsql['value'] as List<dynamic>?,
    pgsql['withDefault'] as List<dynamic>? ?? [42, true, false, null],
  );
}

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassOfBigInt _$SimpleClassOfBigIntFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfBigInt(
    (pgsql['value'] as List<dynamic>)
        .map((e) => BigInt.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntToPgSql(
        SimpleClassOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toString()).toList(),
    };

SimpleClassNullableOfBigInt _$SimpleClassNullableOfBigIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfBigInt(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => BigInt.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntToPgSql(
        SimpleClassNullableOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toString()).toList(),
    };

SimpleClassOfBigIntNullable _$SimpleClassOfBigIntNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfBigIntNullable(
    (pgsql['value'] as List<dynamic>)
        .map((e) => e == null ? null : BigInt.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfBigIntNullableToPgSql(
        SimpleClassOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toString()).toList(),
    };

SimpleClassNullableOfBigIntNullable
    _$SimpleClassNullableOfBigIntNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfBigIntNullable(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => e == null ? null : BigInt.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBigIntNullableToPgSql(
        SimpleClassNullableOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString()).toList(),
    };

SimpleClassOfBool _$SimpleClassOfBoolFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfBool(
    (pgsql['value'] as List<dynamic>).map((e) => e as bool).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfBoolToPgSql(SimpleClassOfBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfBool _$SimpleClassNullableOfBoolFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfBool(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as bool).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBoolToPgSql(
        SimpleClassNullableOfBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfBoolNullable _$SimpleClassOfBoolNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfBoolNullable(
    (pgsql['value'] as List<dynamic>).map((e) => e as bool?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfBoolNullableToPgSql(
        SimpleClassOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfBoolNullable _$SimpleClassNullableOfBoolNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfBoolNullable(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as bool?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfBoolNullableToPgSql(
        SimpleClassNullableOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfDateTime _$SimpleClassOfDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfDateTime(
    (pgsql['value'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeToPgSql(
        SimpleClassOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassNullableOfDateTime _$SimpleClassNullableOfDateTimeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDateTime(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => DateTime.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToPgSql(
        SimpleClassNullableOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassOfDateTimeNullable _$SimpleClassOfDateTimeNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfDateTimeNullable(
    (pgsql['value'] as List<dynamic>)
        .map((e) => e == null ? null : DateTime.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfDateTimeNullableToPgSql(
        SimpleClassOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toIso8601String()).toList(),
    };

SimpleClassNullableOfDateTimeNullable
    _$SimpleClassNullableOfDateTimeNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDateTimeNullable(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDateTimeNullableToPgSql(
        SimpleClassNullableOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toIso8601String()).toList(),
    };

SimpleClassOfDouble _$SimpleClassOfDoubleFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfDouble(
    (pgsql['value'] as List<dynamic>).map((e) => (e as num).toDouble()).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfDoubleToPgSql(
        SimpleClassOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDouble _$SimpleClassNullableOfDoubleFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDouble(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDoubleToPgSql(
        SimpleClassNullableOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfDoubleNullable _$SimpleClassOfDoubleNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfDoubleNullable(
    (pgsql['value'] as List<dynamic>)
        .map((e) => (e as num?)?.toDouble())
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfDoubleNullableToPgSql(
        SimpleClassOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDoubleNullable
    _$SimpleClassNullableOfDoubleNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDoubleNullable(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => (e as num?)?.toDouble())
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDoubleNullableToPgSql(
        SimpleClassNullableOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfDuration _$SimpleClassOfDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfDuration(
    (pgsql['value'] as List<dynamic>)
        .map((e) => Duration(microseconds: e as int))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfDurationToPgSql(
        SimpleClassOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassNullableOfDuration _$SimpleClassNullableOfDurationFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDuration(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => Duration(microseconds: e as int))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDurationToPgSql(
        SimpleClassNullableOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassOfDurationNullable _$SimpleClassOfDurationNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfDurationNullable(
    (pgsql['value'] as List<dynamic>)
        .map((e) => e == null ? null : Duration(microseconds: e as int))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfDurationNullableToPgSql(
        SimpleClassOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.inMicroseconds).toList(),
    };

SimpleClassNullableOfDurationNullable
    _$SimpleClassNullableOfDurationNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDurationNullable(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => e == null ? null : Duration(microseconds: e as int))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDurationNullableToPgSql(
        SimpleClassNullableOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.inMicroseconds).toList(),
    };

SimpleClassOfDynamic _$SimpleClassOfDynamicFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfDynamic(
    pgsql['value'] as List<dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfDynamicToPgSql(
        SimpleClassOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamic _$SimpleClassNullableOfDynamicFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfDynamic(
    pgsql['value'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfDynamicToPgSql(
        SimpleClassNullableOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumType _$SimpleClassOfEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfEnumType(
    (pgsql['value'] as List<dynamic>)
        .map((e) => _$enumDecode(_$EnumTypeEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeToPgSql(
        SimpleClassOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => _$EnumTypeEnumMap[e]).toList(),
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

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullableOfEnumType _$SimpleClassNullableOfEnumTypeFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfEnumType(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$EnumTypeEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToPgSql(
        SimpleClassNullableOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

SimpleClassOfEnumTypeNullable _$SimpleClassOfEnumTypeNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfEnumTypeNullable(
    (pgsql['value'] as List<dynamic>)
        .map((e) => _$enumDecodeNullable(_$EnumTypeEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfEnumTypeNullableToPgSql(
        SimpleClassOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

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

SimpleClassNullableOfEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfEnumTypeNullable(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => _$enumDecodeNullable(_$EnumTypeEnumMap, e))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeNullableToPgSql(
        SimpleClassNullableOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

SimpleClassOfInt _$SimpleClassOfIntFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfInt(
    (pgsql['value'] as List<dynamic>).map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfIntToPgSql(SimpleClassOfInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfInt _$SimpleClassNullableOfIntFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfInt(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as int).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntToPgSql(
        SimpleClassNullableOfInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfIntNullable _$SimpleClassOfIntNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfIntNullable(
    (pgsql['value'] as List<dynamic>).map((e) => e as int?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfIntNullableToPgSql(
        SimpleClassOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfIntNullable _$SimpleClassNullableOfIntNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfIntNullable(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as int?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfIntNullableToPgSql(
        SimpleClassNullableOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfNum _$SimpleClassOfNumFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfNum(
    (pgsql['value'] as List<dynamic>).map((e) => e as num).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfNumToPgSql(SimpleClassOfNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfNum _$SimpleClassNullableOfNumFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfNum(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as num).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfNumToPgSql(
        SimpleClassNullableOfNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfNumNullable _$SimpleClassOfNumNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfNumNullable(
    (pgsql['value'] as List<dynamic>).map((e) => e as num?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfNumNullableToPgSql(
        SimpleClassOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfNumNullable _$SimpleClassNullableOfNumNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfNumNullable(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as num?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfNumNullableToPgSql(
        SimpleClassNullableOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfObject _$SimpleClassOfObjectFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfObject(
    (pgsql['value'] as List<dynamic>).map((e) => e as Object).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfObjectToPgSql(
        SimpleClassOfObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObject _$SimpleClassNullableOfObjectFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfObject(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as Object).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectToPgSql(
        SimpleClassNullableOfObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfObjectNullable _$SimpleClassOfObjectNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfObjectNullable(
    pgsql['value'] as List<dynamic>,
  );
}

Map<String, dynamic> _$SimpleClassOfObjectNullableToPgSql(
        SimpleClassOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectNullable
    _$SimpleClassNullableOfObjectNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfObjectNullable(
    pgsql['value'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$SimpleClassNullableOfObjectNullableToPgSql(
        SimpleClassNullableOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfString _$SimpleClassOfStringFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfString(
    (pgsql['value'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfStringToPgSql(
        SimpleClassOfString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfString _$SimpleClassNullableOfStringFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfString(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringToPgSql(
        SimpleClassNullableOfString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringNullable _$SimpleClassOfStringNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfStringNullable(
    (pgsql['value'] as List<dynamic>).map((e) => e as String?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfStringNullableToPgSql(
        SimpleClassOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringNullable
    _$SimpleClassNullableOfStringNullableFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfStringNullable(
    (pgsql['value'] as List<dynamic>?)?.map((e) => e as String?).toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfStringNullableToPgSql(
        SimpleClassNullableOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUri _$SimpleClassOfUriFromPgSql(Map<String, dynamic> pgsql) {
  return SimpleClassOfUri(
    (pgsql['value'] as List<dynamic>)
        .map((e) => Uri.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfUriToPgSql(SimpleClassOfUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toString()).toList(),
    };

SimpleClassNullableOfUri _$SimpleClassNullableOfUriFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfUri(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => Uri.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriToPgSql(
        SimpleClassNullableOfUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toString()).toList(),
    };

SimpleClassOfUriNullable _$SimpleClassOfUriNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassOfUriNullable(
    (pgsql['value'] as List<dynamic>)
        .map((e) => e == null ? null : Uri.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassOfUriNullableToPgSql(
        SimpleClassOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toString()).toList(),
    };

SimpleClassNullableOfUriNullable _$SimpleClassNullableOfUriNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return SimpleClassNullableOfUriNullable(
    (pgsql['value'] as List<dynamic>?)
        ?.map((e) => e == null ? null : Uri.parse(e as String))
        .toList(),
  );
}

Map<String, dynamic> _$SimpleClassNullableOfUriNullableToPgSql(
        SimpleClassNullableOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString()).toList(),
    };
