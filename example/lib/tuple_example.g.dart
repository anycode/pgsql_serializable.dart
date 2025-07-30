// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tuple_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Tuple<T, S> _$TupleFromPgSql<T, S>(
  Map<String, dynamic> pgsql,
  T Function(Object? pgsql) fromPgSqlT,
  S Function(Object? pgsql) fromPgSqlS,
) => Tuple<T, S>(fromPgSqlT(pgsql['value1']), fromPgSqlS(pgsql['value2']));

Map<String, dynamic> _$TupleToPgSql<T, S>(
  Tuple<T, S> instance,
  Object? Function(T value) toPgSqlT,
  Object? Function(S value) toPgSqlS,
) => <String, dynamic>{
  'value1': toPgSqlT(instance.value1),
  'value2': toPgSqlS(instance.value2),
};

ConcreteClass _$ConcreteClassFromPgSql(Map<String, dynamic> pgsql) =>
    ConcreteClass(
      Tuple<int, DateTime>.fromPgSql(
        pgsql['tuple1'] as Map<String, dynamic>,
        (value) => (value as num).toInt(),
        (value) => DateTime.parse(value as String),
      ),
      Tuple<Duration, BigInt>.fromPgSql(
        pgsql['tuple2'] as Map<String, dynamic>,
        (value) => Duration(microseconds: (value as num).toInt()),
        (value) => BigInt.parse(value as String),
      ),
    );

Map<String, dynamic> _$ConcreteClassToPgSql(ConcreteClass instance) =>
    <String, dynamic>{
      'tuple1': instance.tuple1.toPgSql(
        (value) => value,
        (value) => value.toIso8601String(),
      ),
      'tuple2': instance.tuple2.toPgSql(
        (value) => value.inMicroseconds,
        (value) => value.toString(),
      ),
    };
