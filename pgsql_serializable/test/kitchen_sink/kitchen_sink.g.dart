// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'kitchen_sink.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map<String, dynamic> pgsql) =>
    KitchenSink(
        ctorValidatedNo42: (pgsql['no-42'] as num?)?.toInt(),
        iterable: _valueAccessor(pgsql, 'iterable') as List<dynamic>?,
        dynamicIterable: pgsql['dynamicIterable'] as List<dynamic>?,
        objectIterable: (pgsql['objectIterable'] as List<dynamic>?)?.map(
          (e) => e as Object,
        ),
        intIterable: (pgsql['intIterable'] as List<dynamic>?)?.map(
          (e) => (e as num).toInt(),
        ),
        dateTimeIterable: (pgsql['datetime-iterable'] as List<dynamic>?)?.map(
          (e) => DateTime.parse(e as String),
        ),
      )
      ..dateTime = pgsql['dateTime'] == null
          ? null
          : DateTime.parse(pgsql['dateTime'] as String)
      ..bigInt = pgsql['bigInt'] == null
          ? null
          : BigInt.parse(pgsql['bigInt'] as String)
      ..set = (pgsql['set'] as List<dynamic>).toSet()
      ..dynamicSet = (pgsql['dynamicSet'] as List<dynamic>).toSet()
      ..objectSet = (pgsql['objectSet'] as List<dynamic>)
          .map((e) => e as Object)
          .toSet()
      ..intSet = (pgsql['intSet'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toSet()
      ..dateTimeSet = (pgsql['dateTimeSet'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toSet()
      ..list = pgsql['list'] as List<dynamic>
      ..dynamicList = pgsql['dynamicList'] as List<dynamic>
      ..objectList = (pgsql['objectList'] as List<dynamic>)
          .map((e) => e as Object)
          .toList()
      ..intList = (pgsql['intList'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList()
      ..dateTimeList = (pgsql['dateTimeList'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList()
      ..nullableSimpleObjectList =
          (pgsql['nullableSimpleObjectList'] as List<dynamic>)
              .map(
                (e) => e == null
                    ? null
                    : SimpleObject.fromPgSql(e as Map<String, dynamic>),
              )
              .toList()
      ..map = pgsql['map'] as Map<String, dynamic>
      ..stringStringMap = Map<String, String>.from(
        pgsql['stringStringMap'] as Map,
      )
      ..dynamicIntMap = Map<String, int>.from(pgsql['dynamicIntMap'] as Map)
      ..objectDateTimeMap = (pgsql['objectDateTimeMap'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, DateTime.parse(e as String)))
      ..nullableSimpleObjectMap =
          (pgsql['nullableSimpleObjectMap'] as Map<String, dynamic>).map(
            (k, e) => MapEntry(
              k,
              e == null
                  ? null
                  : SimpleObject.fromPgSql(e as Map<String, dynamic>),
            ),
          )
      ..crazyComplex = (pgsql['crazyComplex'] as List<dynamic>)
          .map(
            (e) => (e as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(
                k,
                (e as Map<String, dynamic>?)?.map(
                  (k, e) => MapEntry(
                    k,
                    (e as List<dynamic>?)
                        ?.map(
                          (e) => (e as List<dynamic>?)
                              ?.map((e) => DateTime.parse(e as String))
                              .toList(),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          )
          .toList()
      ..val = Map<String, bool>.from(pgsql['val'] as Map)
      ..writeNotNull = pgsql['writeNotNull'] as bool?
      ..string = KitchenSink._trickyValueAccessor(pgsql, r'$string') as String?
      ..simpleObject = SimpleObject.fromPgSql(
        pgsql['simpleObject'] as Map<String, dynamic>,
      )
      ..strictKeysObject = StrictKeysObject.fromPgSql(
        pgsql['strictKeysObject'] as Map<String, dynamic>,
      )
      ..validatedPropertyNo42 = (pgsql['validatedPropertyNo42'] as num?)?.toInt()
      ..recordField = _$recordConvertNullable(
        pgsql['recordField'],
        ($pgsqlValue) => (
          ($pgsqlValue[r'$1'] as num).toInt(),
          $pgsqlValue[r'$2'] as String,
          truth: $pgsqlValue['truth'] as bool,
        ),
      );

Map<String, dynamic> _$KitchenSinkToPgSql(
  KitchenSink instance,
) => <String, dynamic>{
  'no-42': instance.ctorValidatedNo42,
  'dateTime': instance.dateTime?.toIso8601String(),
  'bigInt': instance.bigInt?.toString(),
  'iterable': instance.iterable?.toList(),
  'dynamicIterable': instance.dynamicIterable.toList(),
  'objectIterable': instance.objectIterable.toList(),
  'intIterable': instance.intIterable.toList(),
  'set': instance.set.toList(),
  'dynamicSet': instance.dynamicSet.toList(),
  'objectSet': instance.objectSet.toList(),
  'intSet': instance.intSet.toList(),
  'dateTimeSet': instance.dateTimeSet.map((e) => e.toIso8601String()).toList(),
  'datetime-iterable': instance.dateTimeIterable
      .map((e) => e.toIso8601String())
      .toList(),
  'list': instance.list,
  'dynamicList': instance.dynamicList,
  'objectList': instance.objectList,
  'intList': instance.intList,
  'dateTimeList': instance.dateTimeList
      .map((e) => e.toIso8601String())
      .toList(),
  'nullableSimpleObjectList': instance.nullableSimpleObjectList,
  'map': instance.map,
  'stringStringMap': instance.stringStringMap,
  'dynamicIntMap': instance.dynamicIntMap,
  'objectDateTimeMap': instance.objectDateTimeMap.map(
    (k, e) => MapEntry(k, e.toIso8601String()),
  ),
  'nullableSimpleObjectMap': instance.nullableSimpleObjectMap,
  'crazyComplex': instance.crazyComplex
      .map(
        (e) => e?.map(
          (k, e) => MapEntry(
            k,
            e?.map(
              (k, e) => MapEntry(
                k,
                e
                    ?.map((e) => e?.map((e) => e.toIso8601String()).toList())
                    .toList(),
              ),
            ),
          ),
        ),
      )
      .toList(),
  'val': instance.val,
  'writeNotNull': instance.writeNotNull,
  r'$string': instance.string,
  'simpleObject': instance.simpleObject,
  'strictKeysObject': instance.strictKeysObject,
  'validatedPropertyNo42': instance.validatedPropertyNo42,
  'recordField': instance.recordField == null
      ? null
      : <String, dynamic>{
          r'$1': instance.recordField!.$1,
          r'$2': instance.recordField!.$2,
          'truth': instance.recordField!.truth,
        },
};

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) => value == null ? null : convert(value as Map<String, dynamic>);

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(
  Map<String, dynamic> pgsql,
) => PgSqlConverterTestClass(
  const DurationMillisecondConverter().fromPgSql(
    (pgsql['duration'] as num?)?.toInt(),
  ),
  (pgsql['durationList'] as List<dynamic>)
      .map(
        (e) =>
            const DurationMillisecondConverter().fromPgSql((e as num?)?.toInt()),
      )
      .toList(),
  const BigIntStringConverter().fromPgSql(pgsql['bigInt'] as String),
  (pgsql['bigIntMap'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, const BigIntStringConverter().fromPgSql(e as String)),
  ),
  _$PgSqlConverterFromPgSql<String, BigInt>(
    pgsql['nullableBigInt'],
    const BigIntStringConverter().fromPgSql,
  ),
  (pgsql['nullableBigIntMap'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(
      k,
      _$PgSqlConverterFromPgSql<String, BigInt>(
        e,
        const BigIntStringConverter().fromPgSql,
      ),
    ),
  ),
  TrivialNumberConverter.instance.fromPgSql(
    (pgsql['numberSilly'] as num?)?.toInt(),
  ),
  (pgsql['numberSillySet'] as List<dynamic>)
      .map(
        (e) => TrivialNumberConverter.instance.fromPgSql((e as num?)?.toInt()),
      )
      .toSet(),
  const EpochDateTimeConverter().fromPgSql((pgsql['dateTime'] as num?)?.toInt()),
  trivialStringConverter.fromPgSql(pgsql['trivialString'] as String?),
  TrivialNumberConverter.instance.fromPgSql(
    (pgsql['nullableNumberSilly'] as num?)?.toInt(),
  ),
  (pgsql['nullableNumberSillySet'] as List<dynamic>)
      .map(
        (e) => TrivialNumberConverter.instance.fromPgSql((e as num?)?.toInt()),
      )
      .toSet(),
);

Map<String, dynamic> _$PgSqlConverterTestClassToPgSql(
  PgSqlConverterTestClass instance,
) => <String, dynamic>{
  'duration': const DurationMillisecondConverter().toPgSql(instance.duration),
  'durationList': instance.durationList
      .map(const DurationMillisecondConverter().toPgSql)
      .toList(),
  'bigInt': const BigIntStringConverter().toPgSql(instance.bigInt),
  'bigIntMap': instance.bigIntMap.map(
    (k, e) => MapEntry(k, const BigIntStringConverter().toPgSql(e)),
  ),
  'nullableBigInt': _$PgSqlConverterToPgSql<String, BigInt>(
    instance.nullableBigInt,
    const BigIntStringConverter().toPgSql,
  ),
  'nullableBigIntMap': instance.nullableBigIntMap.map(
    (k, e) => MapEntry(
      k,
      _$PgSqlConverterToPgSql<String, BigInt>(
        e,
        const BigIntStringConverter().toPgSql,
      ),
    ),
  ),
  'numberSilly': TrivialNumberConverter.instance.toPgSql(instance.numberSilly),
  'numberSillySet': instance.numberSillySet
      .map(TrivialNumberConverter.instance.toPgSql)
      .toList(),
  'dateTime': const EpochDateTimeConverter().toPgSql(instance.dateTime),
  'trivialString': trivialStringConverter.toPgSql(instance.trivialString),
  'nullableNumberSilly': _$PgSqlConverterToPgSql<int?, TrivialNumber>(
    instance.nullableNumberSilly,
    TrivialNumberConverter.instance.toPgSql,
  ),
  'nullableNumberSillySet': instance.nullableNumberSillySet
      .map(
        (e) => _$PgSqlConverterToPgSql<int?, TrivialNumber>(
          e,
          TrivialNumberConverter.instance.toPgSql,
        ),
      )
      .toList(),
};

Value? _$PgSqlConverterFromPgSql<PgSql, Value>(
  Object? pgsql,
  Value? Function(PgSql pgsql) fromPgSql,
) => pgsql == null ? null : fromPgSql(pgsql as PgSql);

PgSql? _$PgSqlConverterToPgSql<PgSql, Value>(
  Value? value,
  PgSql? Function(Value value) toPgSql,
) => value == null ? null : toPgSql(value);

PgSqlConverterGeneric<S, T, U> _$PgSqlConverterGenericFromPgSql<S, T, U>(
  Map<String, dynamic> pgsql,
) => PgSqlConverterGeneric<S, T, U>(
  GenericConverter<S>().fromPgSql(pgsql['item'] as Map<String, dynamic>),
  (pgsql['itemList'] as List<dynamic>)
      .map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
      .toList(),
  (pgsql['itemMap'] as Map<String, dynamic>).map(
    (k, e) =>
        MapEntry(k, GenericConverter<U>().fromPgSql(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$PgSqlConverterGenericToPgSql<S, T, U>(
  PgSqlConverterGeneric<S, T, U> instance,
) => <String, dynamic>{
  'item': GenericConverter<S>().toPgSql(instance.item),
  'itemList': instance.itemList.map(GenericConverter<T>().toPgSql).toList(),
  'itemMap': instance.itemMap.map(
    (k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e)),
  ),
};
