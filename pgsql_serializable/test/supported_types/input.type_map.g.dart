// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'input.type_map.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) => SimpleClass(
      pgsql['value'] as Map<String, dynamic>,
      pgsql['withDefault'] as Map<String, dynamic>? ?? {'a': 1},
    );

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      pgsql['value'] as Map<String, dynamic>?,
      pgsql['withDefault'] as Map<String, dynamic>? ?? {'a': 1},
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
      'withDefault': instance.withDefault,
    };

SimpleClassOfBigIntToBigInt _$SimpleClassOfBigIntToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToBigIntToPgSql(
        SimpleClassOfBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfBigIntToBigInt
    _$SimpleClassNullableOfBigIntToBigIntFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToBigInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBigIntToPgSql(
        SimpleClassNullableOfBigIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfDateTimeToBigInt _$SimpleClassOfDateTimeToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToBigIntToPgSql(
        SimpleClassOfDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassNullableOfDateTimeToBigInt
    _$SimpleClassNullableOfDateTimeToBigIntFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToBigInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBigIntToPgSql(
        SimpleClassNullableOfDateTimeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassOfDynamicToBigInt _$SimpleClassOfDynamicToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToBigIntToPgSql(
        SimpleClassOfDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfDynamicToBigInt
    _$SimpleClassNullableOfDynamicToBigIntFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToBigInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBigIntToPgSql(
        SimpleClassNullableOfDynamicToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfEnumTypeToBigInt _$SimpleClassOfEnumTypeToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBigIntToPgSql(
        SimpleClassOfEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

const _$EnumTypeEnumMap = {
  EnumType.alpha: 'alpha',
  EnumType.beta: 'beta',
  EnumType.gamma: 'gamma',
  EnumType.delta: 'delta',
};

SimpleClassNullableOfEnumTypeToBigInt
    _$SimpleClassNullableOfEnumTypeToBigIntFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToBigInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBigIntToPgSql(
        SimpleClassNullableOfEnumTypeToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassOfIntToBigInt _$SimpleClassOfIntToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBigIntToPgSql(
        SimpleClassOfIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfIntToBigInt _$SimpleClassNullableOfIntToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToBigInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToBigIntToPgSql(
        SimpleClassNullableOfIntToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfObjectToBigInt _$SimpleClassOfObjectToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToBigIntToPgSql(
        SimpleClassOfObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfObjectToBigInt
    _$SimpleClassNullableOfObjectToBigIntFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToBigInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBigIntToPgSql(
        SimpleClassNullableOfObjectToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfStringToBigInt _$SimpleClassOfStringToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToBigIntToPgSql(
        SimpleClassOfStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfStringToBigInt
    _$SimpleClassNullableOfStringToBigIntFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToBigInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBigIntToPgSql(
        SimpleClassNullableOfStringToBigInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfUriToBigInt _$SimpleClassOfUriToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToBigInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBigIntToPgSql(
        SimpleClassOfUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfUriToBigInt _$SimpleClassNullableOfUriToBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToBigInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToBigIntToPgSql(
        SimpleClassNullableOfUriToBigInt instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfBigIntToBigIntNullable
    _$SimpleClassOfBigIntToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToBigIntNullableToPgSql(
        SimpleClassOfBigIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfBigIntToBigIntNullable
    _$SimpleClassNullableOfBigIntToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBigIntNullableToPgSql(
        SimpleClassNullableOfBigIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfDateTimeToBigIntNullable
    _$SimpleClassOfDateTimeToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToBigIntNullableToPgSql(
        SimpleClassOfDateTimeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassNullableOfDateTimeToBigIntNullable
    _$SimpleClassNullableOfDateTimeToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBigIntNullableToPgSql(
        SimpleClassNullableOfDateTimeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassOfDynamicToBigIntNullable
    _$SimpleClassOfDynamicToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToBigIntNullableToPgSql(
        SimpleClassOfDynamicToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfDynamicToBigIntNullable
    _$SimpleClassNullableOfDynamicToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBigIntNullableToPgSql(
        SimpleClassNullableOfDynamicToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfEnumTypeToBigIntNullable
    _$SimpleClassOfEnumTypeToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBigIntNullableToPgSql(
        SimpleClassOfEnumTypeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassNullableOfEnumTypeToBigIntNullable
    _$SimpleClassNullableOfEnumTypeToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBigIntNullableToPgSql(
        SimpleClassNullableOfEnumTypeToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassOfIntToBigIntNullable _$SimpleClassOfIntToBigIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToBigIntNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            int.parse(k), e == null ? null : BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBigIntNullableToPgSql(
        SimpleClassOfIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfIntToBigIntNullable
    _$SimpleClassNullableOfIntToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToBigIntNullableToPgSql(
        SimpleClassNullableOfIntToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfObjectToBigIntNullable
    _$SimpleClassOfObjectToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToBigIntNullableToPgSql(
        SimpleClassOfObjectToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfObjectToBigIntNullable
    _$SimpleClassNullableOfObjectToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBigIntNullableToPgSql(
        SimpleClassNullableOfObjectToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfStringToBigIntNullable
    _$SimpleClassOfStringToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToBigIntNullableToPgSql(
        SimpleClassOfStringToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfStringToBigIntNullable
    _$SimpleClassNullableOfStringToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBigIntNullableToPgSql(
        SimpleClassNullableOfStringToBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfUriToBigIntNullable _$SimpleClassOfUriToBigIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToBigIntNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBigIntNullableToPgSql(
        SimpleClassOfUriToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfUriToBigIntNullable
    _$SimpleClassNullableOfUriToBigIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToBigIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : BigInt.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToBigIntNullableToPgSql(
        SimpleClassNullableOfUriToBigIntNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfBigIntToBool _$SimpleClassOfBigIntToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToBool(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToBoolToPgSql(
        SimpleClassOfBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToBool _$SimpleClassNullableOfBigIntToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBigIntToBool(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(BigInt.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBoolToPgSql(
        SimpleClassNullableOfBigIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToBool _$SimpleClassOfDateTimeToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToBool(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToBoolToPgSql(
        SimpleClassOfDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToBool
    _$SimpleClassNullableOfDateTimeToBoolFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToBool(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBoolToPgSql(
        SimpleClassNullableOfDateTimeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToBool _$SimpleClassOfDynamicToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToBool(
      Map<String, bool>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToBoolToPgSql(
        SimpleClassOfDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToBool
    _$SimpleClassNullableOfDynamicToBoolFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToBool(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBoolToPgSql(
        SimpleClassNullableOfDynamicToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToBool _$SimpleClassOfEnumTypeToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToBool(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBoolToPgSql(
        SimpleClassOfEnumTypeToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToBool
    _$SimpleClassNullableOfEnumTypeToBoolFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToBool(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBoolToPgSql(
        SimpleClassNullableOfEnumTypeToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToBool _$SimpleClassOfIntToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToBool(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBoolToPgSql(
        SimpleClassOfIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToBool _$SimpleClassNullableOfIntToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToBool(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToBoolToPgSql(
        SimpleClassNullableOfIntToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToBool _$SimpleClassOfObjectToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToBool(
      Map<String, bool>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToBoolToPgSql(
        SimpleClassOfObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToBool _$SimpleClassNullableOfObjectToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfObjectToBool(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBoolToPgSql(
        SimpleClassNullableOfObjectToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToBool _$SimpleClassOfStringToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToBool(
      Map<String, bool>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToBoolToPgSql(
        SimpleClassOfStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToBool _$SimpleClassNullableOfStringToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfStringToBool(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToBoolToPgSql(
        SimpleClassNullableOfStringToBool instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToBool _$SimpleClassOfUriToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToBool(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBoolToPgSql(
        SimpleClassOfUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToBool _$SimpleClassNullableOfUriToBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToBool(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as bool),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToBoolToPgSql(
        SimpleClassNullableOfUriToBool instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToBoolNullable _$SimpleClassOfBigIntToBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToBoolNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as bool?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToBoolNullableToPgSql(
        SimpleClassOfBigIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToBoolNullable
    _$SimpleClassNullableOfBigIntToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToBoolNullableToPgSql(
        SimpleClassNullableOfBigIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToBoolNullable
    _$SimpleClassOfDateTimeToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToBoolNullableToPgSql(
        SimpleClassOfDateTimeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToBoolNullable
    _$SimpleClassNullableOfDateTimeToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToBoolNullableToPgSql(
        SimpleClassNullableOfDateTimeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToBoolNullable
    _$SimpleClassOfDynamicToBoolNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToBoolNullable(
          Map<String, bool?>.from(pgsql['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToBoolNullableToPgSql(
        SimpleClassOfDynamicToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToBoolNullable
    _$SimpleClassNullableOfDynamicToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToBoolNullableToPgSql(
        SimpleClassNullableOfDynamicToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToBoolNullable
    _$SimpleClassOfEnumTypeToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToBoolNullableToPgSql(
        SimpleClassOfEnumTypeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToBoolNullable
    _$SimpleClassNullableOfEnumTypeToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToBoolNullableToPgSql(
        SimpleClassNullableOfEnumTypeToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToBoolNullable _$SimpleClassOfIntToBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToBoolNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as bool?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToBoolNullableToPgSql(
        SimpleClassOfIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToBoolNullable
    _$SimpleClassNullableOfIntToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToBoolNullableToPgSql(
        SimpleClassNullableOfIntToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToBoolNullable _$SimpleClassOfObjectToBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToBoolNullable(
      Map<String, bool?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToBoolNullableToPgSql(
        SimpleClassOfObjectToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToBoolNullable
    _$SimpleClassNullableOfObjectToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToBoolNullableToPgSql(
        SimpleClassNullableOfObjectToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToBoolNullable _$SimpleClassOfStringToBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToBoolNullable(
      Map<String, bool?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToBoolNullableToPgSql(
        SimpleClassOfStringToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToBoolNullable
    _$SimpleClassNullableOfStringToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToBoolNullableToPgSql(
        SimpleClassNullableOfStringToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToBoolNullable _$SimpleClassOfUriToBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToBoolNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as bool?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToBoolNullableToPgSql(
        SimpleClassOfUriToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToBoolNullable
    _$SimpleClassNullableOfUriToBoolNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToBoolNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as bool?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToBoolNullableToPgSql(
        SimpleClassNullableOfUriToBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDateTime _$SimpleClassOfBigIntToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDateTimeToPgSql(
        SimpleClassOfBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfBigIntToDateTime
    _$SimpleClassNullableOfBigIntToDateTimeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDateTimeToPgSql(
        SimpleClassNullableOfBigIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfDateTimeToDateTime _$SimpleClassOfDateTimeToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDateTimeToPgSql(
        SimpleClassOfDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassNullableOfDateTimeToDateTime
    _$SimpleClassNullableOfDateTimeToDateTimeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDateTimeToPgSql(
        SimpleClassNullableOfDateTimeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toIso8601String())),
    };

SimpleClassOfDynamicToDateTime _$SimpleClassOfDynamicToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDateTimeToPgSql(
        SimpleClassOfDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfDynamicToDateTime
    _$SimpleClassNullableOfDynamicToDateTimeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDateTimeToPgSql(
        SimpleClassNullableOfDynamicToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfEnumTypeToDateTime _$SimpleClassOfEnumTypeToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            $enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDateTimeToPgSql(
        SimpleClassOfEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toIso8601String())),
    };

SimpleClassNullableOfEnumTypeToDateTime
    _$SimpleClassNullableOfEnumTypeToDateTimeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDateTimeToPgSql(
        SimpleClassNullableOfEnumTypeToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toIso8601String())),
    };

SimpleClassOfIntToDateTime _$SimpleClassOfIntToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDateTimeToPgSql(
        SimpleClassOfIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfIntToDateTime
    _$SimpleClassNullableOfIntToDateTimeFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDateTimeToPgSql(
        SimpleClassNullableOfIntToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfObjectToDateTime _$SimpleClassOfObjectToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDateTimeToPgSql(
        SimpleClassOfObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfObjectToDateTime
    _$SimpleClassNullableOfObjectToDateTimeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDateTimeToPgSql(
        SimpleClassNullableOfObjectToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfStringToDateTime _$SimpleClassOfStringToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToDateTimeToPgSql(
        SimpleClassOfStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassNullableOfStringToDateTime
    _$SimpleClassNullableOfStringToDateTimeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDateTimeToPgSql(
        SimpleClassNullableOfStringToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toIso8601String())),
    };

SimpleClassOfUriToDateTime _$SimpleClassOfUriToDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToDateTime(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDateTimeToPgSql(
        SimpleClassOfUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassNullableOfUriToDateTime
    _$SimpleClassNullableOfUriToDateTimeFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToDateTime(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDateTimeToPgSql(
        SimpleClassNullableOfUriToDateTime instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.toIso8601String())),
    };

SimpleClassOfBigIntToDateTimeNullable
    _$SimpleClassOfBigIntToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToDateTimeNullableToPgSql(
        SimpleClassOfBigIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfBigIntToDateTimeNullable
    _$SimpleClassNullableOfBigIntToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDateTimeNullableToPgSql(
        SimpleClassNullableOfBigIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfDateTimeToDateTimeNullable
    _$SimpleClassOfDateTimeToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToDateTimeNullableToPgSql(
        SimpleClassOfDateTimeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
    };

SimpleClassNullableOfDateTimeToDateTimeNullable
    _$SimpleClassNullableOfDateTimeToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDateTimeNullableToPgSql(
        SimpleClassNullableOfDateTimeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toIso8601String())),
    };

SimpleClassOfDynamicToDateTimeNullable
    _$SimpleClassOfDynamicToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToDateTimeNullableToPgSql(
        SimpleClassOfDynamicToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfDynamicToDateTimeNullable
    _$SimpleClassNullableOfDynamicToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDateTimeNullableToPgSql(
        SimpleClassNullableOfDynamicToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassOfEnumTypeToDateTimeNullable
    _$SimpleClassOfEnumTypeToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDateTimeNullableToPgSql(
        SimpleClassOfEnumTypeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toIso8601String())),
    };

SimpleClassNullableOfEnumTypeToDateTimeNullable
    _$SimpleClassNullableOfEnumTypeToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDateTimeNullableToPgSql(
        SimpleClassNullableOfEnumTypeToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toIso8601String())),
    };

SimpleClassOfIntToDateTimeNullable
    _$SimpleClassOfIntToDateTimeNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfIntToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToDateTimeNullableToPgSql(
        SimpleClassOfIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfIntToDateTimeNullable
    _$SimpleClassNullableOfIntToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDateTimeNullableToPgSql(
        SimpleClassNullableOfIntToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfObjectToDateTimeNullable
    _$SimpleClassOfObjectToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToDateTimeNullableToPgSql(
        SimpleClassOfObjectToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfObjectToDateTimeNullable
    _$SimpleClassNullableOfObjectToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDateTimeNullableToPgSql(
        SimpleClassNullableOfObjectToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassOfStringToDateTimeNullable
    _$SimpleClassOfStringToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToDateTimeNullableToPgSql(
        SimpleClassOfStringToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassNullableOfStringToDateTimeNullable
    _$SimpleClassNullableOfStringToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDateTimeNullableToPgSql(
        SimpleClassNullableOfStringToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toIso8601String())),
    };

SimpleClassOfUriToDateTimeNullable
    _$SimpleClassOfUriToDateTimeNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfUriToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToDateTimeNullableToPgSql(
        SimpleClassOfUriToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassNullableOfUriToDateTimeNullable
    _$SimpleClassNullableOfUriToDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToDateTimeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : DateTime.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDateTimeNullableToPgSql(
        SimpleClassNullableOfUriToDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.toIso8601String())),
    };

SimpleClassOfBigIntToDouble _$SimpleClassOfBigIntToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDoubleToPgSql(
        SimpleClassOfBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDouble
    _$SimpleClassNullableOfBigIntToDoubleFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDouble(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDoubleToPgSql(
        SimpleClassNullableOfBigIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDouble _$SimpleClassOfDateTimeToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDoubleToPgSql(
        SimpleClassOfDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDouble
    _$SimpleClassNullableOfDateTimeToDoubleFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDouble(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDoubleToPgSql(
        SimpleClassNullableOfDateTimeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDouble _$SimpleClassOfDynamicToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDoubleToPgSql(
        SimpleClassOfDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDouble
    _$SimpleClassNullableOfDynamicToDoubleFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDouble(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDoubleToPgSql(
        SimpleClassNullableOfDynamicToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDouble _$SimpleClassOfEnumTypeToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDoubleToPgSql(
        SimpleClassOfEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToDouble
    _$SimpleClassNullableOfEnumTypeToDoubleFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDouble(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDoubleToPgSql(
        SimpleClassNullableOfEnumTypeToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToDouble _$SimpleClassOfIntToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDoubleToPgSql(
        SimpleClassOfIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDouble _$SimpleClassNullableOfIntToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToDouble(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToDoubleToPgSql(
        SimpleClassNullableOfIntToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDouble _$SimpleClassOfObjectToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDoubleToPgSql(
        SimpleClassOfObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDouble
    _$SimpleClassNullableOfObjectToDoubleFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDouble(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDoubleToPgSql(
        SimpleClassNullableOfObjectToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDouble _$SimpleClassOfStringToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToDoubleToPgSql(
        SimpleClassOfStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDouble
    _$SimpleClassNullableOfStringToDoubleFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDouble(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDoubleToPgSql(
        SimpleClassNullableOfStringToDouble instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDouble _$SimpleClassOfUriToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToDouble(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDoubleToPgSql(
        SimpleClassOfUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDouble _$SimpleClassNullableOfUriToDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToDouble(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), (e as num).toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToDoubleToPgSql(
        SimpleClassNullableOfUriToDouble instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDoubleNullable
    _$SimpleClassOfBigIntToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToDoubleNullableToPgSql(
        SimpleClassOfBigIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDoubleNullable
    _$SimpleClassNullableOfBigIntToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDoubleNullableToPgSql(
        SimpleClassNullableOfBigIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDoubleNullable
    _$SimpleClassOfDateTimeToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToDoubleNullableToPgSql(
        SimpleClassOfDateTimeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDoubleNullable
    _$SimpleClassNullableOfDateTimeToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDoubleNullableToPgSql(
        SimpleClassNullableOfDateTimeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDoubleNullable
    _$SimpleClassOfDynamicToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToDoubleNullableToPgSql(
        SimpleClassOfDynamicToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDoubleNullable
    _$SimpleClassNullableOfDynamicToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDoubleNullableToPgSql(
        SimpleClassNullableOfDynamicToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDoubleNullable
    _$SimpleClassOfEnumTypeToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDoubleNullableToPgSql(
        SimpleClassOfEnumTypeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToDoubleNullable
    _$SimpleClassNullableOfEnumTypeToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDoubleNullableToPgSql(
        SimpleClassNullableOfEnumTypeToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToDoubleNullable _$SimpleClassOfIntToDoubleNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToDoubleNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDoubleNullableToPgSql(
        SimpleClassOfIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDoubleNullable
    _$SimpleClassNullableOfIntToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDoubleNullableToPgSql(
        SimpleClassNullableOfIntToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDoubleNullable
    _$SimpleClassOfObjectToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToDoubleNullableToPgSql(
        SimpleClassOfObjectToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDoubleNullable
    _$SimpleClassNullableOfObjectToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDoubleNullableToPgSql(
        SimpleClassNullableOfObjectToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDoubleNullable
    _$SimpleClassOfStringToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToDoubleNullableToPgSql(
        SimpleClassOfStringToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDoubleNullable
    _$SimpleClassNullableOfStringToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDoubleNullableToPgSql(
        SimpleClassNullableOfStringToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDoubleNullable _$SimpleClassOfUriToDoubleNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToDoubleNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), (e as num?)?.toDouble()),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDoubleNullableToPgSql(
        SimpleClassOfUriToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDoubleNullable
    _$SimpleClassNullableOfUriToDoubleNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToDoubleNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), (e as num?)?.toDouble()),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDoubleNullableToPgSql(
        SimpleClassNullableOfUriToDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToDuration _$SimpleClassOfBigIntToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDurationToPgSql(
        SimpleClassOfBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfBigIntToDuration
    _$SimpleClassNullableOfBigIntToDurationFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(BigInt.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDurationToPgSql(
        SimpleClassNullableOfBigIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfDateTimeToDuration _$SimpleClassOfDateTimeToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDurationToPgSql(
        SimpleClassOfDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassNullableOfDateTimeToDuration
    _$SimpleClassNullableOfDateTimeToDurationFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(DateTime.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDurationToPgSql(
        SimpleClassNullableOfDateTimeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.inMicroseconds)),
    };

SimpleClassOfDynamicToDuration _$SimpleClassOfDynamicToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDurationToPgSql(
        SimpleClassOfDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfDynamicToDuration
    _$SimpleClassNullableOfDynamicToDurationFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDurationToPgSql(
        SimpleClassNullableOfDynamicToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfEnumTypeToDuration _$SimpleClassOfEnumTypeToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
            Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDurationToPgSql(
        SimpleClassOfEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.inMicroseconds)),
    };

SimpleClassNullableOfEnumTypeToDuration
    _$SimpleClassNullableOfEnumTypeToDurationFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDurationToPgSql(
        SimpleClassNullableOfEnumTypeToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.inMicroseconds)),
    };

SimpleClassOfIntToDuration _$SimpleClassOfIntToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDurationToPgSql(
        SimpleClassOfIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfIntToDuration
    _$SimpleClassNullableOfIntToDurationFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDurationToPgSql(
        SimpleClassNullableOfIntToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfObjectToDuration _$SimpleClassOfObjectToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToDurationToPgSql(
        SimpleClassOfObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfObjectToDuration
    _$SimpleClassNullableOfObjectToDurationFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDurationToPgSql(
        SimpleClassNullableOfObjectToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfStringToDuration _$SimpleClassOfStringToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToDurationToPgSql(
        SimpleClassOfStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassNullableOfStringToDuration
    _$SimpleClassNullableOfStringToDurationFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDurationToPgSql(
        SimpleClassNullableOfStringToDuration instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.inMicroseconds)),
    };

SimpleClassOfUriToDuration _$SimpleClassOfUriToDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToDuration(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDurationToPgSql(
        SimpleClassOfUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassNullableOfUriToDuration
    _$SimpleClassNullableOfUriToDurationFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToDuration(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDurationToPgSql(
        SimpleClassNullableOfUriToDuration instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e.inMicroseconds)),
    };

SimpleClassOfBigIntToDurationNullable
    _$SimpleClassOfBigIntToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToDurationNullableToPgSql(
        SimpleClassOfBigIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfBigIntToDurationNullable
    _$SimpleClassNullableOfBigIntToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDurationNullableToPgSql(
        SimpleClassNullableOfBigIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfDateTimeToDurationNullable
    _$SimpleClassOfDateTimeToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToDurationNullableToPgSql(
        SimpleClassOfDateTimeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
    };

SimpleClassNullableOfDateTimeToDurationNullable
    _$SimpleClassNullableOfDateTimeToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDurationNullableToPgSql(
        SimpleClassNullableOfDateTimeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.inMicroseconds)),
    };

SimpleClassOfDynamicToDurationNullable
    _$SimpleClassOfDynamicToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToDurationNullableToPgSql(
        SimpleClassOfDynamicToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfDynamicToDurationNullable
    _$SimpleClassNullableOfDynamicToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDurationNullableToPgSql(
        SimpleClassNullableOfDynamicToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassOfEnumTypeToDurationNullable
    _$SimpleClassOfEnumTypeToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDurationNullableToPgSql(
        SimpleClassOfEnumTypeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.inMicroseconds)),
    };

SimpleClassNullableOfEnumTypeToDurationNullable
    _$SimpleClassNullableOfEnumTypeToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDurationNullableToPgSql(
        SimpleClassNullableOfEnumTypeToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.inMicroseconds)),
    };

SimpleClassOfIntToDurationNullable
    _$SimpleClassOfIntToDurationNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfIntToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(int.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToDurationNullableToPgSql(
        SimpleClassOfIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfIntToDurationNullable
    _$SimpleClassNullableOfIntToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToDurationNullableToPgSql(
        SimpleClassNullableOfIntToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfObjectToDurationNullable
    _$SimpleClassOfObjectToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToDurationNullableToPgSql(
        SimpleClassOfObjectToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfObjectToDurationNullable
    _$SimpleClassNullableOfObjectToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDurationNullableToPgSql(
        SimpleClassNullableOfObjectToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassOfStringToDurationNullable
    _$SimpleClassOfStringToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToDurationNullableToPgSql(
        SimpleClassOfStringToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassNullableOfStringToDurationNullable
    _$SimpleClassNullableOfStringToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDurationNullableToPgSql(
        SimpleClassNullableOfStringToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.inMicroseconds)),
    };

SimpleClassOfUriToDurationNullable
    _$SimpleClassOfUriToDurationNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfUriToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(Uri.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToDurationNullableToPgSql(
        SimpleClassOfUriToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassNullableOfUriToDurationNullable
    _$SimpleClassNullableOfUriToDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToDurationNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k),
                e == null ? null : Duration(microseconds: e as int)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToDurationNullableToPgSql(
        SimpleClassNullableOfUriToDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), e?.inMicroseconds)),
    };

SimpleClassOfBigIntToDynamic _$SimpleClassOfBigIntToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToDynamic(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToDynamicToPgSql(
        SimpleClassOfBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToDynamic
    _$SimpleClassNullableOfBigIntToDynamicFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToDynamic(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToDynamicToPgSql(
        SimpleClassNullableOfBigIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToDynamic _$SimpleClassOfDateTimeToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToDynamic(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToDynamicToPgSql(
        SimpleClassOfDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToDynamic
    _$SimpleClassNullableOfDateTimeToDynamicFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToDynamic(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToDynamicToPgSql(
        SimpleClassNullableOfDateTimeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToDynamic _$SimpleClassOfDynamicToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToDynamic(
      pgsql['value'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfDynamicToDynamicToPgSql(
        SimpleClassOfDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToDynamic
    _$SimpleClassNullableOfDynamicToDynamicFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToDynamic(
          pgsql['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToDynamicToPgSql(
        SimpleClassNullableOfDynamicToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToDynamic _$SimpleClassOfEnumTypeToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToDynamic(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToDynamicToPgSql(
        SimpleClassOfEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToDynamic
    _$SimpleClassNullableOfEnumTypeToDynamicFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToDynamic(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToDynamicToPgSql(
        SimpleClassNullableOfEnumTypeToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToDynamic _$SimpleClassOfIntToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToDynamic(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToDynamicToPgSql(
        SimpleClassOfIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToDynamic _$SimpleClassNullableOfIntToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToDynamic(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToDynamicToPgSql(
        SimpleClassNullableOfIntToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToDynamic _$SimpleClassOfObjectToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToDynamic(
      pgsql['value'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfObjectToDynamicToPgSql(
        SimpleClassOfObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToDynamic
    _$SimpleClassNullableOfObjectToDynamicFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToDynamic(
          pgsql['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToDynamicToPgSql(
        SimpleClassNullableOfObjectToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToDynamic _$SimpleClassOfStringToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToDynamic(
      pgsql['value'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SimpleClassOfStringToDynamicToPgSql(
        SimpleClassOfStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToDynamic
    _$SimpleClassNullableOfStringToDynamicFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToDynamic(
          pgsql['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToDynamicToPgSql(
        SimpleClassNullableOfStringToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToDynamic _$SimpleClassOfUriToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToDynamic(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToDynamicToPgSql(
        SimpleClassOfUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToDynamic _$SimpleClassNullableOfUriToDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToDynamic(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToDynamicToPgSql(
        SimpleClassNullableOfUriToDynamic instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToEnumType _$SimpleClassOfBigIntToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToEnumTypeToPgSql(
        SimpleClassOfBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfBigIntToEnumType
    _$SimpleClassNullableOfBigIntToEnumTypeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(BigInt.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToEnumTypeToPgSql(
        SimpleClassNullableOfBigIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDateTimeToEnumType _$SimpleClassOfDateTimeToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(DateTime.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToEnumTypeToPgSql(
        SimpleClassOfDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDateTimeToEnumType
    _$SimpleClassNullableOfDateTimeToEnumTypeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(DateTime.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToEnumTypeToPgSql(
        SimpleClassNullableOfDateTimeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDynamicToEnumType _$SimpleClassOfDynamicToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToEnumTypeToPgSql(
        SimpleClassOfDynamicToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDynamicToEnumType
    _$SimpleClassNullableOfDynamicToEnumTypeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToEnumTypeToPgSql(
        SimpleClassNullableOfDynamicToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfEnumTypeToEnumType _$SimpleClassOfEnumTypeToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
            $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToEnumTypeToPgSql(
        SimpleClassOfEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfEnumTypeToEnumType
    _$SimpleClassNullableOfEnumTypeToEnumTypeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToEnumTypeToPgSql(
        SimpleClassNullableOfEnumTypeToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassOfIntToEnumType _$SimpleClassOfIntToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToEnumTypeToPgSql(
        SimpleClassOfIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfIntToEnumType
    _$SimpleClassNullableOfIntToEnumTypeFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToEnumTypeToPgSql(
        SimpleClassNullableOfIntToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfObjectToEnumType _$SimpleClassOfObjectToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToEnumTypeToPgSql(
        SimpleClassOfObjectToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfObjectToEnumType
    _$SimpleClassNullableOfObjectToEnumTypeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToEnumTypeToPgSql(
        SimpleClassNullableOfObjectToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfStringToEnumType _$SimpleClassOfStringToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToEnumTypeToPgSql(
        SimpleClassOfStringToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfStringToEnumType
    _$SimpleClassNullableOfStringToEnumTypeFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToEnumTypeToPgSql(
        SimpleClassNullableOfStringToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfUriToEnumType _$SimpleClassOfUriToEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToEnumType(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToEnumTypeToPgSql(
        SimpleClassOfUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfUriToEnumType
    _$SimpleClassNullableOfUriToEnumTypeFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToEnumType(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), $enumDecode(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToEnumTypeToPgSql(
        SimpleClassNullableOfUriToEnumType instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfBigIntToEnumTypeNullable
    _$SimpleClassOfBigIntToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                BigInt.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToEnumTypeNullableToPgSql(
        SimpleClassOfBigIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfBigIntToEnumTypeNullable
    _$SimpleClassNullableOfBigIntToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                BigInt.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToEnumTypeNullableToPgSql(
        SimpleClassNullableOfBigIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDateTimeToEnumTypeNullable
    _$SimpleClassOfDateTimeToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                DateTime.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToEnumTypeNullableToPgSql(
        SimpleClassOfDateTimeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDateTimeToEnumTypeNullable
    _$SimpleClassNullableOfDateTimeToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToEnumTypeNullableToPgSql(
        SimpleClassNullableOfDateTimeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfDynamicToEnumTypeNullable
    _$SimpleClassOfDynamicToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToEnumTypeNullableToPgSql(
        SimpleClassOfDynamicToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfDynamicToEnumTypeNullable
    _$SimpleClassNullableOfDynamicToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToEnumTypeNullableToPgSql(
        SimpleClassNullableOfDynamicToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfEnumTypeToEnumTypeNullable
    _$SimpleClassOfEnumTypeToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToEnumTypeNullableToPgSql(
        SimpleClassOfEnumTypeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfEnumTypeToEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToEnumTypeNullableToPgSql(
        SimpleClassNullableOfEnumTypeToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], _$EnumTypeEnumMap[e])),
    };

SimpleClassOfIntToEnumTypeNullable
    _$SimpleClassOfIntToEnumTypeNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfIntToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                int.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfIntToEnumTypeNullableToPgSql(
        SimpleClassOfIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfIntToEnumTypeNullable
    _$SimpleClassNullableOfIntToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToEnumTypeNullableToPgSql(
        SimpleClassNullableOfIntToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfObjectToEnumTypeNullable
    _$SimpleClassOfObjectToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfObjectToEnumTypeNullableToPgSql(
        SimpleClassOfObjectToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfObjectToEnumTypeNullable
    _$SimpleClassNullableOfObjectToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToEnumTypeNullableToPgSql(
        SimpleClassNullableOfObjectToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfStringToEnumTypeNullable
    _$SimpleClassOfStringToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfStringToEnumTypeNullableToPgSql(
        SimpleClassOfStringToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfStringToEnumTypeNullable
    _$SimpleClassNullableOfStringToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToEnumTypeNullableToPgSql(
        SimpleClassNullableOfStringToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, _$EnumTypeEnumMap[e])),
    };

SimpleClassOfUriToEnumTypeNullable
    _$SimpleClassOfUriToEnumTypeNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfUriToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                Uri.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfUriToEnumTypeNullableToPgSql(
        SimpleClassOfUriToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassNullableOfUriToEnumTypeNullable
    _$SimpleClassNullableOfUriToEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToEnumTypeNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), $enumDecodeNullable(_$EnumTypeEnumMap, e)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToEnumTypeNullableToPgSql(
        SimpleClassNullableOfUriToEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toString(), _$EnumTypeEnumMap[e])),
    };

SimpleClassOfBigIntToInt _$SimpleClassOfBigIntToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToIntToPgSql(
        SimpleClassOfBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToInt _$SimpleClassNullableOfBigIntToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBigIntToInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(BigInt.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToIntToPgSql(
        SimpleClassNullableOfBigIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToInt _$SimpleClassOfDateTimeToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToIntToPgSql(
        SimpleClassOfDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToInt
    _$SimpleClassNullableOfDateTimeToIntFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToIntToPgSql(
        SimpleClassNullableOfDateTimeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToInt _$SimpleClassOfDynamicToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToInt(
      Map<String, int>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToIntToPgSql(
        SimpleClassOfDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToInt _$SimpleClassNullableOfDynamicToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDynamicToInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToIntToPgSql(
        SimpleClassNullableOfDynamicToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToInt _$SimpleClassOfEnumTypeToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToIntToPgSql(
        SimpleClassOfEnumTypeToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToInt
    _$SimpleClassNullableOfEnumTypeToIntFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToInt(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToIntToPgSql(
        SimpleClassNullableOfEnumTypeToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToInt _$SimpleClassOfIntToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToIntToPgSql(
        SimpleClassOfIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToInt _$SimpleClassNullableOfIntToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToIntToPgSql(
        SimpleClassNullableOfIntToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToInt _$SimpleClassOfObjectToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToInt(
      Map<String, int>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToIntToPgSql(
        SimpleClassOfObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToInt _$SimpleClassNullableOfObjectToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfObjectToInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToIntToPgSql(
        SimpleClassNullableOfObjectToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToInt _$SimpleClassOfStringToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToInt(
      Map<String, int>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToIntToPgSql(
        SimpleClassOfStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToInt _$SimpleClassNullableOfStringToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfStringToInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToIntToPgSql(
        SimpleClassNullableOfStringToInt instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToInt _$SimpleClassOfUriToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToInt(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToIntToPgSql(
        SimpleClassOfUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToInt _$SimpleClassNullableOfUriToIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToInt(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as int),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToIntToPgSql(
        SimpleClassNullableOfUriToInt instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToIntNullable _$SimpleClassOfBigIntToIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToIntNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as int?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToIntNullableToPgSql(
        SimpleClassOfBigIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToIntNullable
    _$SimpleClassNullableOfBigIntToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToIntNullableToPgSql(
        SimpleClassNullableOfBigIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToIntNullable
    _$SimpleClassOfDateTimeToIntNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToIntNullableToPgSql(
        SimpleClassOfDateTimeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToIntNullable
    _$SimpleClassNullableOfDateTimeToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToIntNullableToPgSql(
        SimpleClassNullableOfDateTimeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToIntNullable _$SimpleClassOfDynamicToIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToIntNullable(
      Map<String, int?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToIntNullableToPgSql(
        SimpleClassOfDynamicToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToIntNullable
    _$SimpleClassNullableOfDynamicToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToIntNullableToPgSql(
        SimpleClassNullableOfDynamicToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToIntNullable
    _$SimpleClassOfEnumTypeToIntNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToIntNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToIntNullableToPgSql(
        SimpleClassOfEnumTypeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToIntNullable
    _$SimpleClassNullableOfEnumTypeToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToIntNullableToPgSql(
        SimpleClassNullableOfEnumTypeToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToIntNullable _$SimpleClassOfIntToIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToIntNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as int?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToIntNullableToPgSql(
        SimpleClassOfIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToIntNullable
    _$SimpleClassNullableOfIntToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToIntNullableToPgSql(
        SimpleClassNullableOfIntToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToIntNullable _$SimpleClassOfObjectToIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToIntNullable(
      Map<String, int?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToIntNullableToPgSql(
        SimpleClassOfObjectToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToIntNullable
    _$SimpleClassNullableOfObjectToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToIntNullableToPgSql(
        SimpleClassNullableOfObjectToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToIntNullable _$SimpleClassOfStringToIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToIntNullable(
      Map<String, int?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToIntNullableToPgSql(
        SimpleClassOfStringToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToIntNullable
    _$SimpleClassNullableOfStringToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToIntNullableToPgSql(
        SimpleClassNullableOfStringToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToIntNullable _$SimpleClassOfUriToIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToIntNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as int?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToIntNullableToPgSql(
        SimpleClassOfUriToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToIntNullable
    _$SimpleClassNullableOfUriToIntNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToIntNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as int?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToIntNullableToPgSql(
        SimpleClassNullableOfUriToIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToNum _$SimpleClassOfBigIntToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToNum(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToNumToPgSql(
        SimpleClassOfBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToNum _$SimpleClassNullableOfBigIntToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBigIntToNum(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(BigInt.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToNumToPgSql(
        SimpleClassNullableOfBigIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToNum _$SimpleClassOfDateTimeToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToNum(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToNumToPgSql(
        SimpleClassOfDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToNum
    _$SimpleClassNullableOfDateTimeToNumFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToNum(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToNumToPgSql(
        SimpleClassNullableOfDateTimeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToNum _$SimpleClassOfDynamicToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToNum(
      Map<String, num>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToNumToPgSql(
        SimpleClassOfDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToNum _$SimpleClassNullableOfDynamicToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDynamicToNum(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToNumToPgSql(
        SimpleClassNullableOfDynamicToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToNum _$SimpleClassOfEnumTypeToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToNum(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToNumToPgSql(
        SimpleClassOfEnumTypeToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToNum
    _$SimpleClassNullableOfEnumTypeToNumFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToNum(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToNumToPgSql(
        SimpleClassNullableOfEnumTypeToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToNum _$SimpleClassOfIntToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToNum(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToNumToPgSql(
        SimpleClassOfIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToNum _$SimpleClassNullableOfIntToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToNum(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToNumToPgSql(
        SimpleClassNullableOfIntToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToNum _$SimpleClassOfObjectToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToNum(
      Map<String, num>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToNumToPgSql(
        SimpleClassOfObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToNum _$SimpleClassNullableOfObjectToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfObjectToNum(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToNumToPgSql(
        SimpleClassNullableOfObjectToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToNum _$SimpleClassOfStringToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToNum(
      Map<String, num>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToNumToPgSql(
        SimpleClassOfStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToNum _$SimpleClassNullableOfStringToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfStringToNum(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToNumToPgSql(
        SimpleClassNullableOfStringToNum instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToNum _$SimpleClassOfUriToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToNum(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToNumToPgSql(
        SimpleClassOfUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToNum _$SimpleClassNullableOfUriToNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToNum(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as num),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToNumToPgSql(
        SimpleClassNullableOfUriToNum instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToNumNullable _$SimpleClassOfBigIntToNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToNumNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as num?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToNumNullableToPgSql(
        SimpleClassOfBigIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToNumNullable
    _$SimpleClassNullableOfBigIntToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToNumNullableToPgSql(
        SimpleClassNullableOfBigIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToNumNullable
    _$SimpleClassOfDateTimeToNumNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToNumNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToNumNullableToPgSql(
        SimpleClassOfDateTimeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToNumNullable
    _$SimpleClassNullableOfDateTimeToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToNumNullableToPgSql(
        SimpleClassNullableOfDateTimeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToNumNullable _$SimpleClassOfDynamicToNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToNumNullable(
      Map<String, num?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToNumNullableToPgSql(
        SimpleClassOfDynamicToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToNumNullable
    _$SimpleClassNullableOfDynamicToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToNumNullableToPgSql(
        SimpleClassNullableOfDynamicToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToNumNullable
    _$SimpleClassOfEnumTypeToNumNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToNumNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToNumNullableToPgSql(
        SimpleClassOfEnumTypeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToNumNullable
    _$SimpleClassNullableOfEnumTypeToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToNumNullableToPgSql(
        SimpleClassNullableOfEnumTypeToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToNumNullable _$SimpleClassOfIntToNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToNumNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as num?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToNumNullableToPgSql(
        SimpleClassOfIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToNumNullable
    _$SimpleClassNullableOfIntToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToNumNullableToPgSql(
        SimpleClassNullableOfIntToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToNumNullable _$SimpleClassOfObjectToNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToNumNullable(
      Map<String, num?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToNumNullableToPgSql(
        SimpleClassOfObjectToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToNumNullable
    _$SimpleClassNullableOfObjectToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToNumNullableToPgSql(
        SimpleClassNullableOfObjectToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToNumNullable _$SimpleClassOfStringToNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToNumNullable(
      Map<String, num?>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToNumNullableToPgSql(
        SimpleClassOfStringToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToNumNullable
    _$SimpleClassNullableOfStringToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToNumNullableToPgSql(
        SimpleClassNullableOfStringToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToNumNullable _$SimpleClassOfUriToNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToNumNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as num?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToNumNullableToPgSql(
        SimpleClassOfUriToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToNumNullable
    _$SimpleClassNullableOfUriToNumNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToNumNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as num?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToNumNullableToPgSql(
        SimpleClassNullableOfUriToNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToObject _$SimpleClassOfBigIntToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToObjectToPgSql(
        SimpleClassOfBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToObject
    _$SimpleClassNullableOfBigIntToObjectFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToObject(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToObjectToPgSql(
        SimpleClassNullableOfBigIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToObject _$SimpleClassOfDateTimeToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToObjectToPgSql(
        SimpleClassOfDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToObject
    _$SimpleClassNullableOfDateTimeToObjectFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToObject(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToObjectToPgSql(
        SimpleClassNullableOfDateTimeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToObject _$SimpleClassOfDynamicToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToObjectToPgSql(
        SimpleClassOfDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToObject
    _$SimpleClassNullableOfDynamicToObjectFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToObject(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToObjectToPgSql(
        SimpleClassNullableOfDynamicToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToObject _$SimpleClassOfEnumTypeToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToObjectToPgSql(
        SimpleClassOfEnumTypeToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToObject
    _$SimpleClassNullableOfEnumTypeToObjectFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToObject(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToObjectToPgSql(
        SimpleClassNullableOfEnumTypeToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToObject _$SimpleClassOfIntToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToObjectToPgSql(
        SimpleClassOfIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToObject _$SimpleClassNullableOfIntToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToObject(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToObjectToPgSql(
        SimpleClassNullableOfIntToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToObject _$SimpleClassOfObjectToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToObjectToPgSql(
        SimpleClassOfObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToObject
    _$SimpleClassNullableOfObjectToObjectFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToObject(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToObjectToPgSql(
        SimpleClassNullableOfObjectToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToObject _$SimpleClassOfStringToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToObjectToPgSql(
        SimpleClassOfStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToObject
    _$SimpleClassNullableOfStringToObjectFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToObject(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as Object),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToObjectToPgSql(
        SimpleClassNullableOfStringToObject instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToObject _$SimpleClassOfUriToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToObject(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToObjectToPgSql(
        SimpleClassOfUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToObject _$SimpleClassNullableOfUriToObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToObject(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as Object),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToObjectToPgSql(
        SimpleClassNullableOfUriToObject instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToObjectNullable
    _$SimpleClassOfBigIntToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToObjectNullableToPgSql(
        SimpleClassOfBigIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToObjectNullable
    _$SimpleClassNullableOfBigIntToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToObjectNullableToPgSql(
        SimpleClassNullableOfBigIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToObjectNullable
    _$SimpleClassOfDateTimeToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToObjectNullableToPgSql(
        SimpleClassOfDateTimeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToObjectNullable
    _$SimpleClassNullableOfDateTimeToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToObjectNullableToPgSql(
        SimpleClassNullableOfDateTimeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToObjectNullable
    _$SimpleClassOfDynamicToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToObjectNullable(
          pgsql['value'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$SimpleClassOfDynamicToObjectNullableToPgSql(
        SimpleClassOfDynamicToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToObjectNullable
    _$SimpleClassNullableOfDynamicToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToObjectNullable(
          pgsql['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToObjectNullableToPgSql(
        SimpleClassNullableOfDynamicToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToObjectNullable
    _$SimpleClassOfEnumTypeToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToObjectNullableToPgSql(
        SimpleClassOfEnumTypeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToObjectNullable
    _$SimpleClassNullableOfEnumTypeToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToObjectNullableToPgSql(
        SimpleClassNullableOfEnumTypeToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToObjectNullable _$SimpleClassOfIntToObjectNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToObjectNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToObjectNullableToPgSql(
        SimpleClassOfIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToObjectNullable
    _$SimpleClassNullableOfIntToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToObjectNullableToPgSql(
        SimpleClassNullableOfIntToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToObjectNullable
    _$SimpleClassOfObjectToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToObjectNullable(
          pgsql['value'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$SimpleClassOfObjectToObjectNullableToPgSql(
        SimpleClassOfObjectToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToObjectNullable
    _$SimpleClassNullableOfObjectToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToObjectNullable(
          pgsql['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToObjectNullableToPgSql(
        SimpleClassNullableOfObjectToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToObjectNullable
    _$SimpleClassOfStringToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToObjectNullable(
          pgsql['value'] as Map<String, dynamic>,
        );

Map<String, dynamic> _$SimpleClassOfStringToObjectNullableToPgSql(
        SimpleClassOfStringToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToObjectNullable
    _$SimpleClassNullableOfStringToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToObjectNullable(
          pgsql['value'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToObjectNullableToPgSql(
        SimpleClassNullableOfStringToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToObjectNullable _$SimpleClassOfUriToObjectNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToObjectNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToObjectNullableToPgSql(
        SimpleClassOfUriToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToObjectNullable
    _$SimpleClassNullableOfUriToObjectNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToObjectNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToObjectNullableToPgSql(
        SimpleClassNullableOfUriToObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToString _$SimpleClassOfBigIntToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToString(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToStringToPgSql(
        SimpleClassOfBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToString
    _$SimpleClassNullableOfBigIntToStringFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToString(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToStringToPgSql(
        SimpleClassNullableOfBigIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToString _$SimpleClassOfDateTimeToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToString(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToStringToPgSql(
        SimpleClassOfDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToString
    _$SimpleClassNullableOfDateTimeToStringFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToString(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToStringToPgSql(
        SimpleClassNullableOfDateTimeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToString _$SimpleClassOfDynamicToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToString(
      Map<String, String>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToStringToPgSql(
        SimpleClassOfDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToString
    _$SimpleClassNullableOfDynamicToStringFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToString(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToStringToPgSql(
        SimpleClassNullableOfDynamicToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToString _$SimpleClassOfEnumTypeToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToString(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToStringToPgSql(
        SimpleClassOfEnumTypeToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToString
    _$SimpleClassNullableOfEnumTypeToStringFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToString(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToStringToPgSql(
        SimpleClassNullableOfEnumTypeToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToString _$SimpleClassOfIntToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToString(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToStringToPgSql(
        SimpleClassOfIntToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToString _$SimpleClassNullableOfIntToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToString(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToStringToPgSql(
        SimpleClassNullableOfIntToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToString _$SimpleClassOfObjectToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToString(
      Map<String, String>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfObjectToStringToPgSql(
        SimpleClassOfObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToString
    _$SimpleClassNullableOfObjectToStringFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToString(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToStringToPgSql(
        SimpleClassNullableOfObjectToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToString _$SimpleClassOfStringToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToString(
      Map<String, String>.from(pgsql['value'] as Map),
    );

Map<String, dynamic> _$SimpleClassOfStringToStringToPgSql(
        SimpleClassOfStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToString
    _$SimpleClassNullableOfStringToStringFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToString(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToStringToPgSql(
        SimpleClassNullableOfStringToString instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToString _$SimpleClassOfUriToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToString(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToStringToPgSql(
        SimpleClassOfUriToString instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToString _$SimpleClassNullableOfUriToStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToString(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToStringToPgSql(
        SimpleClassNullableOfUriToString instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToStringNullable
    _$SimpleClassOfBigIntToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfBigIntToStringNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(BigInt.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfBigIntToStringNullableToPgSql(
        SimpleClassOfBigIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfBigIntToStringNullable
    _$SimpleClassNullableOfBigIntToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(BigInt.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToStringNullableToPgSql(
        SimpleClassNullableOfBigIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfDateTimeToStringNullable
    _$SimpleClassOfDateTimeToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToStringNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(DateTime.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToStringNullableToPgSql(
        SimpleClassOfDateTimeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassNullableOfDateTimeToStringNullable
    _$SimpleClassNullableOfDateTimeToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToStringNullableToPgSql(
        SimpleClassNullableOfDateTimeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toIso8601String(), e)),
    };

SimpleClassOfDynamicToStringNullable
    _$SimpleClassOfDynamicToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfDynamicToStringNullable(
          Map<String, String?>.from(pgsql['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfDynamicToStringNullableToPgSql(
        SimpleClassOfDynamicToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfDynamicToStringNullable
    _$SimpleClassNullableOfDynamicToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToStringNullableToPgSql(
        SimpleClassNullableOfDynamicToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfEnumTypeToStringNullable
    _$SimpleClassOfEnumTypeToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToStringNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToStringNullableToPgSql(
        SimpleClassOfEnumTypeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassNullableOfEnumTypeToStringNullable
    _$SimpleClassNullableOfEnumTypeToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToStringNullableToPgSql(
        SimpleClassNullableOfEnumTypeToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e)),
    };

SimpleClassOfIntToStringNullable _$SimpleClassOfIntToStringNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToStringNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToStringNullableToPgSql(
        SimpleClassOfIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfIntToStringNullable
    _$SimpleClassNullableOfIntToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToStringNullableToPgSql(
        SimpleClassNullableOfIntToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfObjectToStringNullable
    _$SimpleClassOfObjectToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfObjectToStringNullable(
          Map<String, String?>.from(pgsql['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfObjectToStringNullableToPgSql(
        SimpleClassOfObjectToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfObjectToStringNullable
    _$SimpleClassNullableOfObjectToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToStringNullableToPgSql(
        SimpleClassNullableOfObjectToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfStringToStringNullable
    _$SimpleClassOfStringToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfStringToStringNullable(
          Map<String, String?>.from(pgsql['value'] as Map),
        );

Map<String, dynamic> _$SimpleClassOfStringToStringNullableToPgSql(
        SimpleClassOfStringToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassNullableOfStringToStringNullable
    _$SimpleClassNullableOfStringToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToStringNullableToPgSql(
        SimpleClassNullableOfStringToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

SimpleClassOfUriToStringNullable _$SimpleClassOfUriToStringNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToStringNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), e as String?),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToStringNullableToPgSql(
        SimpleClassOfUriToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassNullableOfUriToStringNullable
    _$SimpleClassNullableOfUriToStringNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToStringNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(Uri.parse(k), e as String?),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToStringNullableToPgSql(
        SimpleClassNullableOfUriToStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k.toString(), e)),
    };

SimpleClassOfBigIntToUri _$SimpleClassOfBigIntToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToUriToPgSql(
        SimpleClassOfBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfBigIntToUri _$SimpleClassNullableOfBigIntToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBigIntToUri(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(BigInt.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToUriToPgSql(
        SimpleClassNullableOfBigIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfDateTimeToUri _$SimpleClassOfDateTimeToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToUriToPgSql(
        SimpleClassOfDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassNullableOfDateTimeToUri
    _$SimpleClassNullableOfDateTimeToUriFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToUri(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(DateTime.parse(k), Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToUriToPgSql(
        SimpleClassNullableOfDateTimeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e.toString())),
    };

SimpleClassOfDynamicToUri _$SimpleClassOfDynamicToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToUriToPgSql(
        SimpleClassOfDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfDynamicToUri _$SimpleClassNullableOfDynamicToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDynamicToUri(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToUriToPgSql(
        SimpleClassNullableOfDynamicToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfEnumTypeToUri _$SimpleClassOfEnumTypeToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry($enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToUriToPgSql(
        SimpleClassOfEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassNullableOfEnumTypeToUri
    _$SimpleClassNullableOfEnumTypeToUriFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToUri(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                $enumDecode(_$EnumTypeEnumMap, k), Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToUriToPgSql(
        SimpleClassNullableOfEnumTypeToUri instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e.toString())),
    };

SimpleClassOfIntToUri _$SimpleClassOfIntToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToUriToPgSql(
        SimpleClassOfIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfIntToUri _$SimpleClassNullableOfIntToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntToUri(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToUriToPgSql(
        SimpleClassNullableOfIntToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfObjectToUri _$SimpleClassOfObjectToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToUriToPgSql(
        SimpleClassOfObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfObjectToUri _$SimpleClassNullableOfObjectToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfObjectToUri(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToUriToPgSql(
        SimpleClassNullableOfObjectToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfStringToUri _$SimpleClassOfStringToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToUriToPgSql(
        SimpleClassOfStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassNullableOfStringToUri _$SimpleClassNullableOfStringToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfStringToUri(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToUriToPgSql(
        SimpleClassNullableOfStringToUri instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e.toString())),
    };

SimpleClassOfUriToUri _$SimpleClassOfUriToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToUri(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToUriToPgSql(
        SimpleClassOfUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassNullableOfUriToUri _$SimpleClassNullableOfUriToUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriToUri(
      (pgsql['value'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToUriToPgSql(
        SimpleClassNullableOfUriToUri instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e.toString())),
    };

SimpleClassOfBigIntToUriNullable _$SimpleClassOfBigIntToUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntToUriNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToUriNullableToPgSql(
        SimpleClassOfBigIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfBigIntToUriNullable
    _$SimpleClassNullableOfBigIntToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                BigInt.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToUriNullableToPgSql(
        SimpleClassNullableOfBigIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfDateTimeToUriNullable
    _$SimpleClassOfDateTimeToUriNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfDateTimeToUriNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
                DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfDateTimeToUriNullableToPgSql(
        SimpleClassOfDateTimeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassNullableOfDateTimeToUriNullable
    _$SimpleClassNullableOfDateTimeToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                DateTime.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToUriNullableToPgSql(
        SimpleClassNullableOfDateTimeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(k.toIso8601String(), e?.toString())),
    };

SimpleClassOfDynamicToUriNullable _$SimpleClassOfDynamicToUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamicToUriNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToUriNullableToPgSql(
        SimpleClassOfDynamicToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfDynamicToUriNullable
    _$SimpleClassNullableOfDynamicToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDynamicToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToUriNullableToPgSql(
        SimpleClassNullableOfDynamicToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfEnumTypeToUriNullable
    _$SimpleClassOfEnumTypeToUriNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassOfEnumTypeToUriNullable(
          (pgsql['value'] as Map<String, dynamic>).map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassOfEnumTypeToUriNullableToPgSql(
        SimpleClassOfEnumTypeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          .map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassNullableOfEnumTypeToUriNullable
    _$SimpleClassNullableOfEnumTypeToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry($enumDecode(_$EnumTypeEnumMap, k),
                e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToUriNullableToPgSql(
        SimpleClassNullableOfEnumTypeToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value
          ?.map((k, e) => MapEntry(_$EnumTypeEnumMap[k], e?.toString())),
    };

SimpleClassOfIntToUriNullable _$SimpleClassOfIntToUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntToUriNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(int.parse(k), e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToUriNullableToPgSql(
        SimpleClassOfIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfIntToUriNullable
    _$SimpleClassNullableOfIntToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfIntToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                int.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfIntToUriNullableToPgSql(
        SimpleClassNullableOfIntToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassOfObjectToUriNullable _$SimpleClassOfObjectToUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectToUriNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToUriNullableToPgSql(
        SimpleClassOfObjectToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfObjectToUriNullable
    _$SimpleClassNullableOfObjectToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectToUriNullableToPgSql(
        SimpleClassNullableOfObjectToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfStringToUriNullable _$SimpleClassOfStringToUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringToUriNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToUriNullableToPgSql(
        SimpleClassOfStringToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassNullableOfStringToUriNullable
    _$SimpleClassNullableOfStringToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringToUriNullableToPgSql(
        SimpleClassNullableOfStringToUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value?.map((k, e) => MapEntry(k, e?.toString())),
    };

SimpleClassOfUriToUriNullable _$SimpleClassOfUriToUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriToUriNullable(
      (pgsql['value'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(Uri.parse(k), e == null ? null : Uri.parse(e as String)),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToUriNullableToPgSql(
        SimpleClassOfUriToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };

SimpleClassNullableOfUriToUriNullable
    _$SimpleClassNullableOfUriToUriNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfUriToUriNullable(
          (pgsql['value'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                Uri.parse(k), e == null ? null : Uri.parse(e as String)),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfUriToUriNullableToPgSql(
        SimpleClassNullableOfUriToUriNullable instance) =>
    <String, dynamic>{
      'value':
          instance.value?.map((k, e) => MapEntry(k.toString(), e?.toString())),
    };
