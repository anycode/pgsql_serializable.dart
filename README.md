**This is clone of Json Annotation modified to generate code for PostgreSQL
RDBM just to allow to generate different code from JSON maps and PgSQL data
fetched by PostgreSQL Dart library (postgresql2).**

Provides [source_gen] `Generator`s to create code for PgSQL deserialization.

## pgsql_serializable

* [Source code](pgsql_serializable)

The core package providing Generators for PgSQL-specific tasks.

Import it into your pubspec `dev_dependencies:` section.

## pgsql_annotation

* [Source code](pgsql_annotation)

The annotation package which has no dependencies.

Import it into your pubspec `dependencies:` section.

## checked_yaml [![Pub Package](https://img.shields.io/pub/v/checked_yaml.svg)](https://pub.dev/packages/checked_yaml)

* Package: https://pub.dev/packages/checked_yaml
* [Source code](checked_yaml)

Generate more helpful exceptions when decoding YAML documents using
`package:pgsql_serializable` and `package:yaml`.

Import it into your pubspec `dependencies:` section.
