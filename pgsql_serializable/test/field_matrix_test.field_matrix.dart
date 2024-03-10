import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'field_matrix_test.field_matrix.g.dart';

@PgSqlSerializable()
class ToPgSqlNullFromPgSqlNullPublic {
  ToPgSqlNullFromPgSqlNullPublic();

  int? aField;

  int? field;

  int? zField;

  factory ToPgSqlNullFromPgSqlNullPublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlNullFromPgSqlNullPublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlNullFromPgSqlNullPublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlNullFromPgSqlNullPublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlNullFromPgSqlTruePublic {
  ToPgSqlNullFromPgSqlTruePublic();

  int? aField;

  @PgSqlKey(
    includeFromPgSql: true,
  )
  int? field;

  int? zField;

  factory ToPgSqlNullFromPgSqlTruePublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlNullFromPgSqlTruePublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlNullFromPgSqlTruePublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlNullFromPgSqlTruePublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlNullFromPgSqlFalsePublic {
  ToPgSqlNullFromPgSqlFalsePublic();

  int? aField;

  @PgSqlKey(
    includeFromPgSql: false,
  )
  int? field;

  int? zField;

  factory ToPgSqlNullFromPgSqlFalsePublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlNullFromPgSqlFalsePublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlNullFromPgSqlFalsePublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlNullFromPgSqlFalsePublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlTrueFromPgSqlNullPublic {
  ToPgSqlTrueFromPgSqlNullPublic();

  int? aField;

  @PgSqlKey(
    includeToPgSql: true,
  )
  int? field;

  int? zField;

  factory ToPgSqlTrueFromPgSqlNullPublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlTrueFromPgSqlNullPublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlTrueFromPgSqlNullPublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlTrueFromPgSqlNullPublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlTrueFromPgSqlTruePublic {
  ToPgSqlTrueFromPgSqlTruePublic();

  int? aField;

  @PgSqlKey(
    includeFromPgSql: true,
    includeToPgSql: true,
  )
  int? field;

  int? zField;

  factory ToPgSqlTrueFromPgSqlTruePublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlTrueFromPgSqlTruePublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlTrueFromPgSqlTruePublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlTrueFromPgSqlTruePublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlTrueFromPgSqlFalsePublic {
  ToPgSqlTrueFromPgSqlFalsePublic();

  int? aField;

  @PgSqlKey(
    includeFromPgSql: false,
    includeToPgSql: true,
  )
  int? field;

  int? zField;

  factory ToPgSqlTrueFromPgSqlFalsePublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlTrueFromPgSqlFalsePublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlTrueFromPgSqlFalsePublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlTrueFromPgSqlFalsePublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlFalseFromPgSqlNullPublic {
  ToPgSqlFalseFromPgSqlNullPublic();

  int? aField;

  @PgSqlKey(
    includeToPgSql: false,
  )
  int? field;

  int? zField;

  factory ToPgSqlFalseFromPgSqlNullPublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlFalseFromPgSqlNullPublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlFalseFromPgSqlNullPublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlFalseFromPgSqlNullPublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlFalseFromPgSqlTruePublic {
  ToPgSqlFalseFromPgSqlTruePublic();

  int? aField;

  @PgSqlKey(
    includeFromPgSql: true,
    includeToPgSql: false,
  )
  int? field;

  int? zField;

  factory ToPgSqlFalseFromPgSqlTruePublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlFalseFromPgSqlTruePublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlFalseFromPgSqlTruePublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlFalseFromPgSqlTruePublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlFalseFromPgSqlFalsePublic {
  ToPgSqlFalseFromPgSqlFalsePublic();

  int? aField;

  @PgSqlKey(
    includeFromPgSql: false,
    includeToPgSql: false,
  )
  int? field;

  int? zField;

  factory ToPgSqlFalseFromPgSqlFalsePublic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlFalseFromPgSqlFalsePublicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlFalseFromPgSqlFalsePublicToPgSql(this);

  @override
  String toString() => 'ToPgSqlFalseFromPgSqlFalsePublic: field: $field';
}

@PgSqlSerializable()
class ToPgSqlNullFromPgSqlNullPrivate {
  ToPgSqlNullFromPgSqlNullPrivate();

  int? aField;

  @PgSqlKey(name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlNullFromPgSqlNullPrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlNullFromPgSqlNullPrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlNullFromPgSqlNullPrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlNullFromPgSqlNullPrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlNullFromPgSqlTruePrivate {
  ToPgSqlNullFromPgSqlTruePrivate();

  int? aField;

  @PgSqlKey(includeFromPgSql: true, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlNullFromPgSqlTruePrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlNullFromPgSqlTruePrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlNullFromPgSqlTruePrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlNullFromPgSqlTruePrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlNullFromPgSqlFalsePrivate {
  ToPgSqlNullFromPgSqlFalsePrivate();

  int? aField;

  @PgSqlKey(includeFromPgSql: false, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlNullFromPgSqlFalsePrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlNullFromPgSqlFalsePrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlNullFromPgSqlFalsePrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlNullFromPgSqlFalsePrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlTrueFromPgSqlNullPrivate {
  ToPgSqlTrueFromPgSqlNullPrivate();

  int? aField;

  @PgSqlKey(includeToPgSql: true, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlTrueFromPgSqlNullPrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlTrueFromPgSqlNullPrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlTrueFromPgSqlNullPrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlTrueFromPgSqlNullPrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlTrueFromPgSqlTruePrivate {
  ToPgSqlTrueFromPgSqlTruePrivate();

  int? aField;

  @PgSqlKey(includeFromPgSql: true, includeToPgSql: true, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlTrueFromPgSqlTruePrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlTrueFromPgSqlTruePrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlTrueFromPgSqlTruePrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlTrueFromPgSqlTruePrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlTrueFromPgSqlFalsePrivate {
  ToPgSqlTrueFromPgSqlFalsePrivate();

  int? aField;

  @PgSqlKey(includeFromPgSql: false, includeToPgSql: true, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlTrueFromPgSqlFalsePrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlTrueFromPgSqlFalsePrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlTrueFromPgSqlFalsePrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlTrueFromPgSqlFalsePrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlFalseFromPgSqlNullPrivate {
  ToPgSqlFalseFromPgSqlNullPrivate();

  int? aField;

  @PgSqlKey(includeToPgSql: false, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlFalseFromPgSqlNullPrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlFalseFromPgSqlNullPrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlFalseFromPgSqlNullPrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlFalseFromPgSqlNullPrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlFalseFromPgSqlTruePrivate {
  ToPgSqlFalseFromPgSqlTruePrivate();

  int? aField;

  @PgSqlKey(includeFromPgSql: true, includeToPgSql: false, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlFalseFromPgSqlTruePrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlFalseFromPgSqlTruePrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ToPgSqlFalseFromPgSqlTruePrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlFalseFromPgSqlTruePrivate: _field: $_field';
}

@PgSqlSerializable()
class ToPgSqlFalseFromPgSqlFalsePrivate {
  ToPgSqlFalseFromPgSqlFalsePrivate();

  int? aField;

  @PgSqlKey(includeFromPgSql: false, includeToPgSql: false, name: 'field')
  int? _field;

  int? zField;

  factory ToPgSqlFalseFromPgSqlFalsePrivate.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ToPgSqlFalseFromPgSqlFalsePrivateFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() =>
      _$ToPgSqlFalseFromPgSqlFalsePrivateToPgSql(this);

  @override
  String toString() => 'ToPgSqlFalseFromPgSqlFalsePrivate: _field: $_field';
}

const fromPgSqlFactories = <Object Function(Map<String, dynamic>)>{
  ToPgSqlNullFromPgSqlNullPublic.fromPgSql,
  ToPgSqlNullFromPgSqlTruePublic.fromPgSql,
  ToPgSqlNullFromPgSqlFalsePublic.fromPgSql,
  ToPgSqlTrueFromPgSqlNullPublic.fromPgSql,
  ToPgSqlTrueFromPgSqlTruePublic.fromPgSql,
  ToPgSqlTrueFromPgSqlFalsePublic.fromPgSql,
  ToPgSqlFalseFromPgSqlNullPublic.fromPgSql,
  ToPgSqlFalseFromPgSqlTruePublic.fromPgSql,
  ToPgSqlFalseFromPgSqlFalsePublic.fromPgSql,
  ToPgSqlNullFromPgSqlNullPrivate.fromPgSql,
  ToPgSqlNullFromPgSqlTruePrivate.fromPgSql,
  ToPgSqlNullFromPgSqlFalsePrivate.fromPgSql,
  ToPgSqlTrueFromPgSqlNullPrivate.fromPgSql,
  ToPgSqlTrueFromPgSqlTruePrivate.fromPgSql,
  ToPgSqlTrueFromPgSqlFalsePrivate.fromPgSql,
  ToPgSqlFalseFromPgSqlNullPrivate.fromPgSql,
  ToPgSqlFalseFromPgSqlTruePrivate.fromPgSql,
  ToPgSqlFalseFromPgSqlFalsePrivate.fromPgSql,
};
