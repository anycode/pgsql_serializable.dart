// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: hash_and_equals
import 'dart:collection';

import 'package:pgsql_annotation/pgsql_annotation.dart';

import 'pgsql_test_common.dart';

part 'pgsql_test_example.g_any_map.g.dart';

@PgSqlSerializable(
  anyMap: true,
)
class Person {
  final String firstName, middleName, lastName;
  final DateTime dateOfBirth;
  @PgSqlKey(name: '\$house')
  final Category house;

  Order order;

  MyList<Order> customOrders;

  Map<String, Category> houseMap;
  Map<Category, int> categoryCounts;

  Person(this.firstName, this.lastName, this.house,
      {this.middleName, this.dateOfBirth});

  factory Person.fromPgSql(Map<String, dynamic> pgsql) => _$PersonFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$PersonToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is Person &&
      firstName == other.firstName &&
      middleName == other.middleName &&
      lastName == other.lastName &&
      dateOfBirth == other.dateOfBirth &&
      house == other.house &&
      deepEquals(houseMap, other.houseMap);
}

@PgSqlSerializable(
  anyMap: true,
)
class Order {
  /// Used to test that `disallowNullValues: true` forces `includeIfNull: false`
  @PgSqlKey(disallowNullValue: true)
  int count;
  bool isRushed;

  Duration duration;

  @PgSqlKey(nullable: false)
  final Category category;
  final UnmodifiableListView<Item> items;
  Platform platform;
  Map<String, Platform> altPlatforms;

  Uri homepage;

  @PgSqlKey(
    name: 'status_code',
    defaultValue: StatusCode.success,
    nullable: true,
    unknownEnumValue: StatusCode.unknown,
  )
  StatusCode statusCode;

  @PgSqlKey(ignore: true)
  String get platformValue => platform?.description;

  set platformValue(String value) {
    throw UnimplementedError('not impld');
  }

  // Ignored getter without value set in ctor
  int get price => items.fold(0, (total, item) => item.price + total);

  @PgSqlKey(ignore: true)
  bool shouldBeCached;

  Order(this.category, [Iterable<Item> items])
      : items = UnmodifiableListView<Item>(
            List<Item>.unmodifiable(items ?? const <Item>[]));

  factory Order.fromPgSql(Map<String, dynamic> pgsql) => _$OrderFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$OrderToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is Order &&
      count == other.count &&
      isRushed == other.isRushed &&
      deepEquals(items, other.items) &&
      deepEquals(altPlatforms, other.altPlatforms);
}

@PgSqlSerializable(
  anyMap: true,
)
class Item extends ItemCore {
  @PgSqlKey(includeIfNull: false, name: 'item-number')
  int itemNumber;
  List<DateTime> saleDates;
  List<int> rates;

  Item([int price]) : super(price);

  factory Item.fromPgSql(Map<String, dynamic> pgsql) => _$ItemFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ItemToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is Item &&
      price == other.price &&
      itemNumber == other.itemNumber &&
      deepEquals(saleDates, other.saleDates);
}

@PgSqlSerializable(
  anyMap: true,
)
class Numbers {
  List<int> ints;
  List<num> nums;
  List<double> doubles;

  @PgSqlKey(nullable: false)
  List<double> nnDoubles;

  @PgSqlKey(fromPgSql: durationFromInt, toPgSql: durationToInt)
  Duration duration;

  @PgSqlKey(fromPgSql: dateTimeFromEpochUs, toPgSql: dateTimeToEpochUs)
  DateTime date;

  Numbers();

  factory Numbers.fromPgSql(Map<String, dynamic> pgsql) =>
      _$NumbersFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$NumbersToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is Numbers &&
      deepEquals(ints, other.ints) &&
      deepEquals(nums, other.nums) &&
      deepEquals(doubles, other.doubles) &&
      deepEquals(nnDoubles, other.nnDoubles) &&
      deepEquals(duration, other.duration) &&
      deepEquals(date, other.date);
}

@PgSqlSerializable(
  anyMap: true,
)
class MapKeyVariety {
  Map<int, int> intIntMap;
  Map<Uri, int> uriIntMap;
  Map<DateTime, int> dateTimeIntMap;
  Map<BigInt, int> bigIntMap;

  MapKeyVariety();

  factory MapKeyVariety.fromPgSql(Map<String, dynamic> pgsql) =>
      _$MapKeyVarietyFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$MapKeyVarietyToPgSql(this);

  @override
  bool operator ==(Object other) =>
      other is MapKeyVariety &&
      deepEquals(other.intIntMap, intIntMap) &&
      deepEquals(other.uriIntMap, uriIntMap) &&
      deepEquals(other.dateTimeIntMap, dateTimeIntMap) &&
      deepEquals(other.bigIntMap, bigIntMap);
}

@PgSqlSerializable(anyMap: true, createToPgSql: false)
class UnknownEnumValue {
  @PgSqlKey(unknownEnumValue: Category.notDiscoveredYet)
  Category enumValue;

  @PgSqlKey(unknownEnumValue: Category.notDiscoveredYet)
  Iterable<Category> enumIterable;

  @PgSqlKey(unknownEnumValue: Category.notDiscoveredYet)
  List<Category> enumList;

  @PgSqlKey(unknownEnumValue: Category.notDiscoveredYet)
  Set<Category> enumSet;

  UnknownEnumValue();

  factory UnknownEnumValue.fromPgSql(Map<String, dynamic> pgsql) =>
      _$UnknownEnumValueFromPgSql(pgsql);
}
