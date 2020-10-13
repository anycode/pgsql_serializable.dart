// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.g_exclude_null__non_nullable.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map<String, dynamic> pgsql) {
  return KitchenSink(
    ctorValidatedNo42: pgsql['no-42'] as int,
    iterable: pgsql['iterable'] as List,
    dynamicIterable: pgsql['dynamicIterable'] as List,
    objectIterable: pgsql['objectIterable'] as List,
    intIterable: (pgsql['intIterable'] as List).map((e) => e as int),
    dateTimeIterable: (pgsql['datetime-iterable'] as List)
        .map((e) => DateTime.parse(e as String)),
  )
    ..dateTime = DateTime.parse(pgsql['dateTime'] as String)
    ..bigInt = BigInt.parse(pgsql['bigInt'] as String)
    ..set = (pgsql['set'] as List).toSet()
    ..dynamicSet = (pgsql['dynamicSet'] as List).toSet()
    ..objectSet = (pgsql['objectSet'] as List).toSet()
    ..intSet = (pgsql['intSet'] as List).map((e) => e as int).toSet()
    ..dateTimeSet = (pgsql['dateTimeSet'] as List)
        .map((e) => DateTime.parse(e as String))
        .toSet()
    ..list = pgsql['list'] as List
    ..dynamicList = pgsql['dynamicList'] as List
    ..objectList = pgsql['objectList'] as List
    ..intList = (pgsql['intList'] as List).map((e) => e as int).toList()
    ..dateTimeList = (pgsql['dateTimeList'] as List)
        .map((e) => DateTime.parse(e as String))
        .toList()
    ..map = pgsql['map'] as Map<String, dynamic>
    ..stringStringMap = Map<String, String>.from(pgsql['stringStringMap'] as Map)
    ..dynamicIntMap = Map<String, int>.from(pgsql['dynamicIntMap'] as Map)
    ..objectDateTimeMap =
        (pgsql['objectDateTimeMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    )
    ..crazyComplex = (pgsql['crazyComplex'] as List)
        .map((e) => (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k,
                  (e as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k,
                        (e as List)
                            .map((e) => (e as List)
                                .map((e) => DateTime.parse(e as String))
                                .toList())
                            .toList()),
                  )),
            ))
        .toList()
    ..val = Map<String, bool>.from(pgsql['val'] as Map)
    ..writeNotNull = pgsql['writeNotNull'] as bool
    ..string = pgsql[r'$string'] as String
    ..simpleObject =
        SimpleObject.fromPgSql(pgsql['simpleObject'] as Map<String, dynamic>)
    ..strictKeysObject = StrictKeysObject.fromPgSql(
        pgsql['strictKeysObject'] as Map<String, dynamic>)
    ..validatedPropertyNo42 = pgsql['validatedPropertyNo42'] as int;
}

Map<String, dynamic> _$KitchenSinkToPgSql(KitchenSink instance) =>
    <String, dynamic>{
      'no-42': instance.ctorValidatedNo42,
      'dateTime': instance.dateTime.toIso8601String(),
      'bigInt': instance.bigInt.toString(),
      'iterable': instance.iterable.toList(),
      'dynamicIterable': instance.dynamicIterable.toList(),
      'objectIterable': instance.objectIterable.toList(),
      'intIterable': instance.intIterable.toList(),
      'set': instance.set.toList(),
      'dynamicSet': instance.dynamicSet.toList(),
      'objectSet': instance.objectSet.toList(),
      'intSet': instance.intSet.toList(),
      'dateTimeSet':
          instance.dateTimeSet.map((e) => e.toIso8601String()).toList(),
      'datetime-iterable':
          instance.dateTimeIterable.map((e) => e.toIso8601String()).toList(),
      'list': instance.list,
      'dynamicList': instance.dynamicList,
      'objectList': instance.objectList,
      'intList': instance.intList,
      'dateTimeList':
          instance.dateTimeList.map((e) => e.toIso8601String()).toList(),
      'map': instance.map,
      'stringStringMap': instance.stringStringMap,
      'dynamicIntMap': instance.dynamicIntMap,
      'objectDateTimeMap': instance.objectDateTimeMap
          .map((k, e) => MapEntry(k, e.toIso8601String())),
      'crazyComplex': instance.crazyComplex
          .map((e) => e.map((k, e) => MapEntry(
              k,
              e.map((k, e) => MapEntry(
                  k,
                  e
                      .map((e) => e.map((e) => e.toIso8601String()).toList())
                      .toList())))))
          .toList(),
      'val': instance.val,
      'writeNotNull': instance.writeNotNull,
      r'$string': instance.string,
      'simpleObject': instance.simpleObject,
      'strictKeysObject': instance.strictKeysObject,
      'validatedPropertyNo42': instance.validatedPropertyNo42,
    };

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(
    Map<String, dynamic> pgsql) {
  return PgSqlConverterTestClass()
    ..duration = durationConverter.fromPgSql(pgsql['duration'] as int)
    ..durationList = (pgsql['durationList'] as List)
        .map((e) => durationConverter.fromPgSql(e as int))
        .toList()
    ..bigInt = const BigIntStringConverter().fromPgSql(pgsql['bigInt'] as String)
    ..bigIntMap = (pgsql['bigIntMap'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, const BigIntStringConverter().fromPgSql(e as String)),
    )
    ..numberSilly =
        TrivialNumberConverter.instance.fromPgSql(pgsql['numberSilly'] as int)
    ..numberSillySet = (pgsql['numberSillySet'] as List)
        .map((e) => TrivialNumberConverter.instance.fromPgSql(e as int))
        .toSet()
    ..dateTime =
        const EpochDateTimeConverter().fromPgSql(pgsql['dateTime'] as int);
}

Map<String, dynamic> _$PgSqlConverterTestClassToPgSql(
    PgSqlConverterTestClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duration', durationConverter.toPgSql(instance.duration));
  val['durationList'] =
      instance.durationList.map(durationConverter.toPgSql).toList();
  writeNotNull('bigInt', const BigIntStringConverter().toPgSql(instance.bigInt));
  val['bigIntMap'] = instance.bigIntMap
      .map((k, e) => MapEntry(k, const BigIntStringConverter().toPgSql(e)));
  writeNotNull('numberSilly',
      TrivialNumberConverter.instance.toPgSql(instance.numberSilly));
  val['numberSillySet'] = instance.numberSillySet
      .map(TrivialNumberConverter.instance.toPgSql)
      .toList();
  writeNotNull(
      'dateTime', const EpochDateTimeConverter().toPgSql(instance.dateTime));
  return val;
}

PgSqlConverterGeneric<S, T, U> _$PgSqlConverterGenericFromPgSql<S, T, U>(
    Map<String, dynamic> pgsql) {
  return PgSqlConverterGeneric<S, T, U>()
    ..item =
        GenericConverter<S>().fromPgSql(pgsql['item'] as Map<String, dynamic>)
    ..itemList = (pgsql['itemList'] as List)
        .map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
        .toList()
    ..itemMap = (pgsql['itemMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          k, GenericConverter<U>().fromPgSql(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$PgSqlConverterGenericToPgSql<S, T, U>(
    PgSqlConverterGeneric<S, T, U> instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item', GenericConverter<S>().toPgSql(instance.item));
  val['itemList'] =
      instance.itemList.map(GenericConverter<T>().toPgSql).toList();
  val['itemMap'] = instance.itemMap
      .map((k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e)));
  return val;
}