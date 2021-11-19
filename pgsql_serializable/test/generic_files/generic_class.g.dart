// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars

part of 'generic_class.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

GenericClass<T, S> _$GenericClassFromPgSql<T extends num, S>(
        Map<String, dynamic> pgsql) =>
    GenericClass<T, S>()
      ..fieldObject = GenericClass._dataFromPgSql(
          pgsql['fieldObject'] as Map<String, dynamic>)
      ..fieldDynamic = GenericClass._dataFromPgSql(
          pgsql['fieldDynamic'] as Map<String, dynamic>)
      ..fieldInt =
          GenericClass._dataFromPgSql(pgsql['fieldInt'] as Map<String, dynamic>)
      ..fieldT =
          GenericClass._dataFromPgSql(pgsql['fieldT'] as Map<String, dynamic>)
      ..fieldS =
          GenericClass._dataFromPgSql(pgsql['fieldS'] as Map<String, dynamic>);

Map<String, dynamic> _$GenericClassToPgSql<T extends num, S>(
        GenericClass<T, S> instance) =>
    <String, dynamic>{
      'fieldObject': GenericClass._dataToPgSql(instance.fieldObject),
      'fieldDynamic': GenericClass._dataToPgSql(instance.fieldDynamic),
      'fieldInt': GenericClass._dataToPgSql(instance.fieldInt),
      'fieldT': GenericClass._dataToPgSql(instance.fieldT),
      'fieldS': GenericClass._dataToPgSql(instance.fieldS),
    };

GenericClassWithConverter<T, S>
    _$GenericClassWithConverterFromPgSql<T extends num, S>(
            Map<String, dynamic> pgsql) =>
        GenericClassWithConverter<T, S>()
          ..fieldObject = pgsql['fieldObject']
          ..fieldDynamic = pgsql['fieldDynamic']
          ..fieldInt = pgsql['fieldInt'] as int?
          ..fieldT = _SimpleConverter<T?>()
              .fromPgSql(pgsql['fieldT'] as Map<String, dynamic>)
          ..fieldS = _SimpleConverter<S?>()
              .fromPgSql(pgsql['fieldS'] as Map<String, dynamic>)
          ..duration = const _DurationMillisecondConverter.named()
              .fromPgSql(pgsql['duration'] as int?)
          ..listDuration = const _DurationListMillisecondConverter()
              .fromPgSql(pgsql['listDuration'] as int?);

Map<String, dynamic> _$GenericClassWithConverterToPgSql<T extends num, S>(
        GenericClassWithConverter<T, S> instance) =>
    <String, dynamic>{
      'fieldObject': instance.fieldObject,
      'fieldDynamic': instance.fieldDynamic,
      'fieldInt': instance.fieldInt,
      'fieldT': _SimpleConverter<T?>().toPgSql(instance.fieldT),
      'fieldS': _SimpleConverter<S?>().toPgSql(instance.fieldS),
      'duration': const _DurationMillisecondConverter.named()
          .toPgSql(instance.duration),
      'listDuration': const _DurationListMillisecondConverter()
          .toPgSql(instance.listDuration),
    };

Issue980ParentClass _$Issue980ParentClassFromPgSql(
        Map<String, dynamic> pgsql) =>
    Issue980ParentClass(
      (pgsql['list'] as List<dynamic>)
          .map((e) =>
              Issue980GenericClass<int>.fromPgSql(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Issue980ParentClassToPgSql(
        Issue980ParentClass instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
