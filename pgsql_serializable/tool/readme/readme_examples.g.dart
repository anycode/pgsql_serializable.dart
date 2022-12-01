// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'readme_examples.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Sample1 _$Sample1FromPgSql(Map<String, dynamic> pgsql) => Sample1(
      Sample2.fromPgSql(pgsql['value'] as int),
    );

Map<String, dynamic> _$Sample1ToPgSql(Sample1 instance) => <String, dynamic>{
      'value': instance.value,
    };

Sample3 _$Sample3FromPgSql(Map<String, dynamic> pgsql) => Sample3(
      Sample3._fromPgSql(pgsql['value'] as int),
    );

Map<String, dynamic> _$Sample3ToPgSql(Sample3 instance) => <String, dynamic>{
      'value': Sample3._toPgSql(instance.value),
    };

Sample4 _$Sample4FromPgSql(Map<String, dynamic> pgsql) => Sample4(
      const EpochDateTimeConverter().fromPgSql(pgsql['value'] as int),
    );

Map<String, dynamic> _$Sample4ToPgSql(Sample4 instance) => <String, dynamic>{
      'value': const EpochDateTimeConverter().toPgSql(instance.value),
    };
