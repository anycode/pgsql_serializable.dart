// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kitchen_sink.g_any_map__checked.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map pgsql) {
  return $checkedNew('KitchenSink', pgsql, () {
    final val = KitchenSink(
      ctorValidatedNo42: $checkedConvert(pgsql, 'no-42', (v) => v as int?),
      iterable: $checkedConvert(pgsql, 'iterable', (v) => v as List<dynamic>?),
      dynamicIterable:
          $checkedConvert(pgsql, 'dynamicIterable', (v) => v as List<dynamic>?),
      objectIterable: $checkedConvert(pgsql, 'objectIterable',
          (v) => (v as List<dynamic>?)?.map((e) => e as Object)),
      intIterable: $checkedConvert(pgsql, 'intIterable',
          (v) => (v as List<dynamic>?)?.map((e) => e as int)),
      dateTimeIterable: $checkedConvert(
          pgsql,
          'datetime-iterable',
          (v) =>
              (v as List<dynamic>?)?.map((e) => DateTime.parse(e as String))),
    );
    $checkedConvert(pgsql, 'dateTime',
        (v) => val.dateTime = v == null ? null : DateTime.parse(v as String));
    $checkedConvert(pgsql, 'bigInt',
        (v) => val.bigInt = v == null ? null : BigInt.parse(v as String));
    $checkedConvert(pgsql, 'set', (v) => val.set = (v as List<dynamic>).toSet());
    $checkedConvert(pgsql, 'dynamicSet',
        (v) => val.dynamicSet = (v as List<dynamic>).toSet());
    $checkedConvert(
        pgsql,
        'objectSet',
        (v) => val.objectSet =
            (v as List<dynamic>).map((e) => e as Object).toSet());
    $checkedConvert(pgsql, 'intSet',
        (v) => val.intSet = (v as List<dynamic>).map((e) => e as int).toSet());
    $checkedConvert(
        pgsql,
        'dateTimeSet',
        (v) => val.dateTimeSet = (v as List<dynamic>)
            .map((e) => DateTime.parse(e as String))
            .toSet());
    $checkedConvert(pgsql, 'list', (v) => val.list = v as List<dynamic>);
    $checkedConvert(
        pgsql, 'dynamicList', (v) => val.dynamicList = v as List<dynamic>);
    $checkedConvert(
        pgsql,
        'objectList',
        (v) => val.objectList =
            (v as List<dynamic>).map((e) => e as Object).toList());
    $checkedConvert(
        pgsql,
        'intList',
        (v) =>
            val.intList = (v as List<dynamic>).map((e) => e as int).toList());
    $checkedConvert(
        pgsql,
        'dateTimeList',
        (v) => val.dateTimeList = (v as List<dynamic>)
            .map((e) => DateTime.parse(e as String))
            .toList());
    $checkedConvert(pgsql, 'map', (v) => val.map = v as Map);
    $checkedConvert(pgsql, 'stringStringMap',
        (v) => val.stringStringMap = Map<String, String>.from(v as Map));
    $checkedConvert(pgsql, 'dynamicIntMap',
        (v) => val.dynamicIntMap = Map<String, int>.from(v as Map));
    $checkedConvert(
        pgsql,
        'objectDateTimeMap',
        (v) => val.objectDateTimeMap = (v as Map).map(
              (k, e) => MapEntry(k as Object, DateTime.parse(e as String)),
            ));
    $checkedConvert(
        pgsql,
        'crazyComplex',
        (v) => val.crazyComplex = (v as List<dynamic>)
            .map((e) => (e as Map?)?.map(
                  (k, e) => MapEntry(
                      k as String,
                      (e as Map?)?.map(
                        (k, e) => MapEntry(
                            k as String,
                            (e as List<dynamic>?)
                                ?.map((e) => (e as List<dynamic>?)
                                    ?.map((e) => DateTime.parse(e as String))
                                    .toList())
                                .toList()),
                      )),
                ))
            .toList());
    $checkedConvert(
        pgsql, 'val', (v) => val.val = Map<String, bool>.from(v as Map));
    $checkedConvert(pgsql, 'writeNotNull', (v) => val.writeNotNull = v as bool?);
    $checkedConvert(pgsql, r'$string', (v) => val.string = v as String?);
    $checkedConvert(pgsql, 'simpleObject',
        (v) => val.simpleObject = SimpleObject.fromPgSql(v as Map));
    $checkedConvert(pgsql, 'strictKeysObject',
        (v) => val.strictKeysObject = StrictKeysObject.fromPgSql(v as Map));
    $checkedConvert(pgsql, 'validatedPropertyNo42',
        (v) => val.validatedPropertyNo42 = v as int?);
    return val;
  }, fieldKeyMap: const {
    'ctorValidatedNo42': 'no-42',
    'dateTimeIterable': 'datetime-iterable',
    'string': r'$string'
  });
}

