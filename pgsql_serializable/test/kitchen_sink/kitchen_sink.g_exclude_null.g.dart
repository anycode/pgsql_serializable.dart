// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.g_exclude_null.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map<String, dynamic> pgsql) {
  return KitchenSink(
    ctorValidatedNo42: pgsql['no-42'] as int?,
    iterable: pgsql['iterable'] as List<dynamic>?,
    dynamicIterable: pgsql['dynamicIterable'] as List<dynamic>?,
    objectIterable:
        (pgsql['objectIterable'] as List<dynamic>?)?.map((e) => e as Object),
    intIterable: (pgsql['intIterable'] as List<dynamic>?)?.map((e) => e as int),
    dateTimeIterable: (pgsql['datetime-iterable'] as List<dynamic>?)
        ?.map((e) => DateTime.parse(e as String)),
  )
    ..dateTime = pgsql['dateTime'] == null
        ? null
        : DateTime.parse(pgsql['dateTime'] as String)
    ..bigInt =
        pgsql['bigInt'] == null ? null : BigInt.parse(pgsql['bigInt'] as String)
    ..set = (pgsql['set'] as List<dynamic>).toSet()
    ..dynamicSet = (pgsql['dynamicSet'] as List<dynamic>).toSet()
    ..objectSet =
        (pgsql['objectSet'] as List<dynamic>).map((e) => e as Object).toSet()
    ..intSet = (pgsql['intSet'] as List<dynamic>).map((e) => e as int).toSet()
    ..dateTimeSet = (pgsql['dateTimeSet'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toSet()
    ..list = pgsql['list'] as List<dynamic>
    ..dynamicList = pgsql['dynamicList'] as List<dynamic>
    ..objectList =
        (pgsql['objectList'] as List<dynamic>).map((e) => e as Object).toList()
    ..intList = (pgsql['intList'] as List<dynamic>).map((e) => e as int).toList()
    ..dateTimeList = (pgsql['dateTimeList'] as List<dynamic>)
        .map((e) => DateTime.parse(e as String))
        .toList()
    ..map = pgsql['map'] as Map<String, dynamic>
    ..stringStringMap = Map<String, String>.from(pgsql['stringStringMap'] as Map)
    ..dynamicIntMap = Map<String, int>.from(pgsql['dynamicIntMap'] as Map)
    ..objectDateTimeMap =
        (pgsql['objectDateTimeMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, DateTime.parse(e as String)),
    )
    ..crazyComplex = (pgsql['crazyComplex'] as List<dynamic>)
        .map((e) => (e as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(
                  k,
                  (e as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(
                        k,
                        (e as List<dynamic>?)
                            ?.map((e) => (e as List<dynamic>?)
                                ?.map((e) => DateTime.parse(e as String))
                                .toList())
                            .toList()),
                  )),
            ))
        .toList()
    ..val = Map<String, bool>.from(pgsql['val'] as Map)
    ..writeNotNull = pgsql['writeNotNull'] as bool?
    ..string = pgsql[r'$string'] as String?
    ..simpleObject =
        SimpleObject.fromPgSql(pgsql['simpleObject'] as Map<String, dynamic>)
    ..strictKeysObject = StrictKeysObject.fromPgSql(
        pgsql['strictKeysObject'] as Map<String, dynamic>)
    ..validatedPropertyNo42 = pgsql['validatedPropertyNo42'] as int?;
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
  val['dynamicIterable'] = instance.dynamicIterable.toList();
  val['objectIterable'] = instance.objectIterable.toList();
  val['intIterable'] = instance.intIterable.toList();
  val['set'] = instance.set.toList();
  val['dynamicSet'] = instance.dynamicSet.toList();
  val['objectSet'] = instance.objectSet.toList();
  val['intSet'] = instance.intSet.toList();
  val['dateTimeSet'] =
      instance.dateTimeSet.map((e) => e.toIso8601String()).toList();
  val['datetime-iterable'] =
      instance.dateTimeIterable.map((e) => e.toIso8601String()).toList();
  val['list'] = instance.list;
  val['dynamicList'] = instance.dynamicList;
  val['objectList'] = instance.objectList;
  val['intList'] = instance.intList;
  val['dateTimeList'] =
      instance.dateTimeList.map((e) => e.toIso8601String()).toList();
  val['map'] = instance.map;
  val['stringStringMap'] = instance.stringStringMap;
  val['dynamicIntMap'] = instance.dynamicIntMap;
  val['objectDateTimeMap'] = instance.objectDateTimeMap
      .map((k, e) => MapEntry(k, e.toIso8601String()));
  val['crazyComplex'] = instance.crazyComplex
      .map((e) => e?.map((k, e) => MapEntry(
          k,
          e?.map((k, e) => MapEntry(
              k,
              e
                  ?.map((e) => e?.map((e) => e.toIso8601String()).toList())
                  .toList())))))
      .toList();
  val['val'] = instance.val;
  writeNotNull('writeNotNull', instance.writeNotNull);
  writeNotNull(r'$string', instance.string);
  val['simpleObject'] = instance.simpleObject;
  val['strictKeysObject'] = instance.strictKeysObject;
  writeNotNull('validatedPropertyNo42', instance.validatedPropertyNo42);
  return val;
}

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(
    Map<String, dynamic> pgsql) {
  return PgSqlConverterTestClass(
    durationConverter.fromPgSql(pgsql['duration'] as int?),
    (pgsql['durationList'] as List<dynamic>)
        .map((e) => durationConverter.fromPgSql(e as int?))
        .toList(),
    const BigIntStringConverter().fromPgSql(pgsql['bigInt'] as String),
    (pgsql['bigIntMap'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, const BigIntStringConverter().fromPgSql(e as String)),
    ),
    TrivialNumberConverter.instance.fromPgSql(pgsql['numberSilly'] as int?),
    (pgsql['numberSillySet'] as List<dynamic>)
        .map((e) => TrivialNumberConverter.instance.fromPgSql(e as int?))
        .toSet(),
    const EpochDateTimeConverter().fromPgSql(pgsql['dateTime'] as int?),
  );
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
  return PgSqlConverterGeneric<S, T, U>(
    GenericConverter<S>().fromPgSql(pgsql['item'] as Map<String, dynamic>),
    (pgsql['itemList'] as List<dynamic>)
        .map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
        .toList(),
    (pgsql['itemMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(
          k, GenericConverter<U>().fromPgSql(e as Map<String, dynamic>)),
    ),
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
