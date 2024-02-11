// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'input.type_record.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SimpleClass _$SimpleClassFromPgSql(Map<String, dynamic> pgsql) => SimpleClass(
      (),
    );

Map<String, dynamic> _$SimpleClassToPgSql(SimpleClass instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{},
    };

SimpleClassNullable _$SimpleClassNullableFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassNullable(
      (),
    );

Map<String, dynamic> _$SimpleClassNullableToPgSql(
        SimpleClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null ? null : <String, dynamic>{},
    };

SimpleClassOfBigInt _$SimpleClassOfBigIntFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfBigInt(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          BigInt.parse($pgsqlValue[r'$1'] as String),
          named: BigInt.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntToPgSql(
        SimpleClassOfBigInt instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1.toString(),
        'named': instance.value.named.toString(),
      },
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);

SimpleClassNullableOfBigInt _$SimpleClassNullableOfBigIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBigInt(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          BigInt.parse($pgsqlValue[r'$1'] as String),
          named: BigInt.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBigIntToPgSql(
        SimpleClassNullableOfBigInt instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1.toString(),
              'named': instance.value!.named.toString(),
            },
    };

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    value == null ? null : convert(value as Map<String, dynamic>);

SimpleClassOfBigIntNullable _$SimpleClassOfBigIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBigIntNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] == null
              ? null
              : BigInt.parse($pgsqlValue[r'$1'] as String),
          named: $pgsqlValue['named'] == null
              ? null
              : BigInt.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBigIntNullableToPgSql(
        SimpleClassOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1?.toString(),
        'named': instance.value.named?.toString(),
      },
    };

SimpleClassNullableOfBigIntNullable
    _$SimpleClassNullableOfBigIntNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfBigIntNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] == null
                  ? null
                  : BigInt.parse($pgsqlValue[r'$1'] as String),
              named: $pgsqlValue['named'] == null
                  ? null
                  : BigInt.parse($pgsqlValue['named'] as String),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfBigIntNullableToPgSql(
        SimpleClassNullableOfBigIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1?.toString(),
              'named': instance.value!.named?.toString(),
            },
    };

