// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'generic_class.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

GenericClass<T, S> _$GenericClassFromPgSql<T extends num, S>(
  Map<String, dynamic> pgsql,
) => GenericClass<T, S>()
  ..fieldObject = GenericClass._dataFromPgSql(
    pgsql['fieldObject'] as Map<String, dynamic>,
  )
  ..fieldDynamic = GenericClass._dataFromPgSql(
    pgsql['fieldDynamic'] as Map<String, dynamic>,
  )
  ..fieldInt = GenericClass._dataFromPgSql(
    pgsql['fieldInt'] as Map<String, dynamic>,
  )
  ..fieldT = GenericClass._dataFromPgSql(pgsql['fieldT'] as Map<String, dynamic>)
  ..fieldS = GenericClass._dataFromPgSql(pgsql['fieldS'] as Map<String, dynamic>);

Map<String, dynamic> _$GenericClassToPgSql<T extends num, S>(
  GenericClass<T, S> instance,
) => <String, dynamic>{
  'fieldObject': GenericClass._dataToPgSql(instance.fieldObject),
  'fieldDynamic': GenericClass._dataToPgSql(instance.fieldDynamic),
  'fieldInt': GenericClass._dataToPgSql(instance.fieldInt),
  'fieldT': GenericClass._dataToPgSql(instance.fieldT),
  'fieldS': GenericClass._dataToPgSql(instance.fieldS),
};

GenericClassWithConverter<T, S> _$GenericClassWithConverterFromPgSql<
  T extends num,
  S
>(Map<String, dynamic> pgsql) => GenericClassWithConverter<T, S>()
  ..fieldObject = pgsql['fieldObject']
  ..fieldDynamic = pgsql['fieldDynamic']
  ..fieldInt = (pgsql['fieldInt'] as num?)?.toInt()
  ..fieldT = _$PgSqlConverterFromPgSql<Map<String, dynamic>, T>(
    pgsql['fieldT'],
    _SimpleConverter<T?>().fromPgSql,
  )
  ..fieldS = _$PgSqlConverterFromPgSql<Map<String, dynamic>, S>(
    pgsql['fieldS'],
    _SimpleConverter<S?>().fromPgSql,
  )
  ..duration = const _DurationMillisecondConverter.named().fromPgSql(
    (pgsql['duration'] as num?)?.toInt(),
  )
  ..listDuration = const _DurationListMillisecondConverter().fromPgSql(
    (pgsql['listDuration'] as num?)?.toInt(),
  );

Map<String, dynamic> _$GenericClassWithConverterToPgSql<T extends num, S>(
  GenericClassWithConverter<T, S> instance,
) => <String, dynamic>{
  'fieldObject': instance.fieldObject,
  'fieldDynamic': instance.fieldDynamic,
  'fieldInt': instance.fieldInt,
  'fieldT': _$PgSqlConverterToPgSql<Map<String, dynamic>, T>(
    instance.fieldT,
    _SimpleConverter<T?>().toPgSql,
  ),
  'fieldS': _$PgSqlConverterToPgSql<Map<String, dynamic>, S>(
    instance.fieldS,
    _SimpleConverter<S?>().toPgSql,
  ),
  'duration': const _DurationMillisecondConverter.named().toPgSql(
    instance.duration,
  ),
  'listDuration': const _DurationListMillisecondConverter().toPgSql(
    instance.listDuration,
  ),
};

Value? _$PgSqlConverterFromPgSql<PgSql, Value>(
  Object? pgsql,
  Value? Function(PgSql pgsql) fromPgSql,
) => pgsql == null ? null : fromPgSql(pgsql as PgSql);

PgSql? _$PgSqlConverterToPgSql<PgSql, Value>(
  Value? value,
  PgSql? Function(Value value) toPgSql,
) => value == null ? null : toPgSql(value);

Issue980ParentClass _$Issue980ParentClassFromPgSql(Map<String, dynamic> pgsql) =>
    Issue980ParentClass(
      (pgsql['list'] as List<dynamic>)
          .map(
            (e) =>
                Issue980GenericClass<int>.fromPgSql(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$Issue980ParentClassToPgSql(
  Issue980ParentClass instance,
) => <String, dynamic>{'list': instance.list};

Issue1047ParentClass<T> _$Issue1047ParentClassFromPgSql<T>(
  Map<String, dynamic> pgsql,
  T Function(Object? pgsql) fromPgSqlT,
) => Issue1047ParentClass<T>(
  edges: (pgsql['edges'] as List<dynamic>)
      .map(
        (e) => Issue1047Class<T>.fromPgSql(
          e as Map<String, dynamic>,
          (value) => fromPgSqlT(value),
        ),
      )
      .toList(),
);

Map<String, dynamic> _$Issue1047ParentClassToPgSql<T>(
  Issue1047ParentClass<T> instance,
  Object? Function(T value) toPgSqlT,
) => <String, dynamic>{
  'edges': instance.edges
      .map((e) => e.toPgSql((value) => toPgSqlT(value)))
      .toList(),
};

Issue1047Class<T> _$Issue1047ClassFromPgSql<T>(
  Map<String, dynamic> pgsql,
  T Function(Object? pgsql) fromPgSqlT,
) => Issue1047Class<T>(node: fromPgSqlT(pgsql['node']));

Map<String, dynamic> _$Issue1047ClassToPgSql<T>(
  Issue1047Class<T> instance,
  Object? Function(T value) toPgSqlT,
) => <String, dynamic>{'node': toPgSqlT(instance.node)};
