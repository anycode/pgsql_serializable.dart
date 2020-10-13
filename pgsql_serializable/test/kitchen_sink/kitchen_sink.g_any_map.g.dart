// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.g_any_map.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map pgsql) {
  return KitchenSink(
    ctorValidatedNo42: pgsql['no-42'] as int,
    iterable: pgsql['iterable'] as List,
    dynamicIterable: pgsql['dynamicIterable'] as List,
    objectIterable: pgsql['objectIterable'] as List,
    intIterable: (pgsql['intIterable'] as List)?.map((e) => e as int),
    dateTimeIterable: (pgsql['datetime-iterable'] as List)
        ?.map((e) => e == null ? null : DateTime.parse(e as String)),
  )
    ..dateTime = pgsql['dateTime'] == null
        ? null
        : DateTime.parse(pgsql['dateTime'] as String)
    ..bigInt =
        pgsql['bigInt'] == null ? null : BigInt.parse(pgsql['bigInt'] as String)
    ..set = (pgsql['set'] as List)?.toSet()
    ..dynamicSet = (pgsql['dynamicSet'] as List)?.toSet()
    ..objectSet = (pgsql['objectSet'] as List)?.toSet()
    ..intSet = (pgsql['intSet'] as List)?.map((e) => e as int)?.toSet()
    ..dateTimeSet = (pgsql['dateTimeSet'] as List)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        ?.toSet()
    ..list = pgsql['list'] as List
    ..dynamicList = pgsql['dynamicList'] as List
    ..objectList = pgsql['objectList'] as List
    ..intList = (pgsql['intList'] as List)?.map((e) => e as int)?.toList()
    ..dateTimeList = (pgsql['dateTimeList'] as List)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        ?.toList()
    ..map = pgsql['map'] as Map
    ..stringStringMap = (pgsql['stringStringMap'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as String),
    )
    ..dynamicIntMap = (pgsql['dynamicIntMap'] as Map)?.map(
      (k, e) => MapEntry(k, e as int),
    )
    ..objectDateTimeMap = (pgsql['objectDateTimeMap'] as Map)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    )
    ..crazyComplex = (pgsql['crazyComplex'] as List)
        ?.map((e) => (e as Map)?.map(
              (k, e) => MapEntry(
                  k as String,
                  (e as Map)?.map(
                    (k, e) => MapEntry(
                        k as String,
                        (e as List)
                            ?.map((e) => (e as List)
                                ?.map((e) => e == null
                                    ? null
                                    : DateTime.parse(e as String))
                                ?.toList())
                            ?.toList()),
                  )),
            ))
        ?.toList()
    ..val = (pgsql['val'] as Map)?.map(
      (k, e) => MapEntry(k as String, e as bool),
    )
    ..writeNotNull = pgsql['writeNotNull'] as bool
    ..string = pgsql[r'$string'] as String
    ..simpleObject = pgsql['simpleObject'] == null
        ? null
        : SimpleObject.fromPgSql(pgsql['simpleObject'] as Map)
    ..strictKeysObject = pgsql['strictKeysObject'] == null
        ? null
        : StrictKeysObject.fromPgSql(pgsql['strictKeysObject'] as Map)
    ..validatedPropertyNo42 = pgsql['validatedPropertyNo42'] as int;
}

