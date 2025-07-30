import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'field_map_example.g.dart';

@PgSqlSerializable(createFieldMap: true, fieldRename: FieldRename.kebab)
class Model {
  Model({required this.firstName, required this.lastName, this.ignoredName});

  factory Model.fromPgSql(Map<String, Object?> pgsql) => _$ModelFromPgSql(pgsql);

  final String firstName;

  @PgSqlKey(name: 'LAST_NAME')
  final String lastName;

  @PgSqlKey(includeFromPgSql: false, includeToPgSql: false)
  final String? ignoredName;

  String get fullName => '$firstName $lastName';

  Map<String, Object?> toPgSql() => _$ModelToPgSql(this);
}

const modelFieldMap = _$ModelFieldMap;

@PgSqlSerializable(
  createFieldMap: true,
  fieldRename: FieldRename.kebab,
  createFactory: false,
)
class _PrivateModel {
  _PrivateModel(this.fullName);

  final String fullName;

  Map<String, Object?> toPgSql() => _$PrivateModelToPgSql(this);
}

const privateModelFieldMap = _$PrivateModelFieldMap;
