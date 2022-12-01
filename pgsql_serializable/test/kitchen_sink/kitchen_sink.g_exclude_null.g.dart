// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'kitchen_sink.g_exclude_null.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map<String, dynamic> pgsql) => KitchenSink(
      ctorValidatedNo42: pgsql['no-42'] as int?,
      iterable: _valueAccessor(pgsql, 'iterable') as List<dynamic>?,
      dynamicIterable: pgsql['dynamicIterable'] as List<dynamic>?,
      objectIterable:
          (pgsql['objectIterable'] as List<dynamic>?)?.map((e) => e as Object),
      intIterable:
          (pgsql['intIterable'] as List<dynamic>?)?.map((e) => e as int),
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
      ..intList =
          (pgsql['intList'] as List<dynamic>).map((e) => e as int).toList()
      ..dateTimeList = (pgsql['dateTimeList'] as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList()
      ..nullableSimpleObjectList =
          (pgsql['nullableSimpleObjectList'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : SimpleObject.fromPgSql(e as Map<String, dynamic>))
              .toList()
      ..map = pgsql['map'] as Map<String, dynamic>
      ..stringStringMap =
          Map<String, String>.from(pgsql['stringStringMap'] as Map)
      ..dynamicIntMap = Map<String, int>.from(pgsql['dynamicIntMap'] as Map)
      ..objectDateTimeMap =
          (pgsql['objectDateTimeMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      )
      ..nullableSimpleObjectMap =
          (pgsql['nullableSimpleObjectMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            e == null
                ? null
                : SimpleObject.fromPgSql(e as Map<String, dynamic>)),
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
      ..string = KitchenSink._trickyValueAccessor(pgsql, r'$string') as String?
      ..simpleObject =
          SimpleObject.fromPgSql(pgsql['simpleObject'] as Map<String, dynamic>)
      ..strictKeysObject = StrictKeysObject.fromPgSql(
          pgsql['strictKeysObject'] as Map<String, dynamic>)
      ..validatedPropertyNo42 = pgsql['validatedPropertyNo42'] as int?;

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
  val['nullableSimpleObjectList'] = instance.nullableSimpleObjectList;
  val['map'] = instance.map;
  val['stringStringMap'] = instance.stringStringMap;
  val['dynamicIntMap'] = instance.dynamicIntMap;
  val['objectDateTimeMap'] = instance.objectDateTimeMap
      .map((k, e) => MapEntry(k, e.toIso8601String()));
  val['nullableSimpleObjectMap'] = instance.nullableSimpleObjectMap;
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
        Map<String, dynamic> pgsql) =>
    PgSqlConverterTestClass(
      const DurationMillisecondConverter().fromPgSql(pgsql['duration'] as int?),
      (pgsql['durationList'] as List<dynamic>)
          .map((e) => const DurationMillisecondConverter().fromPgSql(e as int?))
          .toList(),
      const BigIntStringConverter().fromPgSql(pgsql['bigInt'] as String),
      (pgsql['bigIntMap'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, const BigIntStringConverter().fromPgSql(e as String)),
      ),
      _$PgSqlConverterFromPgSql<String, BigInt>(
          pgsql['nullableBigInt'], const BigIntStringConverter().fromPgSql),
      (pgsql['nullableBigIntMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            _$PgSqlConverterFromPgSql<String, BigInt>(
                e, const BigIntStringConverter().fromPgSql)),
      ),
      TrivialNumberConverter.instance.fromPgSql(pgsql['numberSilly'] as int?),
      (pgsql['numberSillySet'] as List<dynamic>)
          .map((e) => TrivialNumberConverter.instance.fromPgSql(e as int?))
          .toSet(),
      const EpochDateTimeConverter().fromPgSql(pgsql['dateTime'] as int?),
      trivialStringConverter.fromPgSql(pgsql['trivialString'] as String?),
      TrivialNumberConverter.instance
          .fromPgSql(pgsql['nullableNumberSilly'] as int?),
      (pgsql['nullableNumberSillySet'] as List<dynamic>)
          .map((e) => TrivialNumberConverter.instance.fromPgSql(e as int?))
          .toSet(),
    );

Map<String, dynamic> _$PgSqlConverterTestClassToPgSql(
    PgSqlConverterTestClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('duration',
      const DurationMillisecondConverter().toPgSql(instance.duration));
  val['durationList'] = instance.durationList
      .map(const DurationMillisecondConverter().toPgSql)
      .toList();
  val['bigInt'] = const BigIntStringConverter().toPgSql(instance.bigInt);
  val['bigIntMap'] = instance.bigIntMap
      .map((k, e) => MapEntry(k, const BigIntStringConverter().toPgSql(e)));
  writeNotNull(
      'nullableBigInt',
      _$PgSqlConverterToPgSql<String, BigInt>(
          instance.nullableBigInt, const BigIntStringConverter().toPgSql));
  val['nullableBigIntMap'] = instance.nullableBigIntMap.map((k, e) => MapEntry(
      k,
      _$PgSqlConverterToPgSql<String, BigInt>(
          e, const BigIntStringConverter().toPgSql)));
  writeNotNull('numberSilly',
      TrivialNumberConverter.instance.toPgSql(instance.numberSilly));
  val['numberSillySet'] = instance.numberSillySet
      .map(TrivialNumberConverter.instance.toPgSql)
      .toList();
  writeNotNull(
      'dateTime', const EpochDateTimeConverter().toPgSql(instance.dateTime));
  writeNotNull(
      'trivialString', trivialStringConverter.toPgSql(instance.trivialString));
  writeNotNull(
      'nullableNumberSilly',
      _$PgSqlConverterToPgSql<int?, TrivialNumber>(instance.nullableNumberSilly,
          TrivialNumberConverter.instance.toPgSql));
  val['nullableNumberSillySet'] = instance.nullableNumberSillySet
      .map((e) => _$PgSqlConverterToPgSql<int?, TrivialNumber>(
          e, TrivialNumberConverter.instance.toPgSql))
      .toList();
  return val;
}

Value? _$PgSqlConverterFromPgSql<PgSql, Value>(
  Object? pgsql,
  Value? Function(PgSql pgsql) fromPgSql,
) =>
    pgsql == null ? null : fromPgSql(pgsql as PgSql);

PgSql? _$PgSqlConverterToPgSql<PgSql, Value>(
  Value? value,
  PgSql? Function(Value value) toPgSql,
) =>
    value == null ? null : toPgSql(value);

PgSqlConverterGeneric<S, T, U> _$PgSqlConverterGenericFromPgSql<S, T, U>(
        Map<String, dynamic> pgsql) =>
    PgSqlConverterGeneric<S, T, U>(
      GenericConverter<S>().fromPgSql(pgsql['item'] as Map<String, dynamic>),
      (pgsql['itemList'] as List<dynamic>)
          .map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
          .toList(),
      (pgsql['itemMap'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, GenericConverter<U>().fromPgSql(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$PgSqlConverterGenericToPgSql<S, T, U>(
        PgSqlConverterGeneric<S, T, U> instance) =>
    <String, dynamic>{
      'item': GenericConverter<S>().toPgSql(instance.item),
      'itemList': instance.itemList.map(GenericConverter<T>().toPgSql).toList(),
      'itemMap': instance.itemMap
          .map((k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e))),
    };
