import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'pgsql_keys_example.g.dart';

@PgSqlSerializable(createPgSqlKeys: true, fieldRename: FieldRename.kebab)
class Model {
  Model({
    required this.firstName,
    required this.lastName,
    this.ignoredName,
  });

  factory Model.fromPgSql(Map<String, Object?> pgsql) => _$ModelFromPgSql(pgsql);

  final String firstName;

  @PgSqlKey(name: 'LAST_NAME')
  final String lastName;

  @PgSqlKey(includeFromPgSql: false, includeToPgSql: false)
  final String? ignoredName;

  String get fullName => '$firstName $lastName';

  Map<String, Object?> toPgSql() => _$ModelToPgSql(this);
}

// TODO: use this once https://github.com/dart-lang/sdk/issues/54543 is fixed
typedef ModelPgSqlKeys = _$ModelPgSqlKeys;

// Work-around until https://github.com/dart-lang/sdk/issues/54543 is fixed
Set<String> get keys => {_$ModelPgSqlKeys.firstName, _$ModelPgSqlKeys.lastName};