SimpleClassOfBool _$SimpleClassOfBoolFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfBool(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as bool,
          named: $pgsqlValue['named'] as bool,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBoolToPgSql(SimpleClassOfBool instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfBool _$SimpleClassNullableOfBoolFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBool(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as bool,
          named: $pgsqlValue['named'] as bool,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBoolToPgSql(
        SimpleClassNullableOfBool instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfBoolNullable _$SimpleClassOfBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfBoolNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as bool?,
          named: $pgsqlValue['named'] as bool?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfBoolNullableToPgSql(
        SimpleClassOfBoolNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfBoolNullable _$SimpleClassNullableOfBoolNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfBoolNullable(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as bool?,
          named: $pgsqlValue['named'] as bool?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfBoolNullableToPgSql(
        SimpleClassNullableOfBoolNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfDateTime _$SimpleClassOfDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTime(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          DateTime.parse($pgsqlValue[r'$1'] as String),
          named: DateTime.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeToPgSql(
        SimpleClassOfDateTime instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1.toIso8601String(),
        'named': instance.value.named.toIso8601String(),
      },
    };

SimpleClassNullableOfDateTime _$SimpleClassNullableOfDateTimeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDateTime(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          DateTime.parse($pgsqlValue[r'$1'] as String),
          named: DateTime.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeToPgSql(
        SimpleClassNullableOfDateTime instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1.toIso8601String(),
              'named': instance.value!.named.toIso8601String(),
            },
    };

SimpleClassOfDateTimeNullable _$SimpleClassOfDateTimeNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDateTimeNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] == null
              ? null
              : DateTime.parse($pgsqlValue[r'$1'] as String),
          named: $pgsqlValue['named'] == null
              ? null
              : DateTime.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDateTimeNullableToPgSql(
        SimpleClassOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1?.toIso8601String(),
        'named': instance.value.named?.toIso8601String(),
      },
    };

SimpleClassNullableOfDateTimeNullable
    _$SimpleClassNullableOfDateTimeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDateTimeNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] == null
                  ? null
                  : DateTime.parse($pgsqlValue[r'$1'] as String),
              named: $pgsqlValue['named'] == null
                  ? null
                  : DateTime.parse($pgsqlValue['named'] as String),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDateTimeNullableToPgSql(
        SimpleClassNullableOfDateTimeNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1?.toIso8601String(),
              'named': instance.value!.named?.toIso8601String(),
            },
    };

SimpleClassOfDouble _$SimpleClassOfDoubleFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfDouble(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          ($pgsqlValue[r'$1'] as num).toDouble(),
          named: ($pgsqlValue['named'] as num).toDouble(),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDoubleToPgSql(
        SimpleClassOfDouble instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfDouble _$SimpleClassNullableOfDoubleFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDouble(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          ($pgsqlValue[r'$1'] as num).toDouble(),
          named: ($pgsqlValue['named'] as num).toDouble(),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDoubleToPgSql(
        SimpleClassNullableOfDouble instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfDoubleNullable _$SimpleClassOfDoubleNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDoubleNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          ($pgsqlValue[r'$1'] as num?)?.toDouble(),
          named: ($pgsqlValue['named'] as num?)?.toDouble(),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDoubleNullableToPgSql(
        SimpleClassOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfDoubleNullable
    _$SimpleClassNullableOfDoubleNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDoubleNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              ($pgsqlValue[r'$1'] as num?)?.toDouble(),
              named: ($pgsqlValue['named'] as num?)?.toDouble(),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDoubleNullableToPgSql(
        SimpleClassNullableOfDoubleNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfDuration _$SimpleClassOfDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDuration(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          Duration(microseconds: $pgsqlValue[r'$1'] as int),
          named: Duration(microseconds: $pgsqlValue['named'] as int),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDurationToPgSql(
        SimpleClassOfDuration instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1.inMicroseconds,
        'named': instance.value.named.inMicroseconds,
      },
    };

SimpleClassNullableOfDuration _$SimpleClassNullableOfDurationFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDuration(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          Duration(microseconds: $pgsqlValue[r'$1'] as int),
          named: Duration(microseconds: $pgsqlValue['named'] as int),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDurationToPgSql(
        SimpleClassNullableOfDuration instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1.inMicroseconds,
              'named': instance.value!.named.inMicroseconds,
            },
    };

SimpleClassOfDurationNullable _$SimpleClassOfDurationNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDurationNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] == null
              ? null
              : Duration(microseconds: $pgsqlValue[r'$1'] as int),
          named: $pgsqlValue['named'] == null
              ? null
              : Duration(microseconds: $pgsqlValue['named'] as int),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDurationNullableToPgSql(
        SimpleClassOfDurationNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1?.inMicroseconds,
        'named': instance.value.named?.inMicroseconds,
      },
    };

SimpleClassNullableOfDurationNullable
    _$SimpleClassNullableOfDurationNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfDurationNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] == null
                  ? null
                  : Duration(microseconds: $pgsqlValue[r'$1'] as int),
              named: $pgsqlValue['named'] == null
                  ? null
                  : Duration(microseconds: $pgsqlValue['named'] as int),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfDurationNullableToPgSql(
        SimpleClassNullableOfDurationNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1?.inMicroseconds,
              'named': instance.value!.named?.inMicroseconds,
            },
    };

SimpleClassOfDynamic _$SimpleClassOfDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfDynamic(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'],
          named: $pgsqlValue['named'],
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfDynamicToPgSql(
        SimpleClassOfDynamic instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfDynamic _$SimpleClassNullableOfDynamicFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfDynamic(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'],
          named: $pgsqlValue['named'],
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfDynamicToPgSql(
        SimpleClassNullableOfDynamic instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfEnumType _$SimpleClassOfEnumTypeFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumType(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $enumDecode(_$EnumTypeEnumMap, $pgsqlValue[r'$1']),
          named: $enumDecode(_$EnumTypeEnumMap, $pgsqlValue['named']),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeToPgSql(
        SimpleClassOfEnumType instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': _$EnumTypeEnumMap[instance.value.$1]!,
        'named': _$EnumTypeEnumMap[instance.value.named]!,
      },
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
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $enumDecode(_$EnumTypeEnumMap, $pgsqlValue[r'$1']),
          named: $enumDecode(_$EnumTypeEnumMap, $pgsqlValue['named']),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeToPgSql(
        SimpleClassNullableOfEnumType instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': _$EnumTypeEnumMap[instance.value!.$1]!,
              'named': _$EnumTypeEnumMap[instance.value!.named]!,
            },
    };

SimpleClassOfEnumTypeNullable _$SimpleClassOfEnumTypeNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfEnumTypeNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $enumDecodeNullable(_$EnumTypeEnumMap, $pgsqlValue[r'$1']),
          named: $enumDecodeNullable(_$EnumTypeEnumMap, $pgsqlValue['named']),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfEnumTypeNullableToPgSql(
        SimpleClassOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': _$EnumTypeEnumMap[instance.value.$1],
        'named': _$EnumTypeEnumMap[instance.value.named],
      },
    };

SimpleClassNullableOfEnumTypeNullable
    _$SimpleClassNullableOfEnumTypeNullableFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfEnumTypeNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              $enumDecodeNullable(_$EnumTypeEnumMap, $pgsqlValue[r'$1']),
              named:
                  $enumDecodeNullable(_$EnumTypeEnumMap, $pgsqlValue['named']),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfEnumTypeNullableToPgSql(
        SimpleClassNullableOfEnumTypeNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': _$EnumTypeEnumMap[instance.value!.$1],
              'named': _$EnumTypeEnumMap[instance.value!.named],
            },
    };

SimpleClassOfFromPgSqlDynamicParam _$SimpleClassOfFromPgSqlDynamicParamFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfFromPgSqlDynamicParam(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          FromPgSqlDynamicParam.fromPgSql($pgsqlValue[r'$1']),
          named: FromPgSqlDynamicParam.fromPgSql($pgsqlValue['named']),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfFromPgSqlDynamicParamToPgSql(
        SimpleClassOfFromPgSqlDynamicParam instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfFromPgSqlDynamicParam
    _$SimpleClassNullableOfFromPgSqlDynamicParamFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfFromPgSqlDynamicParam(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              FromPgSqlDynamicParam.fromPgSql($pgsqlValue[r'$1']),
              named: FromPgSqlDynamicParam.fromPgSql($pgsqlValue['named']),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfFromPgSqlDynamicParamToPgSql(
        SimpleClassNullableOfFromPgSqlDynamicParam instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfFromPgSqlNullableObjectParam
    _$SimpleClassOfFromPgSqlNullableObjectParamFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassOfFromPgSqlNullableObjectParam(
          _$recordConvert(
            pgsql['value'],
            ($pgsqlValue) => (
              FromPgSqlNullableObjectParam.fromPgSql($pgsqlValue[r'$1']),
              named: FromPgSqlNullableObjectParam.fromPgSql($pgsqlValue['named']),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassOfFromPgSqlNullableObjectParamToPgSql(
        SimpleClassOfFromPgSqlNullableObjectParam instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfFromPgSqlNullableObjectParam
    _$SimpleClassNullableOfFromPgSqlNullableObjectParamFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfFromPgSqlNullableObjectParam(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              FromPgSqlNullableObjectParam.fromPgSql($pgsqlValue[r'$1']),
              named: FromPgSqlNullableObjectParam.fromPgSql($pgsqlValue['named']),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfFromPgSqlNullableObjectParamToPgSql(
        SimpleClassNullableOfFromPgSqlNullableObjectParam instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfFromPgSqlObjectParam _$SimpleClassOfFromPgSqlObjectParamFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfFromPgSqlObjectParam(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          FromPgSqlObjectParam.fromPgSql($pgsqlValue[r'$1'] as Object),
          named: FromPgSqlObjectParam.fromPgSql($pgsqlValue['named'] as Object),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfFromPgSqlObjectParamToPgSql(
        SimpleClassOfFromPgSqlObjectParam instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfFromPgSqlObjectParam
    _$SimpleClassNullableOfFromPgSqlObjectParamFromPgSql(
            Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfFromPgSqlObjectParam(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              FromPgSqlObjectParam.fromPgSql($pgsqlValue[r'$1'] as Object),
              named:
                  FromPgSqlObjectParam.fromPgSql($pgsqlValue['named'] as Object),
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfFromPgSqlObjectParamToPgSql(
        SimpleClassNullableOfFromPgSqlObjectParam instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfInt _$SimpleClassOfIntFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfInt(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as int,
          named: $pgsqlValue['named'] as int,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntToPgSql(SimpleClassOfInt instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfInt _$SimpleClassNullableOfIntFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfInt(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as int,
          named: $pgsqlValue['named'] as int,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntToPgSql(
        SimpleClassNullableOfInt instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfIntNullable _$SimpleClassOfIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfIntNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as int?,
          named: $pgsqlValue['named'] as int?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfIntNullableToPgSql(
        SimpleClassOfIntNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfIntNullable _$SimpleClassNullableOfIntNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfIntNullable(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as int?,
          named: $pgsqlValue['named'] as int?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfIntNullableToPgSql(
        SimpleClassNullableOfIntNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfNum _$SimpleClassOfNumFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfNum(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as num,
          named: $pgsqlValue['named'] as num,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfNumToPgSql(SimpleClassOfNum instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfNum _$SimpleClassNullableOfNumFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfNum(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as num,
          named: $pgsqlValue['named'] as num,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfNumToPgSql(
        SimpleClassNullableOfNum instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfNumNullable _$SimpleClassOfNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfNumNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as num?,
          named: $pgsqlValue['named'] as num?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfNumNullableToPgSql(
        SimpleClassOfNumNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfNumNullable _$SimpleClassNullableOfNumNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfNumNullable(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as num?,
          named: $pgsqlValue['named'] as num?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfNumNullableToPgSql(
        SimpleClassNullableOfNumNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfObject _$SimpleClassOfObjectFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfObject(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as Object,
          named: $pgsqlValue['named'] as Object,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectToPgSql(
        SimpleClassOfObject instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfObject _$SimpleClassNullableOfObjectFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfObject(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as Object,
          named: $pgsqlValue['named'] as Object,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfObjectToPgSql(
        SimpleClassNullableOfObject instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfObjectNullable _$SimpleClassOfObjectNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfObjectNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'],
          named: $pgsqlValue['named'],
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfObjectNullableToPgSql(
        SimpleClassOfObjectNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfObjectNullable
    _$SimpleClassNullableOfObjectNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfObjectNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'],
              named: $pgsqlValue['named'],
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfObjectNullableToPgSql(
        SimpleClassNullableOfObjectNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfRecord _$SimpleClassOfRecordFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfRecord(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          _$recordConvert(
            $pgsqlValue[r'$1'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] as int,
              $pgsqlValue[r'$2'] as String,
              truth: $pgsqlValue['truth'] as bool,
            ),
          ),
          named: _$recordConvert(
            $pgsqlValue['named'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] as int,
              $pgsqlValue[r'$2'] as String,
              truth: $pgsqlValue['truth'] as bool,
            ),
          ),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfRecordToPgSql(
        SimpleClassOfRecord instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': <String, dynamic>{
          r'$1': instance.value.$1.$1,
          r'$2': instance.value.$1.$2,
          'truth': instance.value.$1.truth,
        },
        'named': <String, dynamic>{
          r'$1': instance.value.named.$1,
          r'$2': instance.value.named.$2,
          'truth': instance.value.named.truth,
        },
      },
    };

SimpleClassNullableOfRecord _$SimpleClassNullableOfRecordFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfRecord(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          _$recordConvert(
            $pgsqlValue[r'$1'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] as int,
              $pgsqlValue[r'$2'] as String,
              truth: $pgsqlValue['truth'] as bool,
            ),
          ),
          named: _$recordConvert(
            $pgsqlValue['named'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] as int,
              $pgsqlValue[r'$2'] as String,
              truth: $pgsqlValue['truth'] as bool,
            ),
          ),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfRecordToPgSql(
        SimpleClassNullableOfRecord instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': <String, dynamic>{
                r'$1': instance.value!.$1.$1,
                r'$2': instance.value!.$1.$2,
                'truth': instance.value!.$1.truth,
              },
              'named': <String, dynamic>{
                r'$1': instance.value!.named.$1,
                r'$2': instance.value!.named.$2,
                'truth': instance.value!.named.truth,
              },
            },
    };

SimpleClassOfString _$SimpleClassOfStringFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfString(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as String,
          named: $pgsqlValue['named'] as String,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringToPgSql(
        SimpleClassOfString instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfString _$SimpleClassNullableOfStringFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfString(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as String,
          named: $pgsqlValue['named'] as String,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfStringToPgSql(
        SimpleClassNullableOfString instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfStringNullable _$SimpleClassOfStringNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfStringNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] as String?,
          named: $pgsqlValue['named'] as String?,
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfStringNullableToPgSql(
        SimpleClassOfStringNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1,
        'named': instance.value.named,
      },
    };

SimpleClassNullableOfStringNullable
    _$SimpleClassNullableOfStringNullableFromPgSql(Map<String, dynamic> pgsql) =>
        SimpleClassNullableOfStringNullable(
          _$recordConvertNullable(
            pgsql['value'],
            ($pgsqlValue) => (
              $pgsqlValue[r'$1'] as String?,
              named: $pgsqlValue['named'] as String?,
            ),
          ),
        );

Map<String, dynamic> _$SimpleClassNullableOfStringNullableToPgSql(
        SimpleClassNullableOfStringNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1,
              'named': instance.value!.named,
            },
    };

SimpleClassOfUri _$SimpleClassOfUriFromPgSql(Map<String, dynamic> pgsql) =>
    SimpleClassOfUri(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          Uri.parse($pgsqlValue[r'$1'] as String),
          named: Uri.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriToPgSql(SimpleClassOfUri instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1.toString(),
        'named': instance.value.named.toString(),
      },
    };

SimpleClassNullableOfUri _$SimpleClassNullableOfUriFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUri(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          Uri.parse($pgsqlValue[r'$1'] as String),
          named: Uri.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriToPgSql(
        SimpleClassNullableOfUri instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1.toString(),
              'named': instance.value!.named.toString(),
            },
    };

SimpleClassOfUriNullable _$SimpleClassOfUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassOfUriNullable(
      _$recordConvert(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] == null
              ? null
              : Uri.parse($pgsqlValue[r'$1'] as String),
          named: $pgsqlValue['named'] == null
              ? null
              : Uri.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassOfUriNullableToPgSql(
        SimpleClassOfUriNullable instance) =>
    <String, dynamic>{
      'value': <String, dynamic>{
        r'$1': instance.value.$1?.toString(),
        'named': instance.value.named?.toString(),
      },
    };

SimpleClassNullableOfUriNullable _$SimpleClassNullableOfUriNullableFromPgSql(
        Map<String, dynamic> pgsql) =>
    SimpleClassNullableOfUriNullable(
      _$recordConvertNullable(
        pgsql['value'],
        ($pgsqlValue) => (
          $pgsqlValue[r'$1'] == null
              ? null
              : Uri.parse($pgsqlValue[r'$1'] as String),
          named: $pgsqlValue['named'] == null
              ? null
              : Uri.parse($pgsqlValue['named'] as String),
        ),
      ),
    );

Map<String, dynamic> _$SimpleClassNullableOfUriNullableToPgSql(
        SimpleClassNullableOfUriNullable instance) =>
    <String, dynamic>{
      'value': instance.value == null
          ? null
          : <String, dynamic>{
              r'$1': instance.value!.$1?.toString(),
              'named': instance.value!.named?.toString(),
            },
    };