Map<String, dynamic> _$KitchenSinkToPgSql(KitchenSink instance) =>
    <String, dynamic>{
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
          .map((e) => e?.map((k, e) => MapEntry(
              k,
              e?.map((k, e) => MapEntry(
                  k,
                  e
                      ?.map((e) => e?.map((e) => e.toIso8601String()).toList())
                      .toList())))))
          .toList(),
      'val': instance.val,
      'writeNotNull': instance.writeNotNull,
      r'$string': instance.string,
      'simpleObject': instance.simpleObject,
      'strictKeysObject': instance.strictKeysObject,
      'validatedPropertyNo42': instance.validatedPropertyNo42,
    };

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(Map pgsql) {
  return $checkedNew('PgSqlConverterTestClass', pgsql, () {
    final val = PgSqlConverterTestClass(
      $checkedConvert(
          pgsql, 'duration', (v) => durationConverter.fromPgSql(v as int?)),
      $checkedConvert(
          pgsql,
          'durationList',
          (v) => (v as List<dynamic>)
              .map((e) => durationConverter.fromPgSql(e as int?))
              .toList()),
      $checkedConvert(pgsql, 'bigInt',
          (v) => const BigIntStringConverter().fromPgSql(v as String)),
      $checkedConvert(
          pgsql,
          'bigIntMap',
          (v) => (v as Map).map(
                (k, e) => MapEntry(k as String,
                    const BigIntStringConverter().fromPgSql(e as String)),
              )),
      $checkedConvert(pgsql, 'numberSilly',
          (v) => TrivialNumberConverter.instance.fromPgSql(v as int?)),
      $checkedConvert(
          pgsql,
          'numberSillySet',
          (v) => (v as List<dynamic>)
              .map((e) => TrivialNumberConverter.instance.fromPgSql(e as int?))
              .toSet()),
      $checkedConvert(pgsql, 'dateTime',
          (v) => const EpochDateTimeConverter().fromPgSql(v as int?)),
    );
    return val;
  });
}

Map<String, dynamic> _$PgSqlConverterTestClassToPgSql(
        PgSqlConverterTestClass instance) =>
    <String, dynamic>{
      'duration': durationConverter.toPgSql(instance.duration),
      'durationList':
          instance.durationList.map(durationConverter.toPgSql).toList(),
      'bigInt': const BigIntStringConverter().toPgSql(instance.bigInt),
      'bigIntMap': instance.bigIntMap
          .map((k, e) => MapEntry(k, const BigIntStringConverter().toPgSql(e))),
      'numberSilly':
          TrivialNumberConverter.instance.toPgSql(instance.numberSilly),
      'numberSillySet': instance.numberSillySet
          .map(TrivialNumberConverter.instance.toPgSql)
          .toList(),
      'dateTime': const EpochDateTimeConverter().toPgSql(instance.dateTime),
    };

PgSqlConverterGeneric<S, T, U> _$PgSqlConverterGenericFromPgSql<S, T, U>(
    Map pgsql) {
  return $checkedNew('PgSqlConverterGeneric', pgsql, () {
    final val = PgSqlConverterGeneric<S, T, U>(
      $checkedConvert(pgsql, 'item',
          (v) => GenericConverter<S>().fromPgSql(v as Map<String, dynamic>)),
      $checkedConvert(
          pgsql,
          'itemList',
          (v) => (v as List<dynamic>)
              .map((e) =>
                  GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
              .toList()),
      $checkedConvert(
          pgsql,
          'itemMap',
          (v) => (v as Map).map(
                (k, e) => MapEntry(k as String,
                    GenericConverter<U>().fromPgSql(e as Map<String, dynamic>)),
              )),
    );
    return val;
  });
}

Map<String, dynamic> _$PgSqlConverterGenericToPgSql<S, T, U>(
        PgSqlConverterGeneric<S, T, U> instance) =>
    <String, dynamic>{
      'item': GenericConverter<S>().toPgSql(instance.item),
      'itemList': instance.itemList.map(GenericConverter<T>().toPgSql).toList(),
      'itemMap': instance.itemMap
          .map((k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e))),
    };
