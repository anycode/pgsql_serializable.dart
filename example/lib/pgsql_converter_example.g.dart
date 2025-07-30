// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgsql_converter_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

DateTimeExample _$DateTimeExampleFromPgSql(Map<String, dynamic> pgsql) =>
    DateTimeExample(
      const _DateTimeEpochConverter().fromPgSql((pgsql['when'] as num).toInt()),
    );

Map<String, dynamic> _$DateTimeExampleToPgSql(DateTimeExample instance) =>
    <String, dynamic>{
      'when': const _DateTimeEpochConverter().toPgSql(instance.when),
    };

GenericCollection<T> _$GenericCollectionFromPgSql<T>(
  Map<String, dynamic> pgsql,
) => GenericCollection<T>(
  page: (pgsql['page'] as num?)?.toInt(),
  totalResults: (pgsql['total_results'] as num?)?.toInt(),
  totalPages: (pgsql['total_pages'] as num?)?.toInt(),
  results: (pgsql['results'] as List<dynamic>?)
      ?.map(_Converter<T>().fromPgSql)
      .toList(),
);

Map<String, dynamic> _$GenericCollectionToPgSql<T>(
  GenericCollection<T> instance,
) => <String, dynamic>{
  'page': instance.page,
  'total_results': instance.totalResults,
  'total_pages': instance.totalPages,
  'results': instance.results?.map(_Converter<T>().toPgSql).toList(),
};

CustomResult _$CustomResultFromPgSql(Map<String, dynamic> pgsql) =>
    CustomResult(pgsql['name'] as String, (pgsql['size'] as num).toInt());

Map<String, dynamic> _$CustomResultToPgSql(CustomResult instance) =>
    <String, dynamic>{'name': instance.name, 'size': instance.size};
