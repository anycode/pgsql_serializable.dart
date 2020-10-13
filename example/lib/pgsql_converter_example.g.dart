// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgsql_converter_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DateTimeExample _$DateTimeExampleFromPgSql(Map<String, dynamic> pgsql) {
  return DateTimeExample(
    const _DateTimeEpochConverter().fromPgSql(pgsql['when'] as int),
  );
}

Map<String, dynamic> _$DateTimeExampleToPgSql(DateTimeExample instance) =>
    <String, dynamic>{
      'when': const _DateTimeEpochConverter().toPgSql(instance.when),
    };

GenericCollection<T> _$GenericCollectionFromPgSql<T>(Map<String, dynamic> pgsql) {
  return GenericCollection<T>(
    page: pgsql['page'] as int,
    totalResults: pgsql['total_results'] as int,
    totalPages: pgsql['total_pages'] as int,
    results: (pgsql['results'] as List)?.map(_Converter<T>().fromPgSql)?.toList(),
  );
}

Map<String, dynamic> _$GenericCollectionToPgSql<T>(
        GenericCollection<T> instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total_results': instance.totalResults,
      'total_pages': instance.totalPages,
      'results': instance.results?.map(_Converter<T>().toPgSql)?.toList(),
    };

CustomResult _$CustomResultFromPgSql(Map<String, dynamic> pgsql) {
  return CustomResult(
    pgsql['name'] as String,
    pgsql['size'] as int,
  );
}

Map<String, dynamic> _$CustomResultToPgSql(CustomResult instance) =>
    <String, dynamic>{
      'name': instance.name,
      'size': instance.size,
    };
