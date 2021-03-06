part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(
  r'''
JustSetter _$JustSetterFromPgSql(Map<String, dynamic> pgsql) {
  return JustSetter();
}

Map<String, dynamic> _$JustSetterToPgSql(JustSetter instance) =>
    <String, dynamic>{};
''',
  expectedLogItems: ['Setters are ignored: JustSetter.someSetter'],
  configurations: ['default'],
)
@PgSqlSerializable()
class JustSetter {
  set someSetter(Object name) {}
}

@ShouldGenerate(
  r'''
JustSetterNoToPgSql _$JustSetterNoToPgSqlFromPgSql(Map<String, dynamic> pgsql) {
  return JustSetterNoToPgSql();
}
''',
  expectedLogItems: ['Setters are ignored: JustSetterNoToPgSql.someSetter'],
  configurations: ['default'],
)
@PgSqlSerializable(createToPgSql: false)
class JustSetterNoToPgSql {
  set someSetter(Object name) {}
}

@ShouldGenerate(
  r'''
Map<String, dynamic> _$JustSetterNoFromPgSqlToPgSql(
        JustSetterNoFromPgSql instance) =>
    <String, dynamic>{};
''',
  expectedLogItems: ['Setters are ignored: JustSetterNoFromPgSql.someSetter'],
  configurations: ['default'],
)
@PgSqlSerializable(createFactory: false)
class JustSetterNoFromPgSql {
  set someSetter(Object name) {}
}
