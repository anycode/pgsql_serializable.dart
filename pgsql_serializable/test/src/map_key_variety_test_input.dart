// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
MapKeyVariety _$MapKeyVarietyFromPgSql(Map<String, dynamic> pgsql) =>
    MapKeyVariety()
      ..intIntMap = (pgsql['intIntMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), (e as num).toInt()),
      );

Map<String, dynamic> _$MapKeyVarietyToPgSql(MapKeyVariety instance) =>
    <String, dynamic>{
      'intIntMap': instance.intIntMap.map((k, e) => MapEntry(k.toString(), e)),
    };
''')
@PgSqlSerializable()
class MapKeyVariety {
  late Map<int, int> intIntMap;
}

@ShouldThrow(r'''
Could not generate `fromPgSql` code for `value` because of type `Object?`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''')
@PgSqlSerializable()
class MapKeyNoNullableObject {
  late Map<Object?, int> value;
}

@ShouldThrow(r'''
Could not generate `fromPgSql` code for `value` because of type `String?`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''')
@PgSqlSerializable()
class MapKeyNoNullableString {
  late Map<String?, int> value;
}

@ShouldThrow(r'''
Could not generate `fromPgSql` code for `value` because of type `int?`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''')
@PgSqlSerializable()
class MapKeyNoNullableInt {
  late Map<int?, int> value;
}
