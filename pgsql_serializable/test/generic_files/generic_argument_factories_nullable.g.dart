// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'generic_argument_factories_nullable.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

GenericClassWithHelpersNullable<T, S>
    _$GenericClassWithHelpersNullableFromPgSql<T, S>(
  Map<String, dynamic> pgsql,
  T Function(Object? pgsql) fromPgSqlT,
  S Function(Object? pgsql) fromPgSqlS,
) {
  return GenericClassWithHelpersNullable<T, S>(
    value: _$nullableGenericFromPgSql(pgsql['value'], fromPgSqlT),
    list: (pgsql['list'] as List<dynamic>?)
        ?.map((e) => _$nullableGenericFromPgSql(e, fromPgSqlT))
        .toList(),
    someSet: (pgsql['someSet'] as List<dynamic>?)
        ?.map((e) => _$nullableGenericFromPgSql(e, fromPgSqlS))
        .toSet(),
  );
}

Map<String, dynamic> _$GenericClassWithHelpersNullableToPgSql<T, S>(
  GenericClassWithHelpersNullable<T, S> instance,
  Object? Function(T value) toPgSqlT,
  Object? Function(S value) toPgSqlS,
) =>
    <String, dynamic>{
      'value': _$nullableGenericToPgSql(instance.value, toPgSqlT),
      'list': instance.list
          ?.map((e) => _$nullableGenericToPgSql(e, toPgSqlT))
          .toList(),
      'someSet': instance.someSet
          ?.map((e) => _$nullableGenericToPgSql(e, toPgSqlS))
          .toList(),
    };

T? _$nullableGenericFromPgSql<T>(
  Object? input,
  T Function(Object? pgsql) fromPgSql,
) =>
    input == null ? null : fromPgSql(input);

Object? _$nullableGenericToPgSql<T>(
  T? input,
  Object? Function(T value) toPgSql,
) =>
    input == null ? null : toPgSql(input);

ConcreteClassNullable _$ConcreteClassNullableFromPgSql(
    Map<String, dynamic> pgsql) {
  return ConcreteClassNullable(
    GenericClassWithHelpersNullable.fromPgSql(
        pgsql['value'] as Map<String, dynamic>,
        (value) => value as int,
        (value) => value as String),
    GenericClassWithHelpersNullable.fromPgSql(
        pgsql['value2'] as Map<String, dynamic>,
        (value) => (value as num).toDouble(),
        (value) => BigInt.parse(value as String)),
    GenericClassWithHelpersNullable.fromPgSql(
        pgsql['value3'] as Map<String, dynamic>,
        (value) => (value as num?)?.toDouble(),
        (value) => value == null ? null : BigInt.parse(value as String)),
  );
}

Map<String, dynamic> _$ConcreteClassNullableToPgSql(
        ConcreteClassNullable instance) =>
    <String, dynamic>{
      'value': instance.value.toPgSql(
        (value) => value,
        (value) => value,
      ),
      'value2': instance.value2.toPgSql(
        (value) => value,
        (value) => value.toString(),
      ),
      'value3': instance.value3.toPgSql(
        (value) => value,
        (value) => value?.toString(),
      ),
    };
