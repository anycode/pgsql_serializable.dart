// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'kitchen_sink.g_any_map__checked.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

KitchenSink _$KitchenSinkFromPgSql(Map pgsql) => $checkedCreate(
  'KitchenSink',
  pgsql,
  ($checkedConvert) {
    final val = KitchenSink(
      ctorValidatedNo42: $checkedConvert('no-42', (v) => (v as num?)?.toInt()),
      iterable: $checkedConvert(
        'iterable',
        (v) => v as List<dynamic>?,
        readValue: _valueAccessor,
      ),
      dynamicIterable: $checkedConvert(
        'dynamicIterable',
        (v) => v as List<dynamic>?,
      ),
      objectIterable: $checkedConvert(
        'objectIterable',
        (v) => (v as List<dynamic>?)?.map((e) => e as Object),
      ),
      intIterable: $checkedConvert(
        'intIterable',
        (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()),
      ),
      dateTimeIterable: $checkedConvert(
        'datetime-iterable',
        (v) => (v as List<dynamic>?)?.map((e) => DateTime.parse(e as String)),
      ),
    );
    $checkedConvert(
      'dateTime',
      (v) => val.dateTime = v == null ? null : DateTime.parse(v as String),
    );
    $checkedConvert(
      'bigInt',
      (v) => val.bigInt = v == null ? null : BigInt.parse(v as String),
    );
    $checkedConvert('set', (v) => val.set = (v as List<dynamic>).toSet());
    $checkedConvert(
      'dynamicSet',
      (v) => val.dynamicSet = (v as List<dynamic>).toSet(),
    );
    $checkedConvert(
      'objectSet',
      (v) =>
          val.objectSet = (v as List<dynamic>).map((e) => e as Object).toSet(),
    );
    $checkedConvert(
      'intSet',
      (v) => val.intSet = (v as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toSet(),
    );
    $checkedConvert(
      'dateTimeSet',
      (v) => val.dateTimeSet = (v as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toSet(),
    );
    $checkedConvert('list', (v) => val.list = v as List<dynamic>);
    $checkedConvert('dynamicList', (v) => val.dynamicList = v as List<dynamic>);
    $checkedConvert(
      'objectList',
      (v) => val.objectList = (v as List<dynamic>)
          .map((e) => e as Object)
          .toList(),
    );
    $checkedConvert(
      'intList',
      (v) => val.intList = (v as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );
    $checkedConvert(
      'dateTimeList',
      (v) => val.dateTimeList = (v as List<dynamic>)
          .map((e) => DateTime.parse(e as String))
          .toList(),
    );
    $checkedConvert(
      'nullableSimpleObjectList',
      (v) => val.nullableSimpleObjectList = (v as List<dynamic>)
          .map((e) => e == null ? null : SimpleObject.fromPgSql(e as Map))
          .toList(),
    );
    $checkedConvert('map', (v) => val.map = v as Map);
    $checkedConvert(
      'stringStringMap',
      (v) => val.stringStringMap = Map<String, String>.from(v as Map),
    );
    $checkedConvert(
      'dynamicIntMap',
      (v) => val.dynamicIntMap = Map<String, int>.from(v as Map),
    );
    $checkedConvert(
      'objectDateTimeMap',
      (v) => val.objectDateTimeMap = (v as Map).map(
        (k, e) => MapEntry(k as Object, DateTime.parse(e as String)),
      ),
    );
    $checkedConvert(
      'nullableSimpleObjectMap',
      (v) => val.nullableSimpleObjectMap = (v as Map).map(
        (k, e) => MapEntry(
          k as String,
          e == null ? null : SimpleObject.fromPgSql(e as Map),
        ),
      ),
    );
    $checkedConvert(
      'crazyComplex',
      (v) => val.crazyComplex = (v as List<dynamic>)
          .map(
            (e) => (e as Map?)?.map(
              (k, e) => MapEntry(
                k as String,
                (e as Map?)?.map(
                  (k, e) => MapEntry(
                    k as String,
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
          .toList(),
    );
    $checkedConvert('val', (v) => val.val = Map<String, bool>.from(v as Map));
    $checkedConvert('writeNotNull', (v) => val.writeNotNull = v as bool?);
    $checkedConvert(
      r'$string',
      (v) => val.string = v as String?,
      readValue: KitchenSink._trickyValueAccessor,
    );
    $checkedConvert(
      'simpleObject',
      (v) => val.simpleObject = SimpleObject.fromPgSql(v as Map),
    );
    $checkedConvert(
      'strictKeysObject',
      (v) => val.strictKeysObject = StrictKeysObject.fromPgSql(v as Map),
    );
    $checkedConvert(
      'validatedPropertyNo42',
      (v) => val.validatedPropertyNo42 = (v as num?)?.toInt(),
    );
    $checkedConvert(
      'recordField',
      (v) => val.recordField = _$recordConvertAnyNullable(
        v,
        ($pgsqlValue) => (
          ($pgsqlValue[r'$1'] as num).toInt(),
          $pgsqlValue[r'$2'] as String,
          truth: $pgsqlValue['truth'] as bool,
        ),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'ctorValidatedNo42': 'no-42',
    'dateTimeIterable': 'datetime-iterable',
    'string': r'$string',
  },
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

$Rec? _$recordConvertAnyNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) => value == null ? null : convert(value as Map);

PgSqlConverterTestClass _$PgSqlConverterTestClassFromPgSql(
  Map pgsql,
) => $checkedCreate('PgSqlConverterTestClass', pgsql, ($checkedConvert) {
  final val = PgSqlConverterTestClass(
    $checkedConvert(
      'duration',
      (v) =>
          const DurationMillisecondConverter().fromPgSql((v as num?)?.toInt()),
    ),
    $checkedConvert(
      'durationList',
      (v) => (v as List<dynamic>)
          .map(
            (e) => const DurationMillisecondConverter().fromPgSql(
              (e as num?)?.toInt(),
            ),
          )
          .toList(),
    ),
    $checkedConvert(
      'bigInt',
      (v) => const BigIntStringConverter().fromPgSql(v as String),
    ),
    $checkedConvert(
      'bigIntMap',
      (v) => (v as Map).map(
        (k, e) => MapEntry(
          k as String,
          const BigIntStringConverter().fromPgSql(e as String),
        ),
      ),
    ),
    $checkedConvert(
      'nullableBigInt',
      (v) => _$PgSqlConverterFromPgSql<String, BigInt>(
        v,
        const BigIntStringConverter().fromPgSql,
      ),
    ),
    $checkedConvert(
      'nullableBigIntMap',
      (v) => (v as Map).map(
        (k, e) => MapEntry(
          k as String,
          _$PgSqlConverterFromPgSql<String, BigInt>(
            e,
            const BigIntStringConverter().fromPgSql,
          ),
        ),
      ),
    ),
    $checkedConvert(
      'numberSilly',
      (v) => TrivialNumberConverter.instance.fromPgSql((v as num?)?.toInt()),
    ),
    $checkedConvert(
      'numberSillySet',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                TrivialNumberConverter.instance.fromPgSql((e as num?)?.toInt()),
          )
          .toSet(),
    ),
    $checkedConvert(
      'dateTime',
      (v) => const EpochDateTimeConverter().fromPgSql((v as num?)?.toInt()),
    ),
    $checkedConvert(
      'trivialString',
      (v) => trivialStringConverter.fromPgSql(v as String?),
    ),
    $checkedConvert(
      'nullableNumberSilly',
      (v) => TrivialNumberConverter.instance.fromPgSql((v as num?)?.toInt()),
    ),
    $checkedConvert(
      'nullableNumberSillySet',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                TrivialNumberConverter.instance.fromPgSql((e as num?)?.toInt()),
          )
          .toSet(),
    ),
  );
  return val;
});

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
  Map pgsql,
) => $checkedCreate('PgSqlConverterGeneric', pgsql, ($checkedConvert) {
  final val = PgSqlConverterGeneric<S, T, U>(
    $checkedConvert(
      'item',
      (v) => GenericConverter<S>().fromPgSql(v as Map<String, dynamic>),
    ),
    $checkedConvert(
      'itemList',
      (v) => (v as List<dynamic>)
          .map((e) => GenericConverter<T>().fromPgSql(e as Map<String, dynamic>))
          .toList(),
    ),
    $checkedConvert(
      'itemMap',
      (v) => (v as Map).map(
        (k, e) => MapEntry(
          k as String,
          GenericConverter<U>().fromPgSql(e as Map<String, dynamic>),
        ),
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$PgSqlConverterGenericToPgSql<S, T, U>(
  PgSqlConverterGeneric<S, T, U> instance,
) => <String, dynamic>{
  'item': GenericConverter<S>().toPgSql(instance.item),
  'itemList': instance.itemList.map(GenericConverter<T>().toPgSql).toList(),
  'itemMap': instance.itemMap.map(
    (k, e) => MapEntry(k, GenericConverter<U>().toPgSql(e)),
  ),
};
