import 'dart:convert';

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'converter_examples.g.dart';

@PgSqlEnum(valueField: 'value')
enum Issue1202RegressionEnum {
  normalValue(42),
  nullValue(null);

  const Issue1202RegressionEnum(this.value);

  final int? value;
}

@PgSqlSerializable(includeIfNull: false)
class Issue1202RegressionClass {
  @PgSqlKey(fromPgSql: _fromPgSql, toPgSql: _toPgSql)
  final int valueWithFunctions;

  @_Issue1202RegressionNotNullConverter()
  final int notNullableValueWithConverter;

  final Issue1202RegressionEnum value;
  final int? normalNullableValue;

  @_Issue1202RegressionConverter()
  final int notNullableValueWithNullableConverter;

  @PgSqlKey(fromPgSql: _fromPgSqlNullable, toPgSql: _toPgSqlNullable)
  final int valueWithNullableFunctions;

  Issue1202RegressionClass({
    required this.value,
    required this.normalNullableValue,
    required this.notNullableValueWithNullableConverter,
    required this.notNullableValueWithConverter,
    required this.valueWithFunctions,
    required this.valueWithNullableFunctions,
  });

  factory Issue1202RegressionClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Issue1202RegressionClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$Issue1202RegressionClassToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is Issue1202RegressionClass &&
      jsonEncode(other) == jsonEncode(this);

  @override
  int get hashCode => jsonEncode(this).hashCode;

  static int _fromPgSqlNullable(String? pgsql) {
    if (pgsql == null) return _default;
    return int.parse(pgsql);
  }

  static String? _toPgSqlNullable(int object) {
    if (object == _default) return null;
    return object.toString();
  }

  static int _fromPgSql(String pgsql) => int.parse(pgsql);

  static String _toPgSql(int object) => object.toString();
}

const _default = 42;

class _Issue1202RegressionConverter extends PgSqlConverter<int, String?> {
  const _Issue1202RegressionConverter();

  @override
  int fromPgSql(String? pgsql) {
    if (pgsql == null) return _default;
    return int.parse(pgsql);
  }

  @override
  String? toPgSql(int object) {
    if (object == _default) return null;
    return object.toString();
  }
}

class _Issue1202RegressionNotNullConverter extends PgSqlConverter<int, String> {
  const _Issue1202RegressionNotNullConverter();

  @override
  int fromPgSql(String pgsql) => int.parse(pgsql);

  @override
  String toPgSql(int object) => object.toString();
}

class DateTimeConverter extends PgSqlConverter<DateTime, String> {
  const DateTimeConverter();
  @override
  DateTime fromPgSql(String pgsql) => DateTime.parse(pgsql).toLocal();
  @override
  String toPgSql(DateTime object) => object.toUtc().toIso8601String();
}

@PgSqlSerializable()
@DateTimeConverter()
class Regression1229 {
  @PgSqlKey(includeIfNull: false)
  final DateTime? date;

  Regression1229({this.date});

  factory Regression1229.fromPgSql(Map<String, dynamic> pgsql) =>
      _$Regression1229FromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$Regression1229ToPgSql(this);
}
