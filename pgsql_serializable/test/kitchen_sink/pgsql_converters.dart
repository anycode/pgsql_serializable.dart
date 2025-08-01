// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

class GenericConverter<T> implements PgSqlConverter<T, Map<String, dynamic>> {
  const GenericConverter();

  @override
  T fromPgSql(Map<String, dynamic> pgsql) => null as T;

  @override
  Map<String, dynamic> toPgSql(T object) => {};
}

class TrivialNumber {
  final int? value;

  TrivialNumber(this.value);
}

class TrivialNumberConverter implements PgSqlConverter<TrivialNumber, int?> {
  static const instance = TrivialNumberConverter();

  const TrivialNumberConverter();

  @override
  TrivialNumber fromPgSql(int? pgsql) => TrivialNumber(pgsql);

  @override
  int? toPgSql(TrivialNumber? object) => object?.value;
}

class BigIntStringConverter implements PgSqlConverter<BigInt, String> {
  const BigIntStringConverter();

  @override
  BigInt fromPgSql(String pgsql) => BigInt.parse(pgsql);

  @override
  String toPgSql(BigInt object) => object.toString();
}

const durationConverter = DurationMillisecondConverter();

class DurationMillisecondConverter implements PgSqlConverter<Duration?, int?> {
  const DurationMillisecondConverter();

  @override
  Duration? fromPgSql(int? pgsql) =>
      pgsql == null ? null : Duration(milliseconds: pgsql);

  @override
  int? toPgSql(Duration? object) => object?.inMilliseconds;
}

class TrivialString {
  TrivialString(this.value);

  final String? value;
}

const trivialStringConverter = TrivialStringConverter();

class TrivialStringConverter implements PgSqlConverter<TrivialString?, String?> {
  const TrivialStringConverter();

  @override
  TrivialString? fromPgSql(String? pgsql) =>
      pgsql == null ? null : TrivialString(pgsql);

  @override
  String? toPgSql(TrivialString? object) => object?.value;
}

class EpochDateTimeConverter implements PgSqlConverter<DateTime?, int?> {
  const EpochDateTimeConverter();

  @override
  DateTime? fromPgSql(int? pgsql) =>
      pgsql == null ? null : DateTime.fromMillisecondsSinceEpoch(pgsql);

  @override
  int? toPgSql(DateTime? object) => object?.millisecondsSinceEpoch;
}
