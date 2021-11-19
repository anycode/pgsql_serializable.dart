import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'pgsql_enum_example.g.dart';

@PgSqlEnum(alwaysCreate: true)
enum StandAloneEnum {
  @PgSqlValue('a')
  alpha,
  @PgSqlValue('b')
  beta,
  @PgSqlValue('g')
  gamma,
  @PgSqlValue('d')
  delta,
}

Iterable<String> get standAloneEnumValues => _$StandAloneEnumEnumMap.values;

@PgSqlEnum(alwaysCreate: true, fieldRename: FieldRename.kebab)
enum DayType {
  noGood,
  rotten,
  veryBad,
}

Iterable<String> get dayTypeEnumValues => _$DayTypeEnumMap.values;

@PgSqlSerializable(
  createToPgSql: false,
)
class Issue559Regression {
  Issue559Regression({
    required this.status,
  });

  factory Issue559Regression.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Issue559RegressionFromPgSql(pgsql);

  @PgSqlKey(
    disallowNullValue: true,
    required: true,
    unknownEnumValue: PgSqlKey.nullForUndefinedEnumValue,
  )
  final Issue559RegressionEnum? status;
}

enum Issue559RegressionEnum {
  alpha,
  beta,
  gamma,
}
