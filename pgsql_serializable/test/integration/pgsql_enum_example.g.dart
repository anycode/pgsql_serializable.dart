// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'pgsql_enum_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Issue559Regression _$Issue559RegressionFromPgSql(Map<String, dynamic> pgsql) {
  $checkKeys(
    pgsql,
    requiredKeys: const ['status'],
    disallowNullValues: const ['status'],
  );
  return Issue559Regression(
    status: $enumDecodeNullable(_$Issue559RegressionEnumEnumMap, pgsql['status'],
        unknownValue: PgSqlKey.nullForUndefinedEnumValue),
  );
}

const _$Issue559RegressionEnumEnumMap = {
  Issue559RegressionEnum.alpha: 'alpha',
  Issue559RegressionEnum.beta: 'beta',
  Issue559RegressionEnum.gamma: 'gamma',
};

Map<String, dynamic> _$Issue1145RegressionAToPgSql(
        Issue1145RegressionA instance) =>
    <String, dynamic>{
      'status': instance.status
          .map((k, e) => MapEntry(_$Issue1145RegressionEnumEnumMap[k]!, e)),
    };

const _$Issue1145RegressionEnumEnumMap = {
  Issue1145RegressionEnum.alpha: 'alpha',
  Issue1145RegressionEnum.beta: 'beta',
  Issue1145RegressionEnum.gamma: 'gamma',
};

Map<String, dynamic> _$Issue1145RegressionBToPgSql(
        Issue1145RegressionB instance) =>
    <String, dynamic>{
      'status': instance.status
          .map((e) => _$Issue1145RegressionEnumEnumMap[e])
          .toList(),
    };

Issue1226Regression _$Issue1226RegressionFromPgSql(Map<String, dynamic> pgsql) =>
    Issue1226Regression(
      durationType: $enumDecodeNullable(
          _$Issue1145RegressionEnumEnumMap, pgsql['durationType']),
    );

Map<String, dynamic> _$Issue1226RegressionToPgSql(Issue1226Regression instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'durationType', _$Issue1145RegressionEnumEnumMap[instance.durationType]);
  return val;
}

const _$StandAloneEnumEnumMap = {
  StandAloneEnum.alpha: 'a',
  StandAloneEnum.beta: 'b',
  StandAloneEnum.gamma: 'g',
  StandAloneEnum.delta: 'd',
};

const _$DayTypeEnumMap = {
  DayType.noGood: 'no-good',
  DayType.rotten: 'rotten',
  DayType.veryBad: 'very-bad',
};

const _$MyStatusCodeEnumMap = {
  MyStatusCode.success: 200,
  MyStatusCode.weird: 701,
};

const _$EnumValueFieldIndexEnumMap = {
  EnumValueFieldIndex.success: 0,
  EnumValueFieldIndex.weird: 701,
  EnumValueFieldIndex.oneMore: 2,
};
