// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_argument_factories.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

GenericClassWithHelpers<T, S> _$GenericClassWithHelpersFromPgSql<T, S>(
  Map<String, dynamic> pgsql,
  T Function(Object? pgsql) fromPgSqlT,
  S Function(Object? pgsql) fromPgSqlS,
) {
  return GenericClassWithHelpers<T, S>(
    fromPgSqlT(pgsql['value']),
    (pgsql['list'] as List<dynamic>).map(fromPgSqlT).toList(),
    (pgsql['someSet'] as List<dynamic>).map(fromPgSqlS).toSet(),
  );
}

Map<String, dynamic> _$GenericClassWithHelpersToPgSql<T, S>(
  GenericClassWithHelpers<T, S> instance,
  Object? Function(T value) toPgSqlT,
  Object? Function(S value) toPgSqlS,
) =>
    <String, dynamic>{
      'value': toPgSqlT(instance.value),
      'list': instance.list.map(toPgSqlT).toList(),
      'someSet': instance.someSet.map(toPgSqlS).toList(),
    };

ConcreteClass _$ConcreteClassFromPgSql(Map<String, dynamic> pgsql) {
  return ConcreteClass(
    GenericClassWithHelpers.fromPgSql(pgsql['value'] as Map<String, dynamic>,
        (value) => value as int, (value) => value as String),
    GenericClassWithHelpers.fromPgSql(
        pgsql['value2'] as Map<String, dynamic>,
        (value) => (value as num).toDouble(),
        (value) => BigInt.parse(value as String)),
    GenericClassWithHelpers.fromPgSql(
        pgsql['value3'] as Map<String, dynamic>,
        (value) => (value as num?)?.toDouble(),
        (value) => value == null ? null : BigInt.parse(value as String)),
  );
}

Map<String, dynamic> _$ConcreteClassToPgSql(ConcreteClass instance) =>
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