Map<String, dynamic> _$KitchenSinkToPgSql(KitchenSink instance) =>
    <String, dynamic>{
      'no-42': instance.ctorValidatedNo42,
      'dateTime': instance.dateTime?.toIso8601String(),
      'bigInt': instance.bigInt?.toString(),
      'iterable': instance.iterable?.toList(),
      'dynamicIterable': instance.dynamicIterable?.toList(),
      'objectIterable': instance.objectIterable?.toList(),
      'intIterable': instance.intIterable?.toList(),
      'set': instance.set?.toList(),
      'dynamicSet': instance.dynamicSet?.toList(),
      'objectSet': instance.objectSet?.toList(),
      'intSet': instance.intSet?.toList(),
      'dateTimeSet':
          instance.dateTimeSet?.map((e) => e?.toIso8601String())?.toList(),
      'datetime-iterable':
          instance.dateTimeIterable?.map((e) => e?.toIso8601String())?.toList(),
      'list': instance.list,
      'dynamicList': instance.dynamicList,
      'objectList': instance.objectList,
      'intList': instance.intList,
      'dateTimeList':
          instance.dateTimeList?.map((e) => e?.toIso8601String())?.toList(),
      'map': instance.map,
      'stringStringMap': instance.stringStringMap,
      'dynamicIntMap': instance.dynamicIntMap,
      'objectDateTimeMap': instance.objectDateTimeMap
          ?.map((k, e) => MapEntry(k, e?.toIso8601String())),
      'crazyComplex': instance.crazyComplex
          ?.map((e) => e?.map((k, e) => MapEntry(
              k,
              e?.map((k, e) => MapEntry(
                  k,
                  e
                      ?.map(
                          (e) => e?.map((e) => e?.toIso8601String())?.toList())
                      ?.toList())))))
          ?.toList(),
      'val': instance.val,
      'writeNotNull': instance.writeNotNull,
      r'$string': instance.string,
      'simpleObject': instance.simpleObject,
      'strictKeysObject': instance.strictKeysObject,
      'validatedPropertyNo42': instance.validatedPropertyNo42,
    };

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(Map pgsql) {
  return PgSqlConverterTestClass()
    ..duration = durationConverter.fromPgSql(pgsql['duration'] as int)
    ..durationList = (pgsql['durationList'] as List)
        ?.map((e) => durationConverter.fromPgSql(e as int))
        ?.toList()
    ..bigInt = const BigIntStringConverter().fromPgSql(pgsql['bigInt'] as String)
    ..bigIntMap = (pgsql['bigIntMap'] as Map)?.map(
      (k, e) => MapEntry(
          k as String, const BigIntStringConverter().fromPgSql(e as String)),
    )
    ..numberSilly =
        TrivialNumberConverter.instance.fromPgSql(pgsql['numberSilly'] as int)
    ..numberSillySet = (pgsql['numberSillySet'] as List)
        ?.map((e) => TrivialNumberConverter.instance.fromPgSql(e as int))
        ?.toSet()
    ..dateTime =
        const EpochDateTimeConverter().fromPgSql(pgsql['dateTime'] as int);
}

Map<String, dynamic> _$PgSqlConverterTestClassToPgSql(
        PgSqlConverterTestClass instance) =>
    <String, dynamic>{
      'duration': durationConverter.toPgSql(instance.duration),
      'durationList':
          instance.durationList?.map(durationConverter.toPgSql)?.toList(),
      'bigInt': const BigIntStringConverter().toPgSql(instance.bigInt),
      'bigIntMap': instance.bigIntMap
          ?.map((k, e) => MapEntry(k, const BigIntStringConverter().toPgSql(e))),
      'numberSilly':
          TrivialNumberConverter.instance.toPgSql(instance.numberSilly),
      'numberSillySet': instance.numberSillySet
          ?.map(TrivialNumberConverter.instance.toPgSql)
          ?.toList(),
      'dateTime': const EpochDateTimeConverter().toPgSql(instance.dateTime),
    };

PgSqlConverterGeneric<S, T, U> _$PgSqlConverterGenericFromPgSql<S, T, U>(
    Map pgsql) {
  return PgSqlConverterGeneric<S, T, U>()
    ..item =
        GenericConverter<S>().fromPgSql(pgsql['item'] as Map<String, dynamic>)
    ..itemList = (pgsql['itemList'] as List)
        ?.map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
        ?.toList()
    ..itemMap = (pgsql['itemMap'] as Map)?.map(
      (k, e) => MapEntry(k as String,
          GenericConverter<U>().fromPgSql(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$PgSqlConverterGenericToPgSql<S, T, U>(
        PgSqlConverterGeneric<S, T, U> instance) =>
    <String, dynamic>{
      'item': GenericConverter<S>().toPgSql(instance.item),
      'itemList':
          instance.itemList?.map(GenericConverter<T>().toPgSql)?.toList(),
      'itemMap': instance.itemMap
          ?.map((k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e))),
    };