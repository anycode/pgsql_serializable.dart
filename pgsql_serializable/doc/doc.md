| `build.yaml` key           | PgSqlSerializable                            | PgSqlKey                     |
| -------------------------- | -------------------------------------------- | ---------------------------- |
| any_map                    | [PgSqlSerializable.anyMap]                   |                              |
| checked                    | [PgSqlSerializable.checked]                  |                              |
| create_factory             | [PgSqlSerializable.createFactory]            |                              |
| create_to_pg_sql           | [PgSqlSerializable.createToPgSql]            |                              |
| disallow_unrecognized_keys | [PgSqlSerializable.disallowUnrecognizedKeys] |                              |
| explicit_to_pg_sql         | [PgSqlSerializable.explicitToPgSql]          |                              |
| field_rename               | [PgSqlSerializable.fieldRename]              |                              |
| generic_argument_factories | [PgSqlSerializable.genericArgumentFactories] |                              |
| ignore_unannotated         | [PgSqlSerializable.ignoreUnannotated]        |                              |
| include_if_null            | [PgSqlSerializable.includeIfNull]            | [PgSqlKey.includeIfNull]     |
| nullable                   | [PgSqlSerializable.nullable]                 | [PgSqlKey.nullable]          |
|                            |                                              | [PgSqlKey.defaultValue]      |
|                            |                                              | [PgSqlKey.disallowNullValue] |
|                            |                                              | [PgSqlKey.fromPgSql]         |
|                            |                                              | [PgSqlKey.ignore]            |
|                            |                                              | [PgSqlKey.name]              |
|                            |                                              | [PgSqlKey.required]          |
|                            |                                              | [PgSqlKey.toPgSql]           |
|                            |                                              | [PgSqlKey.unknownEnumValue]  |

[PgSqlSerializable.anyMap]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/anyMap.html
[PgSqlSerializable.checked]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/checked.html
[PgSqlSerializable.createFactory]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/createFactory.html
[PgSqlSerializable.createToPgSql]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/createToPgSql.html
[PgSqlSerializable.disallowUnrecognizedKeys]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/disallowUnrecognizedKeys.html
[PgSqlSerializable.explicitToPgSql]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/explicitToPgSql.html
[PgSqlSerializable.fieldRename]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/fieldRename.html
[PgSqlSerializable.genericArgumentFactories]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/genericArgumentFactories.html
[PgSqlSerializable.ignoreUnannotated]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/ignoreUnannotated.html
[PgSqlSerializable.includeIfNull]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/includeIfNull.html
[PgSqlKey.includeIfNull]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/includeIfNull.html
[PgSqlSerializable.nullable]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/nullable.html
[PgSqlKey.nullable]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/nullable.html
[PgSqlKey.defaultValue]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/defaultValue.html
[PgSqlKey.disallowNullValue]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/disallowNullValue.html
[PgSqlKey.fromPgSql]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/fromPgSql.html
[PgSqlKey.ignore]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/ignore.html
[PgSqlKey.name]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/name.html
[PgSqlKey.required]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/required.html
[PgSqlKey.toPgSql]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/toPgSql.html
[PgSqlKey.unknownEnumValue]: https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlKey/unknownEnumValue.html
