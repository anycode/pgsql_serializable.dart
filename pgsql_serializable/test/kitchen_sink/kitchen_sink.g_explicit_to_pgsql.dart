// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: annotate_overrides, hash_and_equals
import 'package:pgsql_annotation/pgsql_annotation.dart';

import 'pgsql_converters.dart';
import 'kitchen_sink_interface.dart' as k;
import 'simple_object.dart';
import 'strict_keys_object.dart';

part 'kitchen_sink.g_explicit_to_pgsql.g.dart';

// NOTE: these methods are replaced in the `non_nullable` cases to return
// non-null values.
List<T> _defaultList<T>() => [];

Set<T> _defaultSet<T>() => {};

Map<K, V> _defaultMap<K, V>() => {};

SimpleObject _defaultSimpleObject() => SimpleObject(42);

StrictKeysObject _defaultStrictKeysObject() => StrictKeysObject(42, 'value');

const k.KitchenSinkFactory factory = _Factory();

class _Factory implements k.KitchenSinkFactory<String, dynamic> {
  const _Factory();

  String get description => 'explicit_to_pgsql';

  bool get anyMap => false;

  bool get checked => false;

  bool get nullable => true;

  bool get excludeNull => false;

  bool get explicitToPgSql => true;

  k.KitchenSink ctor({
    int? ctorValidatedNo42,
    Iterable? iterable,
    Iterable? dynamicIterable,
    Iterable<Object>? objectIterable,
    Iterable<int>? intIterable,
    Iterable<DateTime>? dateTimeIterable,
  }) =>
      KitchenSink(
        ctorValidatedNo42: ctorValidatedNo42,
        iterable: iterable,
        dynamicIterable: dynamicIterable,
        objectIterable: objectIterable,
        intIterable: intIterable,
        dateTimeIterable: dateTimeIterable,
      );

  k.KitchenSink fromPgSql(Map<String, dynamic> pgsql) =>
      KitchenSink.fromPgSql(pgsql);

  k.PgSqlConverterTestClass pgsqlConverterCtor() => PgSqlConverterTestClass(
        const Duration(),
        [],
        BigInt.zero,
        {},
        BigInt.zero,
        {},
        TrivialNumber(0),
        {},
        DateTime.fromMillisecondsSinceEpoch(0),
        TrivialNumber(0),
        {},
      );

  k.PgSqlConverterTestClass pgsqlConverterFromPgSql(Map<String, dynamic> pgsql) =>
      PgSqlConverterTestClass.fromPgSql(pgsql);
}

Object? _valueAccessor(Map pgsql, String key) {
  if (key == 'iterable') {
    return pgsql['iterable'] ?? pgsql['theIterable'];
  }

  return pgsql[key];
}

@PgSqlSerializable(
  explicitToPgSql: true,
)
class KitchenSink implements k.KitchenSink {
  // NOTE: exposing these as Iterable, but storing the values as List
  // to make the equality test work trivially.
  final Iterable? _iterable;
  final Iterable<dynamic> _dynamicIterable;
  final Iterable<Object> _objectIterable;
  final Iterable<int> _intIterable;
  final Iterable<DateTime> _dateTimeIterable;

  @PgSqlKey(name: 'no-42')
  final int? ctorValidatedNo42;

  KitchenSink({
    this.ctorValidatedNo42,
    Iterable? iterable,
    Iterable<dynamic>? dynamicIterable,
    Iterable<Object>? objectIterable,
    Iterable<int>? intIterable,
    Iterable<DateTime>? dateTimeIterable,
  })  : _iterable = iterable?.toList(),
        _dynamicIterable = dynamicIterable?.toList() ?? _defaultList(),
        _objectIterable = objectIterable?.toList() ?? _defaultList(),
        _intIterable = intIterable?.toList() ?? _defaultList(),
        _dateTimeIterable = dateTimeIterable?.toList() ?? _defaultList() {
    if (ctorValidatedNo42 == 42) {
      throw ArgumentError.value(
          42, 'ctorValidatedNo42', 'The value `42` is not allowed.');
    }
  }

  factory KitchenSink.fromPgSql(Map<String, dynamic> pgsql) =>
      _$KitchenSinkFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$KitchenSinkToPgSql(this);

  DateTime? dateTime;

