// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'converter_examples.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Issue1202RegressionClass _$Issue1202RegressionClassFromPgSql(
  Map<String, dynamic> pgsql,
) => Issue1202RegressionClass(
  value: $enumDecode(_$Issue1202RegressionEnumEnumMap, pgsql['value']),
  normalNullableValue: (pgsql['normalNullableValue'] as num?)?.toInt(),
  notNullableValueWithNullableConverter: const _Issue1202RegressionConverter()
      .fromPgSql(pgsql['notNullableValueWithNullableConverter'] as String?),
  notNullableValueWithConverter: const _Issue1202RegressionNotNullConverter()
      .fromPgSql(pgsql['notNullableValueWithConverter'] as String),
  valueWithFunctions: Issue1202RegressionClass._fromPgSql(
    pgsql['valueWithFunctions'] as String,
  ),
  valueWithNullableFunctions: Issue1202RegressionClass._fromPgSqlNullable(
    pgsql['valueWithNullableFunctions'] as String?,
  ),
);

Map<String, dynamic> _$Issue1202RegressionClassToPgSql(
  Issue1202RegressionClass instance,
) => <String, dynamic>{
  'valueWithFunctions': Issue1202RegressionClass._toPgSql(
    instance.valueWithFunctions,
  ),
  'notNullableValueWithConverter': const _Issue1202RegressionNotNullConverter()
      .toPgSql(instance.notNullableValueWithConverter),
  'value': ?_$Issue1202RegressionEnumEnumMap[instance.value],
  'normalNullableValue': ?instance.normalNullableValue,
  'notNullableValueWithNullableConverter':
      ?const _Issue1202RegressionConverter().toPgSql(
        instance.notNullableValueWithNullableConverter,
      ),
  'valueWithNullableFunctions': ?Issue1202RegressionClass._toPgSqlNullable(
    instance.valueWithNullableFunctions,
  ),
};

const _$Issue1202RegressionEnumEnumMap = {
  Issue1202RegressionEnum.normalValue: 42,
  Issue1202RegressionEnum.nullValue: null,
};

Regression1229 _$Regression1229FromPgSql(Map<String, dynamic> pgsql) =>
    Regression1229(
      date: _$PgSqlConverterFromPgSql<String, DateTime>(
        pgsql['date'],
        const DateTimeConverter().fromPgSql,
      ),
    );

Map<String, dynamic> _$Regression1229ToPgSql(Regression1229 instance) =>
    <String, dynamic>{
      'date': ?_$PgSqlConverterToPgSql<String, DateTime>(
        instance.date,
        const DateTimeConverter().toPgSql,
      ),
    };

Value? _$PgSqlConverterFromPgSql<PgSql, Value>(
  Object? pgsql,
  Value? Function(PgSql pgsql) fromPgSql,
) => pgsql == null ? null : fromPgSql(pgsql as PgSql);

PgSql? _$PgSqlConverterToPgSql<PgSql, Value>(
  Value? value,
  PgSql? Function(Value value) toPgSql,
) => value == null ? null : toPgSql(value);
