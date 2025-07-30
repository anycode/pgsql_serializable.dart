import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'create_per_field_to_pgsql_example.g.dart';

@PgSqlSerializable(createPerFieldToPgSql: true, explicitToPgSql: true)
class Model {
  Model({
    required this.firstName,
    required this.lastName,
    this.ignoredName,
    this.enumValue,
    this.nested,
    this.nestedExcludeIfNull,
    this.nestedGeneric,
  });

  factory Model.fromPgSql(Map<String, Object?> pgsql) => _$ModelFromPgSql(pgsql);

  final String firstName;
  final String lastName;
  final EnumValue? enumValue;
  final Nested? nested;
  final GenericFactory<int>? nestedGeneric;

  @PgSqlKey(includeIfNull: false)
  final Nested? nestedExcludeIfNull;

  @PgSqlKey(includeFromPgSql: false, includeToPgSql: false)
  final String? ignoredName;

  String get fullName => '$firstName $lastName';

  Map<String, Object?> toPgSql() => _$ModelToPgSql(this);
}

typedef ModelPerFieldToPgSql = _$ModelPerFieldToPgSql;

@PgSqlEnum()
enum EnumValue {
  @PgSqlValue('1')
  first,
  second,
}

@PgSqlSerializable()
class Nested {
  Nested(this.value);

  factory Nested.fromPgSql(Map<String, Object?> pgsql) => _$NestedFromPgSql(pgsql);

  final String value;

  Map<String, Object?> toPgSql() => _$NestedToPgSql(this);
}

@PgSqlSerializable(createPerFieldToPgSql: true, genericArgumentFactories: true)
class GenericFactory<T> {
  GenericFactory(this.value, this.map);

  factory GenericFactory.fromPgSql(
    Map<String, Object?> pgsql,
    T Function(Object? pgsql) fromPgSqlT,
  ) => _$GenericFactoryFromPgSql(pgsql, fromPgSqlT);

  final T value;
  final Map<String, T> map;

  Map<String, Object?> toPgSql(Object? Function(T value) toPgSqlT) =>
      _$GenericFactoryToPgSql(this, toPgSqlT);
}

typedef GenericFactoryPerFieldToPgSql = _$GenericFactoryPerFieldToPgSql;

@PgSqlSerializable(
  createPerFieldToPgSql: true,
  fieldRename: FieldRename.kebab,
  createFactory: false,
)
class _PrivateModel {
  _PrivateModel(this.fullName);

  final String fullName;

  Map<String, Object?> toPgSql() => _$PrivateModelToPgSql(this);
}

typedef PrivatePerFieldToPgSql = _$PrivateModelPerFieldToPgSql;
