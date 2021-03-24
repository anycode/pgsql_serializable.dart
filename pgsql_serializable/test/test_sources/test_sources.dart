import 'package:pgsql_annotation/pgsql_annotation.dart';

@PgSqlSerializable()
class ConfigurationImplicitDefaults {
  int? field;
}

@PgSqlSerializable(
  anyMap: false,
  checked: false,
  createFactory: true,
  createToPgSql: true,
  disallowUnrecognizedKeys: false,
  explicitToPgSql: false,
  fieldRename: FieldRename.none,
  ignoreUnannotated: false,
  includeIfNull: true,
  genericArgumentFactories: false,
)
class ConfigurationExplicitDefaults {
  int? field;
}

@PgSqlSerializable(createFactory: false)
class IncludeIfNullAll {
  @PgSqlKey(includeIfNull: true)
  int? number;
  String? str;
}

@PgSqlSerializable(createToPgSql: false)
class FromPgSqlOptionalParameters {
  final ChildWithFromPgSql child;

  FromPgSqlOptionalParameters(this.child);
}

class ChildWithFromPgSql {
  //ignore: avoid_unused_constructor_parameters
  ChildWithFromPgSql.fromPgSql(pgsql, {initValue = false});
}

@PgSqlSerializable()
class ParentObject {
  int? number;
  String? str;
  ChildObject? child;
}

@PgSqlSerializable()
class ChildObject {
  int? number;
  String? str;
}

@PgSqlSerializable()
class ParentObjectWithChildren {
  int? number;
  String? str;
  List<ChildObject>? children;
}

@PgSqlSerializable()
class ParentObjectWithDynamicChildren {
  int? number;
  String? str;
  late List<dynamic> children;
}

@PgSqlSerializable(createFactory: false, explicitToPgSql: true)
class TrivialNestedNullable {
  TrivialNestedNullable? child;
  int? otherField;
}

@PgSqlSerializable(createFactory: false, explicitToPgSql: true)
class TrivialNestedNonNullable {
  late TrivialNestedNonNullable child;
  int? otherField;
}
