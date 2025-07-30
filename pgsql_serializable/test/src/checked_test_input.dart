// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
WithANonCtorGetterChecked _$WithANonCtorGetterCheckedFromPgSql(
  Map<String, dynamic> pgsql,
) => $checkedCreate('WithANonCtorGetterChecked', pgsql, ($checkedConvert) {
  $checkKeys(
    pgsql,
    allowedKeys: const ['items'],
    requiredKeys: const ['items'],
    disallowNullValues: const ['items'],
  );
  final val = WithANonCtorGetterChecked(
    $checkedConvert(
      'items',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
  );
  return val;
});
''')
@PgSqlSerializable(
  disallowUnrecognizedKeys: true,
  createToPgSql: false,
  checked: true,
)
class WithANonCtorGetterChecked {
  @PgSqlKey(required: true, disallowNullValue: true)
  final List<String> items;

  int get length => items.length;

  WithANonCtorGetterChecked(this.items);
}

@ShouldGenerate(r'''
WithANonCtorGetter _$WithANonCtorGetterFromPgSql(Map<String, dynamic> pgsql) {
  $checkKeys(
    pgsql,
    allowedKeys: const ['items'],
    requiredKeys: const ['items'],
    disallowNullValues: const ['items'],
  );
  return WithANonCtorGetter(
    (pgsql['items'] as List<dynamic>).map((e) => e as String).toList(),
  );
}
''')
@PgSqlSerializable(disallowUnrecognizedKeys: true, createToPgSql: false)
class WithANonCtorGetter {
  @PgSqlKey(required: true, disallowNullValue: true)
  final List<String> items;

  int get length => items.length;

  WithANonCtorGetter(this.items);
}
