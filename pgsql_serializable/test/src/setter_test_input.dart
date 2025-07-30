// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(
  r'''
JustSetter _$JustSetterFromPgSql(Map<String, dynamic> pgsql) => JustSetter();

Map<String, dynamic> _$JustSetterToPgSql(JustSetter instance) =>
    <String, dynamic>{};
''',
  expectedLogItems: ['Setters are ignored: JustSetter.someSetter'],
)
@PgSqlSerializable()
class JustSetter {
  set someSetter(Object name) {}
}

@ShouldGenerate(
  r'''
JustSetterNoToPgSql _$JustSetterNoToPgSqlFromPgSql(Map<String, dynamic> pgsql) =>
    JustSetterNoToPgSql();
''',
  expectedLogItems: ['Setters are ignored: JustSetterNoToPgSql.someSetter'],
)
@PgSqlSerializable(createToPgSql: false)
class JustSetterNoToPgSql {
  set someSetter(Object name) {}
}

@ShouldGenerate(
  r'''
Map<String, dynamic> _$JustSetterNoFromPgSqlToPgSql(
  JustSetterNoFromPgSql instance,
) => <String, dynamic>{};
''',
  expectedLogItems: ['Setters are ignored: JustSetterNoFromPgSql.someSetter'],
)
@PgSqlSerializable(createFactory: false)
class JustSetterNoFromPgSql {
  set someSetter(Object name) {}
}
