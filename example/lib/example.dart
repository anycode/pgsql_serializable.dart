// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'example.g.dart';

@PgSqlSerializable()
class Person {
  final String firstName;
  @PgSqlKey(includeIfNull: false)
  final String middleName;
  final String lastName;

  @PgSqlKey(name: 'date-of-birth', nullable: false)
  final DateTime dateOfBirth;

  @PgSqlKey(name: 'last-order')
  final DateTime lastOrder;

  @PgSqlKey(nullable: false)
  List<Order> orders;

  Person(this.firstName, this.lastName, this.dateOfBirth,
      {this.middleName, this.lastOrder, List<Order> orders})
      : orders = orders ?? <Order>[];

  factory Person.fromPgSql(Map<String, dynamic> pgsql) => _$PersonFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$PersonToPgSql(this);
}

@PgSqlSerializable(includeIfNull: false)
class Order {
  int count;
  int itemNumber;
  bool isRushed;
  Item item;

  @PgSqlKey(
      name: 'prep-time',
      fromPgSql: _durationFromMilliseconds,
      toPgSql: _durationToMilliseconds)
  Duration prepTime;

  @PgSqlKey(fromPgSql: _dateTimeFromEpochUs, toPgSql: _dateTimeToEpochUs)
  final DateTime date;

  Order(this.date);

  factory Order.fromPgSql(Map<String, dynamic> pgsql) => _$OrderFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$OrderToPgSql(this);

  static Duration _durationFromMilliseconds(int milliseconds) =>
      milliseconds == null ? null : Duration(milliseconds: milliseconds);

  static int _durationToMilliseconds(Duration duration) =>
      duration?.inMilliseconds;

  static DateTime _dateTimeFromEpochUs(int us) =>
      us == null ? null : DateTime.fromMicrosecondsSinceEpoch(us);

  static int _dateTimeToEpochUs(DateTime dateTime) =>
      dateTime?.microsecondsSinceEpoch;
}

@PgSqlSerializable()
class Item {
  int count;
  int itemNumber;
  bool isRushed;

  Item();

  factory Item.fromPgSql(Map<String, dynamic> pgsql) => _$ItemFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$ItemToPgSql(this);
}

@PgSqlLiteral('data.pgsql')
Map get glossaryData => _$glossaryDataPgSqlLiteral;
