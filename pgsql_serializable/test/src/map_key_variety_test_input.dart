part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
MapKeyVariety _$MapKeyVarietyFromPgSql(Map<String, dynamic> pgsql) {
  return MapKeyVariety()
    ..intIntMap = (pgsql['intIntMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k), e as int),
    );
}

Map<String, dynamic> _$MapKeyVarietyToPgSql(MapKeyVariety instance) =>
    <String, dynamic>{
      'intIntMap': instance.intIntMap?.map((k, e) => MapEntry(k.toString(), e)),
    };
''')
@PgSqlSerializable()
class MapKeyVariety {
  Map<int, int> intIntMap;
}