  BigInt? bigInt;

  @PgSqlKey(readValue: _valueAccessor)
  Iterable? get iterable => _iterable;

  Iterable<dynamic> get dynamicIterable => _dynamicIterable;

  Iterable<Object> get objectIterable => _objectIterable;

  Iterable<int> get intIterable => _intIterable;

  Set set = _defaultSet();
  Set<dynamic> dynamicSet = _defaultSet();
  Set<Object> objectSet = _defaultSet();
  Set<int> intSet = _defaultSet();
  Set<DateTime> dateTimeSet = _defaultSet();

  // Added a one-off annotation on a property (not a field)
  @PgSqlKey(name: 'datetime-iterable')
  Iterable<DateTime> get dateTimeIterable => _dateTimeIterable;

  List list = _defaultList();
  List<dynamic> dynamicList = _defaultList();
  List<Object> objectList = _defaultList();
  List<int> intList = _defaultList();
  List<DateTime> dateTimeList = _defaultList();
  List<SimpleObject?> nullableSimpleObjectList = _defaultList();

  Map map = _defaultMap();
  Map<String, String> stringStringMap = _defaultMap();
  Map<dynamic, int> dynamicIntMap = _defaultMap();
  Map<Object, DateTime> objectDateTimeMap = _defaultMap();
  Map<String, SimpleObject?> nullableSimpleObjectMap = _defaultMap();

  List<Map<String, Map<String, List<List<DateTime>?>?>?>?> crazyComplex =
      _defaultList();

  // Handle fields with names that collide with helper names
  Map<String, bool> val = _defaultMap();
  bool? writeNotNull;
  @PgSqlKey(name: k.trickyKeyName, readValue: _trickyValueAccessor)
  String? string;

  SimpleObject simpleObject = _defaultSimpleObject();

  StrictKeysObject strictKeysObject = _defaultStrictKeysObject();

  int? _validatedPropertyNo42;

  int? get validatedPropertyNo42 => _validatedPropertyNo42;

  set validatedPropertyNo42(int? value) {
    if (value == 42) {
      throw StateError('Cannot be 42!');
    }
    _validatedPropertyNo42 = value;
  }

  bool operator ==(Object other) => k.sinkEquals(this, other);

  static Object? _trickyValueAccessor(Map pgsql, String key) {
    if (key == k.trickyKeyName) {
      return pgsql[k.trickyKeyName] ?? pgsql['STRING'];
    }

    return pgsql[key];
  }
}

@PgSqlSerializable(
  explicitToPgSql: true,
)
// referencing a top-level field should work
@durationConverter
// referencing via a const constructor should work
@BigIntStringConverter()
@TrivialNumberConverter.instance
@EpochDateTimeConverter()
class PgSqlConverterTestClass implements k.PgSqlConverterTestClass {
  PgSqlConverterTestClass(
    this.duration,
    this.durationList,
    this.bigInt,
    this.bigIntMap,
    this.nullableBigInt,
    this.nullableBigIntMap,
    this.numberSilly,
    this.numberSillySet,
    this.dateTime,
    this.nullableNumberSilly,
    this.nullableNumberSillySet,
  );

  factory PgSqlConverterTestClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$PgSqlConverterTestClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$PgSqlConverterTestClassToPgSql(this);

  Duration? duration;
  List<Duration?> durationList;

  BigInt bigInt;
  Map<String, BigInt> bigIntMap;

  BigInt? nullableBigInt;
  Map<String, BigInt?> nullableBigIntMap;

  TrivialNumber numberSilly;
  Set<TrivialNumber> numberSillySet;

  DateTime? dateTime;

  TrivialNumber? nullableNumberSilly;
  Set<TrivialNumber?> nullableNumberSillySet;
}

@PgSqlSerializable(
  explicitToPgSql: true,
)
@GenericConverter()
class PgSqlConverterGeneric<S, T, U> {
  S item;
  List<T> itemList;
  Map<String, U> itemMap;

  PgSqlConverterGeneric(
    this.item,
    this.itemList,
    this.itemMap,
  );

  factory PgSqlConverterGeneric.fromPgSql(Map<String, dynamic> pgsql) =>
      _$PgSqlConverterGenericFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$PgSqlConverterGenericToPgSql(this);
}
