import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'readme_examples.g.dart';

// # simple_example
enum StatusCode {
  @PgSqlValue(200)
  success,
  @PgSqlValue(301)
  movedPermanently,
  @PgSqlValue(302)
  found,
  @PgSqlValue(500)
  internalServerError,
}

// # enhanced_example
@PgSqlEnum(valueField: 'code')
enum StatusCodeEnhanced {
  success(200),
  movedPermanently(301),
  found(302),
  internalServerError(500);

  const StatusCodeEnhanced(this.code);
  final int code;
}

// # to_from
@PgSqlSerializable()
class Sample1 {
  Sample1(this.value);

  factory Sample1.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Sample1FromPgSql(pgsql);

  // Sample2 is NOT annotated with @PgSqlSerializable(), but that's okay
  // The class has a `fromPgSql` constructor and a `toPgSql` method, which is
  // all that is required.
  final Sample2 value;

  Map<String, dynamic> toPgSql() => _$Sample1ToPgSql(this);
}

class Sample2 {
  Sample2(this.value);

  // The convention is for `fromPgSql` to take a single parameter of type
  // `Map<String, dynamic>` but any PgSQL-compatible type is allowed.
  factory Sample2.fromPgSql(int value) => Sample2(value);
  final int value;

  // The convention is for `toPgSql` to take return a type of
  // `Map<String, dynamic>` but any PgSQL-compatible type is allowed.
  int toPgSql() => value;
}

// # pgsql_key
@PgSqlSerializable()
class Sample3 {
  Sample3(this.value);

  factory Sample3.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Sample3FromPgSql(pgsql);

  @PgSqlKey(
    toPgSql: _toPgSql,
    fromPgSql: _fromPgSql,
  )
  final DateTime value;

  Map<String, dynamic> toPgSql() => _$Sample3ToPgSql(this);

  static int _toPgSql(DateTime value) => value.millisecondsSinceEpoch;
  static DateTime _fromPgSql(int value) =>
      DateTime.fromMillisecondsSinceEpoch(value);
}

// # pgsql_converter
@PgSqlSerializable()
class Sample4 {
  Sample4(this.value);

  factory Sample4.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Sample4FromPgSql(pgsql);

  @EpochDateTimeConverter()
  final DateTime value;

  Map<String, dynamic> toPgSql() => _$Sample4ToPgSql(this);
}

class EpochDateTimeConverter implements PgSqlConverter<DateTime, int> {
  const EpochDateTimeConverter();

  @override
  DateTime fromPgSql(int pgsql) => DateTime.fromMillisecondsSinceEpoch(pgsql);

  @override
  int toPgSql(DateTime object) => object.millisecondsSinceEpoch;
}
