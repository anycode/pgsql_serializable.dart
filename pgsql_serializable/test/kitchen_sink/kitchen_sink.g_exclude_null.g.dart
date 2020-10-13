// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.g_exclude_null.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map<String, dynamic> pgsql) {
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
    ..map = pgsql['map'] as Map<String, dynamic>
    ..stringStringMap = (pgsql['stringStringMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..dynamicIntMap = (pgsql['dynamicIntMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as int),
    )
    ..objectDateTimeMap =
        (pgsql['objectDateTimeMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e == null ? null : DateTime.parse(e as String)),
    )
    ..crazyComplex = (pgsql['crazyComplex'] as List)
        ?.map((e) => (e as Map<String, dynamic>)?.map(
              (k, e) => MapEntry(
                  k,
                  (e as Map<String, dynamic>)?.map(
                    (k, e) => MapEntry(
                        k,
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
    ..val = (pgsql['val'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as bool),
    )
    ..writeNotNull = pgsql['writeNotNull'] as bool
    ..string = pgsql[r'$string'] as String
    ..simpleObject = pgsql['simpleObject'] == null
        ? null
        : SimpleObject.fromPgSql(pgsql['simpleObject'] as Map<String, dynamic>)
    ..strictKeysObject = pgsql['strictKeysObject'] == null
        ? null
        : StrictKeysObject.fromPgSql(
            pgsql['strictKeysObject'] as Map<String, dynamic>)
    ..validatedPropertyNo42 = pgsql['validatedPropertyNo42'] as int;
}

Map<String, dynamic> _$KitchenSinkToPgSql(KitchenSink instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('no-42', instance.ctorValidatedNo42);
  writeNotNull('dateTime', instance.dateTime?.toIso8601String());
  writeNotNull('bigInt', instance.bigInt?.toString());
  writeNotNull('iterable', instance.iterable?.toList());
  writeNotNull('dynamicIterable', instance.dynamicIterable?.toList());
  writeNotNull('objectIterable', instance.objectIterable?.toList());
  writeNotNull('intIterable', instance.intIterable?.toList());
  writeNotNull('set', instance.set?.toList());
  writeNotNull('dynamicSet', instance.dynamicSet?.toList());
  writeNotNull('objectSet', instance.objectSet?.toList());
  writeNotNull('intSet', instance.intSet?.toList());
  writeNotNull('dateTimeSet',
      instance.dateTimeSet?.map((e) => e?.toIso8601String())?.toList());
  writeNotNull('datetime-iterable',
      instance.dateTimeIterable?.map((e) => e?.toIso8601String())?.toList());
  writeNotNull('list', instance.list);
  writeNotNull('dynamicList', instance.dynamicList);
  writeNotNull('objectList', instance.objectList);
  writeNotNull('intList', instance.intList);
  writeNotNull('dateTimeList',
      instance.dateTimeList?.map((e) => e?.toIso8601String())?.toList());
  writeNotNull('map', instance.map);
  writeNotNull('stringStringMap', instance.stringStringMap);
  writeNotNull('dynamicIntMap', instance.dynamicIntMap);
  writeNotNull(
      'objectDateTimeMap',
      instance.objectDateTimeMap
          ?.map((k, e) => MapEntry(k, e?.toIso8601String())));
  writeNotNull(
      'crazyComplex',
      instance.crazyComplex
          ?.map((e) => e?.map((k, e) => MapEntry(
              k,
              e?.map((k, e) => MapEntry(
                  k,
                  e
                      ?.map(
                          (e) => e?.map((e) => e?.toIso8601String())?.toList())
                      ?.toList())))))
          ?.toList());
  writeNotNull('val', instance.val);
  writeNotNull('writeNotNull', instance.writeNotNull);
  writeNotNull(r'$string', instance.string);
  writeNotNull('simpleObject', instance.simpleObject);
  writeNotNull('strictKeysObject', instance.strictKeysObject);
  writeNotNull('validatedPropertyNo42', instance.validatedPropertyNo42);
  return val;
}

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(
    Map<String, dynamic> pgsql) {
  return PgSqlConverterTestClass()
    ..duration = durationConverter.fromPgSql(pgsql['duration'] as int)
    ..durationList = (pgsql['durationList'] as List)
        ?.map((e) => durationConverter.fromPgSql(e as int))
        ?.toList()
    ..bigInt = const BigIntStringConverter().fromPgSql(pgsql['bigInt'] as String)
    ..bigIntMap = (pgsql['bigIntMap'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(k, const BigIntStringConverter().fromPgSql(e as String)),
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
    PgSqlConverterTestClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duration', durationConverter.toPgSql(instance.duration));
  writeNotNull('durationList',
      instance.durationList?.map(durationConverter.toPgSql)?.toList());
  writeNotNull('bigInt', const BigIntStringConverter().toPgSql(instance.bigInt));
  writeNotNull(
      'bigIntMap',
      instance.bigIntMap?.map(
          (k, e) => MapEntry(k, const BigIntStringConverter().toPgSql(e))));
  writeNotNull('numberSilly',
      TrivialNumberConverter.instance.toPgSql(instance.numberSilly));
  writeNotNull(
      'numberSillySet',
      instance.numberSillySet
          ?.map(TrivialNumberConverter.instance.toPgSql)
          ?.toList());
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
        ?.map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
        ?.toList()
    ..itemMap = (pgsql['itemMap'] as Map<String, dynamic>)?.map(
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
  writeNotNull('itemList',
      instance.itemList?.map(GenericConverter<T>().toPgSql)?.toList());
  writeNotNull(
      'itemMap',
      instance.itemMap
          ?.map((k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e))));
  return val;
}
