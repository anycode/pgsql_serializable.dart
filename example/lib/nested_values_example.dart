import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'nested_values_example.g.dart';

/// An example work-around for
/// https://github.com/anycode/pgsql_serializable.dart/issues/490
@PgSqlSerializable()
class NestedValueExample {
  NestedValueExample(this.nestedValues);

  factory NestedValueExample.fromPgSql(Map<String, dynamic> pgsql) =>
      _$NestedValueExampleFromPgSql(pgsql);

  @_NestedListConverter()
  @PgSqlKey(name: 'root_items')
  final List<String> nestedValues;

  Map<String, dynamic> toPgSql() => _$NestedValueExampleToPgSql(this);
}

class _NestedListConverter
    extends PgSqlConverter<List<String>, Map<String, dynamic>> {
  const _NestedListConverter();

  @override
  List<String> fromPgSql(Map<String, dynamic> pgsql) => [
    for (var e in pgsql['items'] as List)
      (e as Map<String, dynamic>)['name'] as String,
  ];

  @override
  Map<String, dynamic> toPgSql(List<String> object) => {
    'items': [
      for (var item in object) {'name': item},
    ],
  };
}
