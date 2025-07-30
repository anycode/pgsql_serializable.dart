// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_values_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

NestedValueExample _$NestedValueExampleFromPgSql(Map<String, dynamic> pgsql) =>
    NestedValueExample(
      const _NestedListConverter().fromPgSql(
        pgsql['root_items'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$NestedValueExampleToPgSql(NestedValueExample instance) =>
    <String, dynamic>{
      'root_items': const _NestedListConverter().toPgSql(instance.nestedValues),
    };
