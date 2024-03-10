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

@PgSqlEnum(alwaysCreate: true, valueField: 'value')
enum MyStatusCode {
  success(200),
  @PgSqlValue(701) // explicit value always takes precedence
  weird(601);

  const MyStatusCode(this.value);

  final int value;
}

Iterable<int> get myStatusCodeEnumValues => _$MyStatusCodeEnumMap.values;

@PgSqlEnum(alwaysCreate: true, valueField: 'index')
enum EnumValueFieldIndex {
  success(200),
  @PgSqlValue(701) // explicit value always takes precedence
  weird(601),
  oneMore(777);

  static const tryingToBeConfusing = weird;

  const EnumValueFieldIndex(this.value);

  final int value;
}

Iterable<int> get enumValueFieldIndexValues =>
    _$EnumValueFieldIndexEnumMap.values;

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

enum Issue1145RegressionEnum {
  alpha,
  beta,
  gamma,
}

@PgSqlSerializable(
  createFactory: false,
)
class Issue1145RegressionA {
  Issue1145RegressionA({
    required this.status,
  });

  Map<String, dynamic> toPgSql() => _$Issue1145RegressionAToPgSql(this);

  final Map<Issue1145RegressionEnum, bool> status;
}

@PgSqlSerializable(
  createFactory: false,
)
class Issue1145RegressionB {
  Issue1145RegressionB({required this.status});

  Map<String, dynamic> toPgSql() => _$Issue1145RegressionBToPgSql(this);

  final List<Issue1145RegressionEnum?> status;
}

@PgSqlSerializable(includeIfNull: false)
class Issue1226Regression {
  Issue1226Regression({required this.durationType});

  factory Issue1226Regression.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Issue1226RegressionFromPgSql(pgsql);

  final Issue1145RegressionEnum? durationType;

  Map<String, dynamic> toPgSql() => _$Issue1226RegressionToPgSql(this);
}
