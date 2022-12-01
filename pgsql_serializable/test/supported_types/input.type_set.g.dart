// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'input.type_set.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) => SimpleClass(
      (pgsql['value'] as List<dynamic>).toSet(),
      (pgsql['withDefault'] as List<dynamic>?)?.toSet() ??
          {42, true, false, null},
    );

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
      'withDefault': instance.withDefault.toList(),
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      (pgsql['value'] as List<dynamic>?)?.toSet(),
      (pgsql['withDefault'] as List<dynamic>?)?.toSet() ??
          {42, true, false, null},
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
      'withDefault': instance.withDefault?.toList(),
    };

SimpleClassOfBigInt _$SimpleClassOfBigIntFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfBigInt(
      (pgsql['value'] as List<dynamic>)
          .map((e) => BigInt.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToPgSql(
        SimpleClassOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toString()).toList(),
    };

SimpleClassNullableOfBigInt _$SimpleClassNullableOfBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBigInt(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => BigInt.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToPgSql(
        SimpleClassNullableOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toString()).toList(),
    };

SimpleClassOfBigIntNullable _$SimpleClassOfBigIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntNullable(
      (pgsql['value'] as List<dynamic>)
          .map((e) => e == null ? null : BigInt.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfBigIntNullableToPgSql(
        SimpleClassOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toString()).toList(),
    };

SimpleClassNullableOfBigIntNullable
    _$SimpleClassNullableOfBigIntNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntNullable(
          (pgsql['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : BigInt.parse(e as String))
              .toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntNullableToPgSql(
        SimpleClassNullableOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString()).toList(),
    };

SimpleClassOfBool _$SimpleClassOfBoolFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfBool(
      (pgsql['value'] as List<dynamic>).map((e) => e as bool).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfBoolToPgSql(SimpleClassOfBool instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfBool _$SimpleClassNullableOfBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBool(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as bool).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfBoolToPgSql(
        SimpleClassNullableOfBool instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfBoolNullable _$SimpleClassOfBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBoolNullable(
      (pgsql['value'] as List<dynamic>).map((e) => e as bool?).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfBoolNullableToPgSql(
        SimpleClassOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfBoolNullable _$SimpleClassNullableOfBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBoolNullable(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as bool?).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfBoolNullableToPgSql(
        SimpleClassNullableOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfDateTime _$SimpleClassOfDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTime(
      (pgsql['value'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToPgSql(
        SimpleClassOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassNullableOfDateTime _$SimpleClassNullableOfDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDateTime(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToPgSql(
        SimpleClassNullableOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toIso8601String()).toList(),
    };

SimpleClassOfDateTimeNullable _$SimpleClassOfDateTimeNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeNullable(
      (pgsql['value'] as List<dynamic>)
          .map((e) => e == null ? null : DateTime.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeNullableToPgSql(
        SimpleClassOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toIso8601String()).toList(),
    };

SimpleClassNullableOfDateTimeNullable
    _$SimpleClassNullableOfDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeNullable(
          (pgsql['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : DateTime.parse(e as String))
              .toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeNullableToPgSql(
        SimpleClassNullableOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toIso8601String()).toList(),
    };

SimpleClassOfDouble _$SimpleClassOfDoubleFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfDouble(
      (pgsql['value'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDoubleToPgSql(
        SimpleClassOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfDouble _$SimpleClassNullableOfDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDouble(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDoubleToPgSql(
        SimpleClassNullableOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfDoubleNullable _$SimpleClassOfDoubleNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDoubleNullable(
      (pgsql['value'] as List<dynamic>)
          .map((e) => (e as num?)?.toDouble())
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDoubleNullableToPgSql(
        SimpleClassOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfDoubleNullable
    _$SimpleClassNullableOfDoubleNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDoubleNullable(
          (pgsql['value'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toDouble())
              .toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfDoubleNullableToPgSql(
        SimpleClassNullableOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfDuration _$SimpleClassOfDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDuration(
      (pgsql['value'] as List<dynamic>)
          .map((e) => Duration(microseconds: e as int))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDurationToPgSql(
        SimpleClassOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassNullableOfDuration _$SimpleClassNullableOfDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDuration(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => Duration(microseconds: e as int))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDurationToPgSql(
        SimpleClassNullableOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.inMicroseconds).toList(),
    };

SimpleClassOfDurationNullable _$SimpleClassOfDurationNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDurationNullable(
      (pgsql['value'] as List<dynamic>)
          .map((e) => e == null ? null : Duration(microseconds: e as int))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDurationNullableToPgSql(
        SimpleClassOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.inMicroseconds).toList(),
    };

SimpleClassNullableOfDurationNullable
    _$SimpleClassNullableOfDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDurationNullable(
          (pgsql['value'] as List<dynamic>?)
              ?.map((e) => e == null ? null : Duration(microseconds: e as int))
              .toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfDurationNullableToPgSql(
        SimpleClassNullableOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.inMicroseconds).toList(),
    };

SimpleClassOfDynamic _$SimpleClassOfDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamic(
      (pgsql['value'] as List<dynamic>).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToPgSql(
        SimpleClassOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfDynamic _$SimpleClassNullableOfDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDynamic(
      (pgsql['value'] as List<dynamic>?)?.toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToPgSql(
        SimpleClassNullableOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfEnumType _$SimpleClassOfEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumType(
      (pgsql['value'] as List<dynamic>)
          .map((e) => $enumDecode(_$EnumTypeEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToPgSql(
        SimpleClassOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => _$EnumTypeEnumMap[e]!).toList(),
    };

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullableOfEnumType _$SimpleClassNullableOfEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfEnumType(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EnumTypeEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToPgSql(
        SimpleClassNullableOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e]!).toList(),
    };

SimpleClassOfEnumTypeNullable _$SimpleClassOfEnumTypeNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeNullable(
      (pgsql['value'] as List<dynamic>)
          .map((e) => $enumDecodeNullable(_$EnumTypeEnumMap, e))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeNullableToPgSql(
        SimpleClassOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

SimpleClassNullableOfEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeNullable(
          (pgsql['value'] as List<dynamic>?)
              ?.map((e) => $enumDecodeNullable(_$EnumTypeEnumMap, e))
              .toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeNullableToPgSql(
        SimpleClassNullableOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => _$EnumTypeEnumMap[e]).toList(),
    };

SimpleClassOfInt _$SimpleClassOfIntFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfInt(
      (pgsql['value'] as List<dynamic>).map((e) => e as int).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfIntToPgSql(SimpleClassOfInt instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfInt _$SimpleClassNullableOfIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfInt(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as int).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToPgSql(
        SimpleClassNullableOfInt instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfIntNullable _$SimpleClassOfIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntNullable(
      (pgsql['value'] as List<dynamic>).map((e) => e as int?).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfIntNullableToPgSql(
        SimpleClassOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfIntNullable _$SimpleClassNullableOfIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntNullable(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as int?).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntNullableToPgSql(
        SimpleClassNullableOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfNum _$SimpleClassOfNumFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfNum(
      (pgsql['value'] as List<dynamic>).map((e) => e as num).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfNumToPgSql(SimpleClassOfNum instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfNum _$SimpleClassNullableOfNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfNum(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as num).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfNumToPgSql(
        SimpleClassNullableOfNum instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfNumNullable _$SimpleClassOfNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfNumNullable(
      (pgsql['value'] as List<dynamic>).map((e) => e as num?).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfNumNullableToPgSql(
        SimpleClassOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfNumNullable _$SimpleClassNullableOfNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfNumNullable(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as num?).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfNumNullableToPgSql(
        SimpleClassNullableOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfObject _$SimpleClassOfObjectFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfObject(
      (pgsql['value'] as List<dynamic>).map((e) => e as Object).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfObjectToPgSql(
        SimpleClassOfObject instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfObject _$SimpleClassNullableOfObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfObject(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as Object).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToPgSql(
        SimpleClassNullableOfObject instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfObjectNullable _$SimpleClassOfObjectNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectNullable(
      (pgsql['value'] as List<dynamic>).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfObjectNullableToPgSql(
        SimpleClassOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfObjectNullable
    _$SimpleClassNullableOfObjectNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectNullable(
          (pgsql['value'] as List<dynamic>?)?.toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectNullableToPgSql(
        SimpleClassNullableOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfString _$SimpleClassOfStringFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfString(
      (pgsql['value'] as List<dynamic>).map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfStringToPgSql(
        SimpleClassOfString instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfString _$SimpleClassNullableOfStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfString(
      (pgsql['value'] as List<dynamic>?)?.map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToPgSql(
        SimpleClassNullableOfString instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfStringNullable _$SimpleClassOfStringNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringNullable(
      (pgsql['value'] as List<dynamic>).map((e) => e as String?).toSet(),
    );

Map<String, dynamic> _$SimpleClassOfStringNullableToPgSql(
        SimpleClassOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toList(),
    };

SimpleClassNullableOfStringNullable
    _$SimpleClassNullableOfStringNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringNullable(
          (pgsql['value'] as List<dynamic>?)?.map((e) => e as String?).toSet(),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringNullableToPgSql(
        SimpleClassNullableOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.toList(),
    };

SimpleClassOfUri _$SimpleClassOfUriFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfUri(
      (pgsql['value'] as List<dynamic>)
          .map((e) => Uri.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfUriToPgSql(SimpleClassOfUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e.toString()).toList(),
    };

SimpleClassNullableOfUri _$SimpleClassNullableOfUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUri(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => Uri.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToPgSql(
        SimpleClassNullableOfUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e.toString()).toList(),
    };

SimpleClassOfUriNullable _$SimpleClassOfUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriNullable(
      (pgsql['value'] as List<dynamic>)
          .map((e) => e == null ? null : Uri.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassOfUriNullableToPgSql(
        SimpleClassOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((e) => e?.toString()).toList(),
    };

SimpleClassNullableOfUriNullable _$SimpleClassNullableOfUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriNullable(
      (pgsql['value'] as List<dynamic>?)
          ?.map((e) => e == null ? null : Uri.parse(e as String))
          .toSet(),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriNullableToPgSql(
        SimpleClassNullableOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((e) => e?.toString()).toList(),
    };
