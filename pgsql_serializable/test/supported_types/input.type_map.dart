// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_map.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final Map value;

  @PgSqlKey(defaultValue: {'a': 1})
  Map withDefault;

  SimpleClass(this.value, this.withDefault);

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullable {
  final Map? value;

  @PgSqlKey(defaultValue: {'a': 1})
  Map? withDefault;

  SimpleClassNullable(this.value, this.withDefault);

  factory SimpleClassNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToBigInt {
  final Map<BigInt, BigInt> value;

  SimpleClassOfBigIntToBigInt(this.value);

  factory SimpleClassOfBigIntToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToBigInt {
  final Map<BigInt, BigInt>? value;

  SimpleClassNullableOfBigIntToBigInt(this.value);

  factory SimpleClassNullableOfBigIntToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToBigInt {
  final Map<DateTime, BigInt> value;

  SimpleClassOfDateTimeToBigInt(this.value);

  factory SimpleClassOfDateTimeToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToBigInt {
  final Map<DateTime, BigInt>? value;

  SimpleClassNullableOfDateTimeToBigInt(this.value);

  factory SimpleClassNullableOfDateTimeToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToBigInt {
  final Map<dynamic, BigInt> value;

  SimpleClassOfDynamicToBigInt(this.value);

  factory SimpleClassOfDynamicToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToBigInt {
  final Map<dynamic, BigInt>? value;

  SimpleClassNullableOfDynamicToBigInt(this.value);

  factory SimpleClassNullableOfDynamicToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToBigInt {
  final Map<EnumType, BigInt> value;

  SimpleClassOfEnumTypeToBigInt(this.value);

  factory SimpleClassOfEnumTypeToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToBigInt {
  final Map<EnumType, BigInt>? value;

  SimpleClassNullableOfEnumTypeToBigInt(this.value);

  factory SimpleClassNullableOfEnumTypeToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToBigInt {
  final Map<int, BigInt> value;

  SimpleClassOfIntToBigInt(this.value);

  factory SimpleClassOfIntToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToBigInt {
  final Map<int, BigInt>? value;

  SimpleClassNullableOfIntToBigInt(this.value);

  factory SimpleClassNullableOfIntToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToBigInt {
  final Map<Object, BigInt> value;

  SimpleClassOfObjectToBigInt(this.value);

  factory SimpleClassOfObjectToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToBigInt {
  final Map<Object, BigInt>? value;

  SimpleClassNullableOfObjectToBigInt(this.value);

  factory SimpleClassNullableOfObjectToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToBigInt {
  final Map<String, BigInt> value;

  SimpleClassOfStringToBigInt(this.value);

  factory SimpleClassOfStringToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToBigInt {
  final Map<String, BigInt>? value;

  SimpleClassNullableOfStringToBigInt(this.value);

  factory SimpleClassNullableOfStringToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToBigInt {
  final Map<Uri, BigInt> value;

  SimpleClassOfUriToBigInt(this.value);

  factory SimpleClassOfUriToBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToBigInt {
  final Map<Uri, BigInt>? value;

  SimpleClassNullableOfUriToBigInt(this.value);

  factory SimpleClassNullableOfUriToBigInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToBigIntNullable {
  final Map<BigInt, BigInt?> value;

  SimpleClassOfBigIntToBigIntNullable(this.value);

  factory SimpleClassOfBigIntToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToBigIntNullable {
  final Map<BigInt, BigInt?>? value;

  SimpleClassNullableOfBigIntToBigIntNullable(this.value);

  factory SimpleClassNullableOfBigIntToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToBigIntNullable {
  final Map<DateTime, BigInt?> value;

  SimpleClassOfDateTimeToBigIntNullable(this.value);

  factory SimpleClassOfDateTimeToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToBigIntNullable {
  final Map<DateTime, BigInt?>? value;

  SimpleClassNullableOfDateTimeToBigIntNullable(this.value);

  factory SimpleClassNullableOfDateTimeToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToBigIntNullable {
  final Map<dynamic, BigInt?> value;

  SimpleClassOfDynamicToBigIntNullable(this.value);

  factory SimpleClassOfDynamicToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToBigIntNullable {
  final Map<dynamic, BigInt?>? value;

  SimpleClassNullableOfDynamicToBigIntNullable(this.value);

  factory SimpleClassNullableOfDynamicToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToBigIntNullable {
  final Map<EnumType, BigInt?> value;

  SimpleClassOfEnumTypeToBigIntNullable(this.value);

  factory SimpleClassOfEnumTypeToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToBigIntNullable {
  final Map<EnumType, BigInt?>? value;

  SimpleClassNullableOfEnumTypeToBigIntNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToBigIntNullable {
  final Map<int, BigInt?> value;

  SimpleClassOfIntToBigIntNullable(this.value);

  factory SimpleClassOfIntToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToBigIntNullable {
  final Map<int, BigInt?>? value;

  SimpleClassNullableOfIntToBigIntNullable(this.value);

  factory SimpleClassNullableOfIntToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToBigIntNullable {
  final Map<Object, BigInt?> value;

  SimpleClassOfObjectToBigIntNullable(this.value);

  factory SimpleClassOfObjectToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToBigIntNullable {
  final Map<Object, BigInt?>? value;

  SimpleClassNullableOfObjectToBigIntNullable(this.value);

  factory SimpleClassNullableOfObjectToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToBigIntNullable {
  final Map<String, BigInt?> value;

  SimpleClassOfStringToBigIntNullable(this.value);

  factory SimpleClassOfStringToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToBigIntNullable {
  final Map<String, BigInt?>? value;

  SimpleClassNullableOfStringToBigIntNullable(this.value);

  factory SimpleClassNullableOfStringToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToBigIntNullable {
  final Map<Uri, BigInt?> value;

  SimpleClassOfUriToBigIntNullable(this.value);

  factory SimpleClassOfUriToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToBigIntNullable {
  final Map<Uri, BigInt?>? value;

  SimpleClassNullableOfUriToBigIntNullable(this.value);

  factory SimpleClassNullableOfUriToBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToBool {
  final Map<BigInt, bool> value;

  SimpleClassOfBigIntToBool(this.value);

  factory SimpleClassOfBigIntToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToBool {
  final Map<BigInt, bool>? value;

  SimpleClassNullableOfBigIntToBool(this.value);

  factory SimpleClassNullableOfBigIntToBool.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToBool {
  final Map<DateTime, bool> value;

  SimpleClassOfDateTimeToBool(this.value);

  factory SimpleClassOfDateTimeToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToBool {
  final Map<DateTime, bool>? value;

  SimpleClassNullableOfDateTimeToBool(this.value);

  factory SimpleClassNullableOfDateTimeToBool.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToBool {
  final Map<dynamic, bool> value;

  SimpleClassOfDynamicToBool(this.value);

  factory SimpleClassOfDynamicToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToBool {
  final Map<dynamic, bool>? value;

  SimpleClassNullableOfDynamicToBool(this.value);

  factory SimpleClassNullableOfDynamicToBool.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToBool {
  final Map<EnumType, bool> value;

  SimpleClassOfEnumTypeToBool(this.value);

  factory SimpleClassOfEnumTypeToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToBool {
  final Map<EnumType, bool>? value;

  SimpleClassNullableOfEnumTypeToBool(this.value);

  factory SimpleClassNullableOfEnumTypeToBool.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToBool {
  final Map<int, bool> value;

  SimpleClassOfIntToBool(this.value);

  factory SimpleClassOfIntToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToBool {
  final Map<int, bool>? value;

  SimpleClassNullableOfIntToBool(this.value);

  factory SimpleClassNullableOfIntToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToBool {
  final Map<Object, bool> value;

  SimpleClassOfObjectToBool(this.value);

  factory SimpleClassOfObjectToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToBool {
  final Map<Object, bool>? value;

  SimpleClassNullableOfObjectToBool(this.value);

  factory SimpleClassNullableOfObjectToBool.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToBool {
  final Map<String, bool> value;

  SimpleClassOfStringToBool(this.value);

  factory SimpleClassOfStringToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToBool {
  final Map<String, bool>? value;

  SimpleClassNullableOfStringToBool(this.value);

  factory SimpleClassNullableOfStringToBool.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToBool {
  final Map<Uri, bool> value;

  SimpleClassOfUriToBool(this.value);

  factory SimpleClassOfUriToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToBool {
  final Map<Uri, bool>? value;

  SimpleClassNullableOfUriToBool(this.value);

  factory SimpleClassNullableOfUriToBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriToBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToBoolNullable {
  final Map<BigInt, bool?> value;

  SimpleClassOfBigIntToBoolNullable(this.value);

  factory SimpleClassOfBigIntToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToBoolNullable {
  final Map<BigInt, bool?>? value;

  SimpleClassNullableOfBigIntToBoolNullable(this.value);

  factory SimpleClassNullableOfBigIntToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToBoolNullable {
  final Map<DateTime, bool?> value;

  SimpleClassOfDateTimeToBoolNullable(this.value);

  factory SimpleClassOfDateTimeToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToBoolNullable {
  final Map<DateTime, bool?>? value;

  SimpleClassNullableOfDateTimeToBoolNullable(this.value);

  factory SimpleClassNullableOfDateTimeToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToBoolNullable {
  final Map<dynamic, bool?> value;

  SimpleClassOfDynamicToBoolNullable(this.value);

  factory SimpleClassOfDynamicToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToBoolNullable {
  final Map<dynamic, bool?>? value;

  SimpleClassNullableOfDynamicToBoolNullable(this.value);

  factory SimpleClassNullableOfDynamicToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToBoolNullable {
  final Map<EnumType, bool?> value;

  SimpleClassOfEnumTypeToBoolNullable(this.value);

  factory SimpleClassOfEnumTypeToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToBoolNullable {
  final Map<EnumType, bool?>? value;

  SimpleClassNullableOfEnumTypeToBoolNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToBoolNullable {
  final Map<int, bool?> value;

  SimpleClassOfIntToBoolNullable(this.value);

  factory SimpleClassOfIntToBoolNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToBoolNullable {
  final Map<int, bool?>? value;

  SimpleClassNullableOfIntToBoolNullable(this.value);

  factory SimpleClassNullableOfIntToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToBoolNullable {
  final Map<Object, bool?> value;

  SimpleClassOfObjectToBoolNullable(this.value);

  factory SimpleClassOfObjectToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToBoolNullable {
  final Map<Object, bool?>? value;

  SimpleClassNullableOfObjectToBoolNullable(this.value);

  factory SimpleClassNullableOfObjectToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToBoolNullable {
  final Map<String, bool?> value;

  SimpleClassOfStringToBoolNullable(this.value);

  factory SimpleClassOfStringToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToBoolNullable {
  final Map<String, bool?>? value;

  SimpleClassNullableOfStringToBoolNullable(this.value);

  factory SimpleClassNullableOfStringToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToBoolNullable {
  final Map<Uri, bool?> value;

  SimpleClassOfUriToBoolNullable(this.value);

  factory SimpleClassOfUriToBoolNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToBoolNullable {
  final Map<Uri, bool?>? value;

  SimpleClassNullableOfUriToBoolNullable(this.value);

  factory SimpleClassNullableOfUriToBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDateTime {
  final Map<BigInt, DateTime> value;

  SimpleClassOfBigIntToDateTime(this.value);

  factory SimpleClassOfBigIntToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDateTime {
  final Map<BigInt, DateTime>? value;

  SimpleClassNullableOfBigIntToDateTime(this.value);

  factory SimpleClassNullableOfBigIntToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDateTime {
  final Map<DateTime, DateTime> value;

  SimpleClassOfDateTimeToDateTime(this.value);

  factory SimpleClassOfDateTimeToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDateTime {
  final Map<DateTime, DateTime>? value;

  SimpleClassNullableOfDateTimeToDateTime(this.value);

  factory SimpleClassNullableOfDateTimeToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDateTime {
  final Map<dynamic, DateTime> value;

  SimpleClassOfDynamicToDateTime(this.value);

  factory SimpleClassOfDynamicToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDateTime {
  final Map<dynamic, DateTime>? value;

  SimpleClassNullableOfDynamicToDateTime(this.value);

  factory SimpleClassNullableOfDynamicToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDateTime {
  final Map<EnumType, DateTime> value;

  SimpleClassOfEnumTypeToDateTime(this.value);

  factory SimpleClassOfEnumTypeToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDateTime {
  final Map<EnumType, DateTime>? value;

  SimpleClassNullableOfEnumTypeToDateTime(this.value);

  factory SimpleClassNullableOfEnumTypeToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDateTime {
  final Map<int, DateTime> value;

  SimpleClassOfIntToDateTime(this.value);

  factory SimpleClassOfIntToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDateTime {
  final Map<int, DateTime>? value;

  SimpleClassNullableOfIntToDateTime(this.value);

  factory SimpleClassNullableOfIntToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDateTime {
  final Map<Object, DateTime> value;

  SimpleClassOfObjectToDateTime(this.value);

  factory SimpleClassOfObjectToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDateTime {
  final Map<Object, DateTime>? value;

  SimpleClassNullableOfObjectToDateTime(this.value);

  factory SimpleClassNullableOfObjectToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDateTime {
  final Map<String, DateTime> value;

  SimpleClassOfStringToDateTime(this.value);

  factory SimpleClassOfStringToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDateTime {
  final Map<String, DateTime>? value;

  SimpleClassNullableOfStringToDateTime(this.value);

  factory SimpleClassNullableOfStringToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDateTime {
  final Map<Uri, DateTime> value;

  SimpleClassOfUriToDateTime(this.value);

  factory SimpleClassOfUriToDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDateTime {
  final Map<Uri, DateTime>? value;

  SimpleClassNullableOfUriToDateTime(this.value);

  factory SimpleClassNullableOfUriToDateTime.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDateTimeNullable {
  final Map<BigInt, DateTime?> value;

  SimpleClassOfBigIntToDateTimeNullable(this.value);

  factory SimpleClassOfBigIntToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDateTimeNullable {
  final Map<BigInt, DateTime?>? value;

  SimpleClassNullableOfBigIntToDateTimeNullable(this.value);

  factory SimpleClassNullableOfBigIntToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDateTimeNullable {
  final Map<DateTime, DateTime?> value;

  SimpleClassOfDateTimeToDateTimeNullable(this.value);

  factory SimpleClassOfDateTimeToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDateTimeNullable {
  final Map<DateTime, DateTime?>? value;

  SimpleClassNullableOfDateTimeToDateTimeNullable(this.value);

  factory SimpleClassNullableOfDateTimeToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDateTimeNullable {
  final Map<dynamic, DateTime?> value;

  SimpleClassOfDynamicToDateTimeNullable(this.value);

  factory SimpleClassOfDynamicToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDateTimeNullable {
  final Map<dynamic, DateTime?>? value;

  SimpleClassNullableOfDynamicToDateTimeNullable(this.value);

  factory SimpleClassNullableOfDynamicToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDateTimeNullable {
  final Map<EnumType, DateTime?> value;

  SimpleClassOfEnumTypeToDateTimeNullable(this.value);

  factory SimpleClassOfEnumTypeToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDateTimeNullable {
  final Map<EnumType, DateTime?>? value;

  SimpleClassNullableOfEnumTypeToDateTimeNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDateTimeNullable {
  final Map<int, DateTime?> value;

  SimpleClassOfIntToDateTimeNullable(this.value);

  factory SimpleClassOfIntToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDateTimeNullable {
  final Map<int, DateTime?>? value;

  SimpleClassNullableOfIntToDateTimeNullable(this.value);

  factory SimpleClassNullableOfIntToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDateTimeNullable {
  final Map<Object, DateTime?> value;

  SimpleClassOfObjectToDateTimeNullable(this.value);

  factory SimpleClassOfObjectToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDateTimeNullable {
  final Map<Object, DateTime?>? value;

  SimpleClassNullableOfObjectToDateTimeNullable(this.value);

  factory SimpleClassNullableOfObjectToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDateTimeNullable {
  final Map<String, DateTime?> value;

  SimpleClassOfStringToDateTimeNullable(this.value);

  factory SimpleClassOfStringToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDateTimeNullable {
  final Map<String, DateTime?>? value;

  SimpleClassNullableOfStringToDateTimeNullable(this.value);

  factory SimpleClassNullableOfStringToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDateTimeNullable {
  final Map<Uri, DateTime?> value;

  SimpleClassOfUriToDateTimeNullable(this.value);

  factory SimpleClassOfUriToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDateTimeNullable {
  final Map<Uri, DateTime?>? value;

  SimpleClassNullableOfUriToDateTimeNullable(this.value);

  factory SimpleClassNullableOfUriToDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDouble {
  final Map<BigInt, double> value;

  SimpleClassOfBigIntToDouble(this.value);

  factory SimpleClassOfBigIntToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDouble {
  final Map<BigInt, double>? value;

  SimpleClassNullableOfBigIntToDouble(this.value);

  factory SimpleClassNullableOfBigIntToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDouble {
  final Map<DateTime, double> value;

  SimpleClassOfDateTimeToDouble(this.value);

  factory SimpleClassOfDateTimeToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDouble {
  final Map<DateTime, double>? value;

  SimpleClassNullableOfDateTimeToDouble(this.value);

  factory SimpleClassNullableOfDateTimeToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDouble {
  final Map<dynamic, double> value;

  SimpleClassOfDynamicToDouble(this.value);

  factory SimpleClassOfDynamicToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDouble {
  final Map<dynamic, double>? value;

  SimpleClassNullableOfDynamicToDouble(this.value);

  factory SimpleClassNullableOfDynamicToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDouble {
  final Map<EnumType, double> value;

  SimpleClassOfEnumTypeToDouble(this.value);

  factory SimpleClassOfEnumTypeToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDouble {
  final Map<EnumType, double>? value;

  SimpleClassNullableOfEnumTypeToDouble(this.value);

  factory SimpleClassNullableOfEnumTypeToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDouble {
  final Map<int, double> value;

  SimpleClassOfIntToDouble(this.value);

  factory SimpleClassOfIntToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDouble {
  final Map<int, double>? value;

  SimpleClassNullableOfIntToDouble(this.value);

  factory SimpleClassNullableOfIntToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDouble {
  final Map<Object, double> value;

  SimpleClassOfObjectToDouble(this.value);

  factory SimpleClassOfObjectToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDouble {
  final Map<Object, double>? value;

  SimpleClassNullableOfObjectToDouble(this.value);

  factory SimpleClassNullableOfObjectToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDouble {
  final Map<String, double> value;

  SimpleClassOfStringToDouble(this.value);

  factory SimpleClassOfStringToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDouble {
  final Map<String, double>? value;

  SimpleClassNullableOfStringToDouble(this.value);

  factory SimpleClassNullableOfStringToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDouble {
  final Map<Uri, double> value;

  SimpleClassOfUriToDouble(this.value);

  factory SimpleClassOfUriToDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDouble {
  final Map<Uri, double>? value;

  SimpleClassNullableOfUriToDouble(this.value);

  factory SimpleClassNullableOfUriToDouble.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDoubleNullable {
  final Map<BigInt, double?> value;

  SimpleClassOfBigIntToDoubleNullable(this.value);

  factory SimpleClassOfBigIntToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDoubleNullable {
  final Map<BigInt, double?>? value;

  SimpleClassNullableOfBigIntToDoubleNullable(this.value);

  factory SimpleClassNullableOfBigIntToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDoubleNullable {
  final Map<DateTime, double?> value;

  SimpleClassOfDateTimeToDoubleNullable(this.value);

  factory SimpleClassOfDateTimeToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDoubleNullable {
  final Map<DateTime, double?>? value;

  SimpleClassNullableOfDateTimeToDoubleNullable(this.value);

  factory SimpleClassNullableOfDateTimeToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDoubleNullable {
  final Map<dynamic, double?> value;

  SimpleClassOfDynamicToDoubleNullable(this.value);

  factory SimpleClassOfDynamicToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDoubleNullable {
  final Map<dynamic, double?>? value;

  SimpleClassNullableOfDynamicToDoubleNullable(this.value);

  factory SimpleClassNullableOfDynamicToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDoubleNullable {
  final Map<EnumType, double?> value;

  SimpleClassOfEnumTypeToDoubleNullable(this.value);

  factory SimpleClassOfEnumTypeToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDoubleNullable {
  final Map<EnumType, double?>? value;

  SimpleClassNullableOfEnumTypeToDoubleNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDoubleNullable {
  final Map<int, double?> value;

  SimpleClassOfIntToDoubleNullable(this.value);

  factory SimpleClassOfIntToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDoubleNullable {
  final Map<int, double?>? value;

  SimpleClassNullableOfIntToDoubleNullable(this.value);

  factory SimpleClassNullableOfIntToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDoubleNullable {
  final Map<Object, double?> value;

  SimpleClassOfObjectToDoubleNullable(this.value);

  factory SimpleClassOfObjectToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDoubleNullable {
  final Map<Object, double?>? value;

  SimpleClassNullableOfObjectToDoubleNullable(this.value);

  factory SimpleClassNullableOfObjectToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDoubleNullable {
  final Map<String, double?> value;

  SimpleClassOfStringToDoubleNullable(this.value);

  factory SimpleClassOfStringToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDoubleNullable {
  final Map<String, double?>? value;

  SimpleClassNullableOfStringToDoubleNullable(this.value);

  factory SimpleClassNullableOfStringToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDoubleNullable {
  final Map<Uri, double?> value;

  SimpleClassOfUriToDoubleNullable(this.value);

  factory SimpleClassOfUriToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDoubleNullable {
  final Map<Uri, double?>? value;

  SimpleClassNullableOfUriToDoubleNullable(this.value);

  factory SimpleClassNullableOfUriToDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDuration {
  final Map<BigInt, Duration> value;

  SimpleClassOfBigIntToDuration(this.value);

  factory SimpleClassOfBigIntToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDuration {
  final Map<BigInt, Duration>? value;

  SimpleClassNullableOfBigIntToDuration(this.value);

  factory SimpleClassNullableOfBigIntToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDuration {
  final Map<DateTime, Duration> value;

  SimpleClassOfDateTimeToDuration(this.value);

  factory SimpleClassOfDateTimeToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDuration {
  final Map<DateTime, Duration>? value;

  SimpleClassNullableOfDateTimeToDuration(this.value);

  factory SimpleClassNullableOfDateTimeToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDuration {
  final Map<dynamic, Duration> value;

  SimpleClassOfDynamicToDuration(this.value);

  factory SimpleClassOfDynamicToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDuration {
  final Map<dynamic, Duration>? value;

  SimpleClassNullableOfDynamicToDuration(this.value);

  factory SimpleClassNullableOfDynamicToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDuration {
  final Map<EnumType, Duration> value;

  SimpleClassOfEnumTypeToDuration(this.value);

  factory SimpleClassOfEnumTypeToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDuration {
  final Map<EnumType, Duration>? value;

  SimpleClassNullableOfEnumTypeToDuration(this.value);

  factory SimpleClassNullableOfEnumTypeToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDuration {
  final Map<int, Duration> value;

  SimpleClassOfIntToDuration(this.value);

  factory SimpleClassOfIntToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDuration {
  final Map<int, Duration>? value;

  SimpleClassNullableOfIntToDuration(this.value);

  factory SimpleClassNullableOfIntToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDuration {
  final Map<Object, Duration> value;

  SimpleClassOfObjectToDuration(this.value);

  factory SimpleClassOfObjectToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDuration {
  final Map<Object, Duration>? value;

  SimpleClassNullableOfObjectToDuration(this.value);

  factory SimpleClassNullableOfObjectToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDuration {
  final Map<String, Duration> value;

  SimpleClassOfStringToDuration(this.value);

  factory SimpleClassOfStringToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDuration {
  final Map<String, Duration>? value;

  SimpleClassNullableOfStringToDuration(this.value);

  factory SimpleClassNullableOfStringToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDuration {
  final Map<Uri, Duration> value;

  SimpleClassOfUriToDuration(this.value);

  factory SimpleClassOfUriToDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDuration {
  final Map<Uri, Duration>? value;

  SimpleClassNullableOfUriToDuration(this.value);

  factory SimpleClassNullableOfUriToDuration.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDurationNullable {
  final Map<BigInt, Duration?> value;

  SimpleClassOfBigIntToDurationNullable(this.value);

  factory SimpleClassOfBigIntToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDurationNullable {
  final Map<BigInt, Duration?>? value;

  SimpleClassNullableOfBigIntToDurationNullable(this.value);

  factory SimpleClassNullableOfBigIntToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDurationNullable {
  final Map<DateTime, Duration?> value;

  SimpleClassOfDateTimeToDurationNullable(this.value);

  factory SimpleClassOfDateTimeToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDurationNullable {
  final Map<DateTime, Duration?>? value;

  SimpleClassNullableOfDateTimeToDurationNullable(this.value);

  factory SimpleClassNullableOfDateTimeToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDurationNullable {
  final Map<dynamic, Duration?> value;

  SimpleClassOfDynamicToDurationNullable(this.value);

  factory SimpleClassOfDynamicToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDurationNullable {
  final Map<dynamic, Duration?>? value;

  SimpleClassNullableOfDynamicToDurationNullable(this.value);

  factory SimpleClassNullableOfDynamicToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDurationNullable {
  final Map<EnumType, Duration?> value;

  SimpleClassOfEnumTypeToDurationNullable(this.value);

  factory SimpleClassOfEnumTypeToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDurationNullable {
  final Map<EnumType, Duration?>? value;

  SimpleClassNullableOfEnumTypeToDurationNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDurationNullable {
  final Map<int, Duration?> value;

  SimpleClassOfIntToDurationNullable(this.value);

  factory SimpleClassOfIntToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDurationNullable {
  final Map<int, Duration?>? value;

  SimpleClassNullableOfIntToDurationNullable(this.value);

  factory SimpleClassNullableOfIntToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDurationNullable {
  final Map<Object, Duration?> value;

  SimpleClassOfObjectToDurationNullable(this.value);

  factory SimpleClassOfObjectToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDurationNullable {
  final Map<Object, Duration?>? value;

  SimpleClassNullableOfObjectToDurationNullable(this.value);

  factory SimpleClassNullableOfObjectToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDurationNullable {
  final Map<String, Duration?> value;

  SimpleClassOfStringToDurationNullable(this.value);

  factory SimpleClassOfStringToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDurationNullable {
  final Map<String, Duration?>? value;

  SimpleClassNullableOfStringToDurationNullable(this.value);

  factory SimpleClassNullableOfStringToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDurationNullable {
  final Map<Uri, Duration?> value;

  SimpleClassOfUriToDurationNullable(this.value);

  factory SimpleClassOfUriToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDurationNullable {
  final Map<Uri, Duration?>? value;

  SimpleClassNullableOfUriToDurationNullable(this.value);

  factory SimpleClassNullableOfUriToDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToDynamic {
  final Map<BigInt, dynamic> value;

  SimpleClassOfBigIntToDynamic(this.value);

  factory SimpleClassOfBigIntToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToDynamic {
  final Map<BigInt, dynamic>? value;

  SimpleClassNullableOfBigIntToDynamic(this.value);

  factory SimpleClassNullableOfBigIntToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToDynamic {
  final Map<DateTime, dynamic> value;

  SimpleClassOfDateTimeToDynamic(this.value);

  factory SimpleClassOfDateTimeToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToDynamic {
  final Map<DateTime, dynamic>? value;

  SimpleClassNullableOfDateTimeToDynamic(this.value);

  factory SimpleClassNullableOfDateTimeToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToDynamic {
  final Map<dynamic, dynamic> value;

  SimpleClassOfDynamicToDynamic(this.value);

  factory SimpleClassOfDynamicToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToDynamic {
  final Map<dynamic, dynamic>? value;

  SimpleClassNullableOfDynamicToDynamic(this.value);

  factory SimpleClassNullableOfDynamicToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToDynamic {
  final Map<EnumType, dynamic> value;

  SimpleClassOfEnumTypeToDynamic(this.value);

  factory SimpleClassOfEnumTypeToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToDynamic {
  final Map<EnumType, dynamic>? value;

  SimpleClassNullableOfEnumTypeToDynamic(this.value);

  factory SimpleClassNullableOfEnumTypeToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToDynamic {
  final Map<int, dynamic> value;

  SimpleClassOfIntToDynamic(this.value);

  factory SimpleClassOfIntToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToDynamic {
  final Map<int, dynamic>? value;

  SimpleClassNullableOfIntToDynamic(this.value);

  factory SimpleClassNullableOfIntToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToDynamic {
  final Map<Object, dynamic> value;

  SimpleClassOfObjectToDynamic(this.value);

  factory SimpleClassOfObjectToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToDynamic {
  final Map<Object, dynamic>? value;

  SimpleClassNullableOfObjectToDynamic(this.value);

  factory SimpleClassNullableOfObjectToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToDynamic {
  final Map<String, dynamic> value;

  SimpleClassOfStringToDynamic(this.value);

  factory SimpleClassOfStringToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToDynamic {
  final Map<String, dynamic>? value;

  SimpleClassNullableOfStringToDynamic(this.value);

  factory SimpleClassNullableOfStringToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToDynamic {
  final Map<Uri, dynamic> value;

  SimpleClassOfUriToDynamic(this.value);

  factory SimpleClassOfUriToDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToDynamic {
  final Map<Uri, dynamic>? value;

  SimpleClassNullableOfUriToDynamic(this.value);

  factory SimpleClassNullableOfUriToDynamic.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToEnumType {
  final Map<BigInt, EnumType> value;

  SimpleClassOfBigIntToEnumType(this.value);

  factory SimpleClassOfBigIntToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToEnumType {
  final Map<BigInt, EnumType>? value;

  SimpleClassNullableOfBigIntToEnumType(this.value);

  factory SimpleClassNullableOfBigIntToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToEnumType {
  final Map<DateTime, EnumType> value;

  SimpleClassOfDateTimeToEnumType(this.value);

  factory SimpleClassOfDateTimeToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToEnumType {
  final Map<DateTime, EnumType>? value;

  SimpleClassNullableOfDateTimeToEnumType(this.value);

  factory SimpleClassNullableOfDateTimeToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToEnumType {
  final Map<dynamic, EnumType> value;

  SimpleClassOfDynamicToEnumType(this.value);

  factory SimpleClassOfDynamicToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToEnumType {
  final Map<dynamic, EnumType>? value;

  SimpleClassNullableOfDynamicToEnumType(this.value);

  factory SimpleClassNullableOfDynamicToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToEnumType {
  final Map<EnumType, EnumType> value;

  SimpleClassOfEnumTypeToEnumType(this.value);

  factory SimpleClassOfEnumTypeToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToEnumType {
  final Map<EnumType, EnumType>? value;

  SimpleClassNullableOfEnumTypeToEnumType(this.value);

  factory SimpleClassNullableOfEnumTypeToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToEnumType {
  final Map<int, EnumType> value;

  SimpleClassOfIntToEnumType(this.value);

  factory SimpleClassOfIntToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToEnumType {
  final Map<int, EnumType>? value;

  SimpleClassNullableOfIntToEnumType(this.value);

  factory SimpleClassNullableOfIntToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToEnumType {
  final Map<Object, EnumType> value;

  SimpleClassOfObjectToEnumType(this.value);

  factory SimpleClassOfObjectToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToEnumType {
  final Map<Object, EnumType>? value;

  SimpleClassNullableOfObjectToEnumType(this.value);

  factory SimpleClassNullableOfObjectToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToEnumType {
  final Map<String, EnumType> value;

  SimpleClassOfStringToEnumType(this.value);

  factory SimpleClassOfStringToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToEnumType {
  final Map<String, EnumType>? value;

  SimpleClassNullableOfStringToEnumType(this.value);

  factory SimpleClassNullableOfStringToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToEnumType {
  final Map<Uri, EnumType> value;

  SimpleClassOfUriToEnumType(this.value);

  factory SimpleClassOfUriToEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToEnumType {
  final Map<Uri, EnumType>? value;

  SimpleClassNullableOfUriToEnumType(this.value);

  factory SimpleClassNullableOfUriToEnumType.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToEnumTypeNullable {
  final Map<BigInt, EnumType?> value;

  SimpleClassOfBigIntToEnumTypeNullable(this.value);

  factory SimpleClassOfBigIntToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToEnumTypeNullable {
  final Map<BigInt, EnumType?>? value;

  SimpleClassNullableOfBigIntToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfBigIntToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToEnumTypeNullable {
  final Map<DateTime, EnumType?> value;

  SimpleClassOfDateTimeToEnumTypeNullable(this.value);

  factory SimpleClassOfDateTimeToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToEnumTypeNullable {
  final Map<DateTime, EnumType?>? value;

  SimpleClassNullableOfDateTimeToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfDateTimeToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToEnumTypeNullable {
  final Map<dynamic, EnumType?> value;

  SimpleClassOfDynamicToEnumTypeNullable(this.value);

  factory SimpleClassOfDynamicToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToEnumTypeNullable {
  final Map<dynamic, EnumType?>? value;

  SimpleClassNullableOfDynamicToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfDynamicToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToEnumTypeNullable {
  final Map<EnumType, EnumType?> value;

  SimpleClassOfEnumTypeToEnumTypeNullable(this.value);

  factory SimpleClassOfEnumTypeToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToEnumTypeNullable {
  final Map<EnumType, EnumType?>? value;

  SimpleClassNullableOfEnumTypeToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToEnumTypeNullable {
  final Map<int, EnumType?> value;

  SimpleClassOfIntToEnumTypeNullable(this.value);

  factory SimpleClassOfIntToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToEnumTypeNullable {
  final Map<int, EnumType?>? value;

  SimpleClassNullableOfIntToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfIntToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToEnumTypeNullable {
  final Map<Object, EnumType?> value;

  SimpleClassOfObjectToEnumTypeNullable(this.value);

  factory SimpleClassOfObjectToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToEnumTypeNullable {
  final Map<Object, EnumType?>? value;

  SimpleClassNullableOfObjectToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfObjectToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToEnumTypeNullable {
  final Map<String, EnumType?> value;

  SimpleClassOfStringToEnumTypeNullable(this.value);

  factory SimpleClassOfStringToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToEnumTypeNullable {
  final Map<String, EnumType?>? value;

  SimpleClassNullableOfStringToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfStringToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToEnumTypeNullable {
  final Map<Uri, EnumType?> value;

  SimpleClassOfUriToEnumTypeNullable(this.value);

  factory SimpleClassOfUriToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToEnumTypeNullable {
  final Map<Uri, EnumType?>? value;

  SimpleClassNullableOfUriToEnumTypeNullable(this.value);

  factory SimpleClassNullableOfUriToEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToFromPgSqlDynamicParam {
  final Map<BigInt, FromPgSqlDynamicParam> value;

  SimpleClassOfBigIntToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfBigIntToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToFromPgSqlDynamicParam {
  final Map<BigInt, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfBigIntToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfBigIntToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToFromPgSqlDynamicParam {
  final Map<DateTime, FromPgSqlDynamicParam> value;

  SimpleClassOfDateTimeToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfDateTimeToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToFromPgSqlDynamicParam {
  final Map<DateTime, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfDateTimeToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfDateTimeToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToFromPgSqlDynamicParam {
  final Map<dynamic, FromPgSqlDynamicParam> value;

  SimpleClassOfDynamicToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfDynamicToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToFromPgSqlDynamicParam {
  final Map<dynamic, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfDynamicToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfDynamicToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToFromPgSqlDynamicParam {
  final Map<EnumType, FromPgSqlDynamicParam> value;

  SimpleClassOfEnumTypeToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfEnumTypeToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToFromPgSqlDynamicParam {
  final Map<EnumType, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfEnumTypeToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfEnumTypeToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToFromPgSqlDynamicParam {
  final Map<int, FromPgSqlDynamicParam> value;

  SimpleClassOfIntToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfIntToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToFromPgSqlDynamicParam {
  final Map<int, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfIntToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfIntToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToFromPgSqlDynamicParam {
  final Map<Object, FromPgSqlDynamicParam> value;

  SimpleClassOfObjectToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfObjectToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToFromPgSqlDynamicParam {
  final Map<Object, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfObjectToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfObjectToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToFromPgSqlDynamicParam {
  final Map<String, FromPgSqlDynamicParam> value;

  SimpleClassOfStringToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfStringToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToFromPgSqlDynamicParam {
  final Map<String, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfStringToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfStringToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToFromPgSqlDynamicParam {
  final Map<Uri, FromPgSqlDynamicParam> value;

  SimpleClassOfUriToFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfUriToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToFromPgSqlDynamicParam {
  final Map<Uri, FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfUriToFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfUriToFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToFromPgSqlNullableObjectParam {
  final Map<BigInt, FromPgSqlNullableObjectParam> value;

  SimpleClassOfBigIntToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfBigIntToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToFromPgSqlNullableObjectParam {
  final Map<BigInt, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfBigIntToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfBigIntToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToFromPgSqlNullableObjectParam {
  final Map<DateTime, FromPgSqlNullableObjectParam> value;

  SimpleClassOfDateTimeToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfDateTimeToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToFromPgSqlNullableObjectParam {
  final Map<DateTime, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfDateTimeToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfDateTimeToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToFromPgSqlNullableObjectParamFromPgSql(
    pgsql,
  );

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToFromPgSqlNullableObjectParam {
  final Map<dynamic, FromPgSqlNullableObjectParam> value;

  SimpleClassOfDynamicToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfDynamicToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToFromPgSqlNullableObjectParam {
  final Map<dynamic, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfDynamicToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfDynamicToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) =>
      _$SimpleClassNullableOfDynamicToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToFromPgSqlNullableObjectParam {
  final Map<EnumType, FromPgSqlNullableObjectParam> value;

  SimpleClassOfEnumTypeToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfEnumTypeToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToFromPgSqlNullableObjectParam {
  final Map<EnumType, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfEnumTypeToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfEnumTypeToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToFromPgSqlNullableObjectParamFromPgSql(
    pgsql,
  );

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToFromPgSqlNullableObjectParam {
  final Map<int, FromPgSqlNullableObjectParam> value;

  SimpleClassOfIntToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfIntToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToFromPgSqlNullableObjectParam {
  final Map<int, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfIntToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfIntToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToFromPgSqlNullableObjectParam {
  final Map<Object, FromPgSqlNullableObjectParam> value;

  SimpleClassOfObjectToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfObjectToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToFromPgSqlNullableObjectParam {
  final Map<Object, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfObjectToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfObjectToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToFromPgSqlNullableObjectParam {
  final Map<String, FromPgSqlNullableObjectParam> value;

  SimpleClassOfStringToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfStringToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToFromPgSqlNullableObjectParam {
  final Map<String, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfStringToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfStringToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToFromPgSqlNullableObjectParam {
  final Map<Uri, FromPgSqlNullableObjectParam> value;

  SimpleClassOfUriToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfUriToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToFromPgSqlNullableObjectParam {
  final Map<Uri, FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfUriToFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfUriToFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToFromPgSqlObjectParam {
  final Map<BigInt, FromPgSqlObjectParam> value;

  SimpleClassOfBigIntToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfBigIntToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToFromPgSqlObjectParam {
  final Map<BigInt, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfBigIntToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfBigIntToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToFromPgSqlObjectParam {
  final Map<DateTime, FromPgSqlObjectParam> value;

  SimpleClassOfDateTimeToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfDateTimeToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToFromPgSqlObjectParam {
  final Map<DateTime, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfDateTimeToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfDateTimeToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToFromPgSqlObjectParam {
  final Map<dynamic, FromPgSqlObjectParam> value;

  SimpleClassOfDynamicToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfDynamicToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToFromPgSqlObjectParam {
  final Map<dynamic, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfDynamicToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfDynamicToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToFromPgSqlObjectParam {
  final Map<EnumType, FromPgSqlObjectParam> value;

  SimpleClassOfEnumTypeToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfEnumTypeToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToFromPgSqlObjectParam {
  final Map<EnumType, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfEnumTypeToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfEnumTypeToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToFromPgSqlObjectParam {
  final Map<int, FromPgSqlObjectParam> value;

  SimpleClassOfIntToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfIntToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToFromPgSqlObjectParam {
  final Map<int, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfIntToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfIntToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToFromPgSqlObjectParam {
  final Map<Object, FromPgSqlObjectParam> value;

  SimpleClassOfObjectToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfObjectToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToFromPgSqlObjectParam {
  final Map<Object, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfObjectToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfObjectToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToFromPgSqlObjectParam {
  final Map<String, FromPgSqlObjectParam> value;

  SimpleClassOfStringToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfStringToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToFromPgSqlObjectParam {
  final Map<String, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfStringToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfStringToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToFromPgSqlObjectParam {
  final Map<Uri, FromPgSqlObjectParam> value;

  SimpleClassOfUriToFromPgSqlObjectParam(this.value);

  factory SimpleClassOfUriToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToFromPgSqlObjectParam {
  final Map<Uri, FromPgSqlObjectParam>? value;

  SimpleClassNullableOfUriToFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfUriToFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToInt {
  final Map<BigInt, int> value;

  SimpleClassOfBigIntToInt(this.value);

  factory SimpleClassOfBigIntToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToInt {
  final Map<BigInt, int>? value;

  SimpleClassNullableOfBigIntToInt(this.value);

  factory SimpleClassNullableOfBigIntToInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToInt {
  final Map<DateTime, int> value;

  SimpleClassOfDateTimeToInt(this.value);

  factory SimpleClassOfDateTimeToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToInt {
  final Map<DateTime, int>? value;

  SimpleClassNullableOfDateTimeToInt(this.value);

  factory SimpleClassNullableOfDateTimeToInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToInt {
  final Map<dynamic, int> value;

  SimpleClassOfDynamicToInt(this.value);

  factory SimpleClassOfDynamicToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToInt {
  final Map<dynamic, int>? value;

  SimpleClassNullableOfDynamicToInt(this.value);

  factory SimpleClassNullableOfDynamicToInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToInt {
  final Map<EnumType, int> value;

  SimpleClassOfEnumTypeToInt(this.value);

  factory SimpleClassOfEnumTypeToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToInt {
  final Map<EnumType, int>? value;

  SimpleClassNullableOfEnumTypeToInt(this.value);

  factory SimpleClassNullableOfEnumTypeToInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToInt {
  final Map<int, int> value;

  SimpleClassOfIntToInt(this.value);

  factory SimpleClassOfIntToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToInt {
  final Map<int, int>? value;

  SimpleClassNullableOfIntToInt(this.value);

  factory SimpleClassNullableOfIntToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToInt {
  final Map<Object, int> value;

  SimpleClassOfObjectToInt(this.value);

  factory SimpleClassOfObjectToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToInt {
  final Map<Object, int>? value;

  SimpleClassNullableOfObjectToInt(this.value);

  factory SimpleClassNullableOfObjectToInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToInt {
  final Map<String, int> value;

  SimpleClassOfStringToInt(this.value);

  factory SimpleClassOfStringToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToInt {
  final Map<String, int>? value;

  SimpleClassNullableOfStringToInt(this.value);

  factory SimpleClassNullableOfStringToInt.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToInt {
  final Map<Uri, int> value;

  SimpleClassOfUriToInt(this.value);

  factory SimpleClassOfUriToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToInt {
  final Map<Uri, int>? value;

  SimpleClassNullableOfUriToInt(this.value);

  factory SimpleClassNullableOfUriToInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriToIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToIntNullable {
  final Map<BigInt, int?> value;

  SimpleClassOfBigIntToIntNullable(this.value);

  factory SimpleClassOfBigIntToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToIntNullable {
  final Map<BigInt, int?>? value;

  SimpleClassNullableOfBigIntToIntNullable(this.value);

  factory SimpleClassNullableOfBigIntToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToIntNullable {
  final Map<DateTime, int?> value;

  SimpleClassOfDateTimeToIntNullable(this.value);

  factory SimpleClassOfDateTimeToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToIntNullable {
  final Map<DateTime, int?>? value;

  SimpleClassNullableOfDateTimeToIntNullable(this.value);

  factory SimpleClassNullableOfDateTimeToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToIntNullable {
  final Map<dynamic, int?> value;

  SimpleClassOfDynamicToIntNullable(this.value);

  factory SimpleClassOfDynamicToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToIntNullable {
  final Map<dynamic, int?>? value;

  SimpleClassNullableOfDynamicToIntNullable(this.value);

  factory SimpleClassNullableOfDynamicToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToIntNullable {
  final Map<EnumType, int?> value;

  SimpleClassOfEnumTypeToIntNullable(this.value);

  factory SimpleClassOfEnumTypeToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToIntNullable {
  final Map<EnumType, int?>? value;

  SimpleClassNullableOfEnumTypeToIntNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToIntNullable {
  final Map<int, int?> value;

  SimpleClassOfIntToIntNullable(this.value);

  factory SimpleClassOfIntToIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToIntNullable {
  final Map<int, int?>? value;

  SimpleClassNullableOfIntToIntNullable(this.value);

  factory SimpleClassNullableOfIntToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToIntNullable {
  final Map<Object, int?> value;

  SimpleClassOfObjectToIntNullable(this.value);

  factory SimpleClassOfObjectToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToIntNullable {
  final Map<Object, int?>? value;

  SimpleClassNullableOfObjectToIntNullable(this.value);

  factory SimpleClassNullableOfObjectToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToIntNullable {
  final Map<String, int?> value;

  SimpleClassOfStringToIntNullable(this.value);

  factory SimpleClassOfStringToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToIntNullable {
  final Map<String, int?>? value;

  SimpleClassNullableOfStringToIntNullable(this.value);

  factory SimpleClassNullableOfStringToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToIntNullable {
  final Map<Uri, int?> value;

  SimpleClassOfUriToIntNullable(this.value);

  factory SimpleClassOfUriToIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToIntNullable {
  final Map<Uri, int?>? value;

  SimpleClassNullableOfUriToIntNullable(this.value);

  factory SimpleClassNullableOfUriToIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToNum {
  final Map<BigInt, num> value;

  SimpleClassOfBigIntToNum(this.value);

  factory SimpleClassOfBigIntToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToNum {
  final Map<BigInt, num>? value;

  SimpleClassNullableOfBigIntToNum(this.value);

  factory SimpleClassNullableOfBigIntToNum.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToNum {
  final Map<DateTime, num> value;

  SimpleClassOfDateTimeToNum(this.value);

  factory SimpleClassOfDateTimeToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToNum {
  final Map<DateTime, num>? value;

  SimpleClassNullableOfDateTimeToNum(this.value);

  factory SimpleClassNullableOfDateTimeToNum.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToNum {
  final Map<dynamic, num> value;

  SimpleClassOfDynamicToNum(this.value);

  factory SimpleClassOfDynamicToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToNum {
  final Map<dynamic, num>? value;

  SimpleClassNullableOfDynamicToNum(this.value);

  factory SimpleClassNullableOfDynamicToNum.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToNum {
  final Map<EnumType, num> value;

  SimpleClassOfEnumTypeToNum(this.value);

  factory SimpleClassOfEnumTypeToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToNum {
  final Map<EnumType, num>? value;

  SimpleClassNullableOfEnumTypeToNum(this.value);

  factory SimpleClassNullableOfEnumTypeToNum.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToNum {
  final Map<int, num> value;

  SimpleClassOfIntToNum(this.value);

  factory SimpleClassOfIntToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToNum {
  final Map<int, num>? value;

  SimpleClassNullableOfIntToNum(this.value);

  factory SimpleClassNullableOfIntToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToNum {
  final Map<Object, num> value;

  SimpleClassOfObjectToNum(this.value);

  factory SimpleClassOfObjectToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToNum {
  final Map<Object, num>? value;

  SimpleClassNullableOfObjectToNum(this.value);

  factory SimpleClassNullableOfObjectToNum.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToNum {
  final Map<String, num> value;

  SimpleClassOfStringToNum(this.value);

  factory SimpleClassOfStringToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToNum {
  final Map<String, num>? value;

  SimpleClassNullableOfStringToNum(this.value);

  factory SimpleClassNullableOfStringToNum.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToNum {
  final Map<Uri, num> value;

  SimpleClassOfUriToNum(this.value);

  factory SimpleClassOfUriToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToNum {
  final Map<Uri, num>? value;

  SimpleClassNullableOfUriToNum(this.value);

  factory SimpleClassNullableOfUriToNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriToNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToNumNullable {
  final Map<BigInt, num?> value;

  SimpleClassOfBigIntToNumNullable(this.value);

  factory SimpleClassOfBigIntToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToNumNullable {
  final Map<BigInt, num?>? value;

  SimpleClassNullableOfBigIntToNumNullable(this.value);

  factory SimpleClassNullableOfBigIntToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToNumNullable {
  final Map<DateTime, num?> value;

  SimpleClassOfDateTimeToNumNullable(this.value);

  factory SimpleClassOfDateTimeToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToNumNullable {
  final Map<DateTime, num?>? value;

  SimpleClassNullableOfDateTimeToNumNullable(this.value);

  factory SimpleClassNullableOfDateTimeToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToNumNullable {
  final Map<dynamic, num?> value;

  SimpleClassOfDynamicToNumNullable(this.value);

  factory SimpleClassOfDynamicToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToNumNullable {
  final Map<dynamic, num?>? value;

  SimpleClassNullableOfDynamicToNumNullable(this.value);

  factory SimpleClassNullableOfDynamicToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToNumNullable {
  final Map<EnumType, num?> value;

  SimpleClassOfEnumTypeToNumNullable(this.value);

  factory SimpleClassOfEnumTypeToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToNumNullable {
  final Map<EnumType, num?>? value;

  SimpleClassNullableOfEnumTypeToNumNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToNumNullable {
  final Map<int, num?> value;

  SimpleClassOfIntToNumNullable(this.value);

  factory SimpleClassOfIntToNumNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToNumNullable {
  final Map<int, num?>? value;

  SimpleClassNullableOfIntToNumNullable(this.value);

  factory SimpleClassNullableOfIntToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToNumNullable {
  final Map<Object, num?> value;

  SimpleClassOfObjectToNumNullable(this.value);

  factory SimpleClassOfObjectToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToNumNullable {
  final Map<Object, num?>? value;

  SimpleClassNullableOfObjectToNumNullable(this.value);

  factory SimpleClassNullableOfObjectToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToNumNullable {
  final Map<String, num?> value;

  SimpleClassOfStringToNumNullable(this.value);

  factory SimpleClassOfStringToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToNumNullable {
  final Map<String, num?>? value;

  SimpleClassNullableOfStringToNumNullable(this.value);

  factory SimpleClassNullableOfStringToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToNumNullable {
  final Map<Uri, num?> value;

  SimpleClassOfUriToNumNullable(this.value);

  factory SimpleClassOfUriToNumNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToNumNullable {
  final Map<Uri, num?>? value;

  SimpleClassNullableOfUriToNumNullable(this.value);

  factory SimpleClassNullableOfUriToNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToObject {
  final Map<BigInt, Object> value;

  SimpleClassOfBigIntToObject(this.value);

  factory SimpleClassOfBigIntToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToObject {
  final Map<BigInt, Object>? value;

  SimpleClassNullableOfBigIntToObject(this.value);

  factory SimpleClassNullableOfBigIntToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToObject {
  final Map<DateTime, Object> value;

  SimpleClassOfDateTimeToObject(this.value);

  factory SimpleClassOfDateTimeToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToObject {
  final Map<DateTime, Object>? value;

  SimpleClassNullableOfDateTimeToObject(this.value);

  factory SimpleClassNullableOfDateTimeToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToObject {
  final Map<dynamic, Object> value;

  SimpleClassOfDynamicToObject(this.value);

  factory SimpleClassOfDynamicToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToObject {
  final Map<dynamic, Object>? value;

  SimpleClassNullableOfDynamicToObject(this.value);

  factory SimpleClassNullableOfDynamicToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToObject {
  final Map<EnumType, Object> value;

  SimpleClassOfEnumTypeToObject(this.value);

  factory SimpleClassOfEnumTypeToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToObject {
  final Map<EnumType, Object>? value;

  SimpleClassNullableOfEnumTypeToObject(this.value);

  factory SimpleClassNullableOfEnumTypeToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToObject {
  final Map<int, Object> value;

  SimpleClassOfIntToObject(this.value);

  factory SimpleClassOfIntToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToObject {
  final Map<int, Object>? value;

  SimpleClassNullableOfIntToObject(this.value);

  factory SimpleClassNullableOfIntToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToObject {
  final Map<Object, Object> value;

  SimpleClassOfObjectToObject(this.value);

  factory SimpleClassOfObjectToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToObject {
  final Map<Object, Object>? value;

  SimpleClassNullableOfObjectToObject(this.value);

  factory SimpleClassNullableOfObjectToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToObject {
  final Map<String, Object> value;

  SimpleClassOfStringToObject(this.value);

  factory SimpleClassOfStringToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToObject {
  final Map<String, Object>? value;

  SimpleClassNullableOfStringToObject(this.value);

  factory SimpleClassNullableOfStringToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToObject {
  final Map<Uri, Object> value;

  SimpleClassOfUriToObject(this.value);

  factory SimpleClassOfUriToObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToObject {
  final Map<Uri, Object>? value;

  SimpleClassNullableOfUriToObject(this.value);

  factory SimpleClassNullableOfUriToObject.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToObjectNullable {
  final Map<BigInt, Object?> value;

  SimpleClassOfBigIntToObjectNullable(this.value);

  factory SimpleClassOfBigIntToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToObjectNullable {
  final Map<BigInt, Object?>? value;

  SimpleClassNullableOfBigIntToObjectNullable(this.value);

  factory SimpleClassNullableOfBigIntToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToObjectNullable {
  final Map<DateTime, Object?> value;

  SimpleClassOfDateTimeToObjectNullable(this.value);

  factory SimpleClassOfDateTimeToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToObjectNullable {
  final Map<DateTime, Object?>? value;

  SimpleClassNullableOfDateTimeToObjectNullable(this.value);

  factory SimpleClassNullableOfDateTimeToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToObjectNullable {
  final Map<dynamic, Object?> value;

  SimpleClassOfDynamicToObjectNullable(this.value);

  factory SimpleClassOfDynamicToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToObjectNullable {
  final Map<dynamic, Object?>? value;

  SimpleClassNullableOfDynamicToObjectNullable(this.value);

  factory SimpleClassNullableOfDynamicToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToObjectNullable {
  final Map<EnumType, Object?> value;

  SimpleClassOfEnumTypeToObjectNullable(this.value);

  factory SimpleClassOfEnumTypeToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToObjectNullable {
  final Map<EnumType, Object?>? value;

  SimpleClassNullableOfEnumTypeToObjectNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToObjectNullable {
  final Map<int, Object?> value;

  SimpleClassOfIntToObjectNullable(this.value);

  factory SimpleClassOfIntToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToObjectNullable {
  final Map<int, Object?>? value;

  SimpleClassNullableOfIntToObjectNullable(this.value);

  factory SimpleClassNullableOfIntToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToObjectNullable {
  final Map<Object, Object?> value;

  SimpleClassOfObjectToObjectNullable(this.value);

  factory SimpleClassOfObjectToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToObjectNullable {
  final Map<Object, Object?>? value;

  SimpleClassNullableOfObjectToObjectNullable(this.value);

  factory SimpleClassNullableOfObjectToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToObjectNullable {
  final Map<String, Object?> value;

  SimpleClassOfStringToObjectNullable(this.value);

  factory SimpleClassOfStringToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToObjectNullable {
  final Map<String, Object?>? value;

  SimpleClassNullableOfStringToObjectNullable(this.value);

  factory SimpleClassNullableOfStringToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToObjectNullable {
  final Map<Uri, Object?> value;

  SimpleClassOfUriToObjectNullable(this.value);

  factory SimpleClassOfUriToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToObjectNullable {
  final Map<Uri, Object?>? value;

  SimpleClassNullableOfUriToObjectNullable(this.value);

  factory SimpleClassNullableOfUriToObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToRecord {
  final Map<BigInt, (int, String, {bool truth})> value;

  SimpleClassOfBigIntToRecord(this.value);

  factory SimpleClassOfBigIntToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToRecord {
  final Map<BigInt, (int, String, {bool truth})>? value;

  SimpleClassNullableOfBigIntToRecord(this.value);

  factory SimpleClassNullableOfBigIntToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToRecord {
  final Map<DateTime, (int, String, {bool truth})> value;

  SimpleClassOfDateTimeToRecord(this.value);

  factory SimpleClassOfDateTimeToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToRecord {
  final Map<DateTime, (int, String, {bool truth})>? value;

  SimpleClassNullableOfDateTimeToRecord(this.value);

  factory SimpleClassNullableOfDateTimeToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToRecord {
  final Map<dynamic, (int, String, {bool truth})> value;

  SimpleClassOfDynamicToRecord(this.value);

  factory SimpleClassOfDynamicToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToRecord {
  final Map<dynamic, (int, String, {bool truth})>? value;

  SimpleClassNullableOfDynamicToRecord(this.value);

  factory SimpleClassNullableOfDynamicToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToRecord {
  final Map<EnumType, (int, String, {bool truth})> value;

  SimpleClassOfEnumTypeToRecord(this.value);

  factory SimpleClassOfEnumTypeToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToRecord {
  final Map<EnumType, (int, String, {bool truth})>? value;

  SimpleClassNullableOfEnumTypeToRecord(this.value);

  factory SimpleClassNullableOfEnumTypeToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToRecord {
  final Map<int, (int, String, {bool truth})> value;

  SimpleClassOfIntToRecord(this.value);

  factory SimpleClassOfIntToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToRecord {
  final Map<int, (int, String, {bool truth})>? value;

  SimpleClassNullableOfIntToRecord(this.value);

  factory SimpleClassNullableOfIntToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToRecord {
  final Map<Object, (int, String, {bool truth})> value;

  SimpleClassOfObjectToRecord(this.value);

  factory SimpleClassOfObjectToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToRecord {
  final Map<Object, (int, String, {bool truth})>? value;

  SimpleClassNullableOfObjectToRecord(this.value);

  factory SimpleClassNullableOfObjectToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToRecord {
  final Map<String, (int, String, {bool truth})> value;

  SimpleClassOfStringToRecord(this.value);

  factory SimpleClassOfStringToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToRecord {
  final Map<String, (int, String, {bool truth})>? value;

  SimpleClassNullableOfStringToRecord(this.value);

  factory SimpleClassNullableOfStringToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToRecord {
  final Map<Uri, (int, String, {bool truth})> value;

  SimpleClassOfUriToRecord(this.value);

  factory SimpleClassOfUriToRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToRecord {
  final Map<Uri, (int, String, {bool truth})>? value;

  SimpleClassNullableOfUriToRecord(this.value);

  factory SimpleClassNullableOfUriToRecord.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToString {
  final Map<BigInt, String> value;

  SimpleClassOfBigIntToString(this.value);

  factory SimpleClassOfBigIntToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToString {
  final Map<BigInt, String>? value;

  SimpleClassNullableOfBigIntToString(this.value);

  factory SimpleClassNullableOfBigIntToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToString {
  final Map<DateTime, String> value;

  SimpleClassOfDateTimeToString(this.value);

  factory SimpleClassOfDateTimeToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToString {
  final Map<DateTime, String>? value;

  SimpleClassNullableOfDateTimeToString(this.value);

  factory SimpleClassNullableOfDateTimeToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToString {
  final Map<dynamic, String> value;

  SimpleClassOfDynamicToString(this.value);

  factory SimpleClassOfDynamicToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToString {
  final Map<dynamic, String>? value;

  SimpleClassNullableOfDynamicToString(this.value);

  factory SimpleClassNullableOfDynamicToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToString {
  final Map<EnumType, String> value;

  SimpleClassOfEnumTypeToString(this.value);

  factory SimpleClassOfEnumTypeToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToString {
  final Map<EnumType, String>? value;

  SimpleClassNullableOfEnumTypeToString(this.value);

  factory SimpleClassNullableOfEnumTypeToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToString {
  final Map<int, String> value;

  SimpleClassOfIntToString(this.value);

  factory SimpleClassOfIntToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToString {
  final Map<int, String>? value;

  SimpleClassNullableOfIntToString(this.value);

  factory SimpleClassNullableOfIntToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToString {
  final Map<Object, String> value;

  SimpleClassOfObjectToString(this.value);

  factory SimpleClassOfObjectToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToString {
  final Map<Object, String>? value;

  SimpleClassNullableOfObjectToString(this.value);

  factory SimpleClassNullableOfObjectToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToString {
  final Map<String, String> value;

  SimpleClassOfStringToString(this.value);

  factory SimpleClassOfStringToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToString {
  final Map<String, String>? value;

  SimpleClassNullableOfStringToString(this.value);

  factory SimpleClassNullableOfStringToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToString {
  final Map<Uri, String> value;

  SimpleClassOfUriToString(this.value);

  factory SimpleClassOfUriToString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToString {
  final Map<Uri, String>? value;

  SimpleClassNullableOfUriToString(this.value);

  factory SimpleClassNullableOfUriToString.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToStringNullable {
  final Map<BigInt, String?> value;

  SimpleClassOfBigIntToStringNullable(this.value);

  factory SimpleClassOfBigIntToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToStringNullable {
  final Map<BigInt, String?>? value;

  SimpleClassNullableOfBigIntToStringNullable(this.value);

  factory SimpleClassNullableOfBigIntToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToStringNullable {
  final Map<DateTime, String?> value;

  SimpleClassOfDateTimeToStringNullable(this.value);

  factory SimpleClassOfDateTimeToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToStringNullable {
  final Map<DateTime, String?>? value;

  SimpleClassNullableOfDateTimeToStringNullable(this.value);

  factory SimpleClassNullableOfDateTimeToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToStringNullable {
  final Map<dynamic, String?> value;

  SimpleClassOfDynamicToStringNullable(this.value);

  factory SimpleClassOfDynamicToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToStringNullable {
  final Map<dynamic, String?>? value;

  SimpleClassNullableOfDynamicToStringNullable(this.value);

  factory SimpleClassNullableOfDynamicToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToStringNullable {
  final Map<EnumType, String?> value;

  SimpleClassOfEnumTypeToStringNullable(this.value);

  factory SimpleClassOfEnumTypeToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToStringNullable {
  final Map<EnumType, String?>? value;

  SimpleClassNullableOfEnumTypeToStringNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToStringNullable {
  final Map<int, String?> value;

  SimpleClassOfIntToStringNullable(this.value);

  factory SimpleClassOfIntToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfIntToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfIntToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToStringNullable {
  final Map<int, String?>? value;

  SimpleClassNullableOfIntToStringNullable(this.value);

  factory SimpleClassNullableOfIntToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToStringNullable {
  final Map<Object, String?> value;

  SimpleClassOfObjectToStringNullable(this.value);

  factory SimpleClassOfObjectToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToStringNullable {
  final Map<Object, String?>? value;

  SimpleClassNullableOfObjectToStringNullable(this.value);

  factory SimpleClassNullableOfObjectToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToStringNullable {
  final Map<String, String?> value;

  SimpleClassOfStringToStringNullable(this.value);

  factory SimpleClassOfStringToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToStringNullable {
  final Map<String, String?>? value;

  SimpleClassNullableOfStringToStringNullable(this.value);

  factory SimpleClassNullableOfStringToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToStringNullable {
  final Map<Uri, String?> value;

  SimpleClassOfUriToStringNullable(this.value);

  factory SimpleClassOfUriToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfUriToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfUriToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToStringNullable {
  final Map<Uri, String?>? value;

  SimpleClassNullableOfUriToStringNullable(this.value);

  factory SimpleClassNullableOfUriToStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToUri {
  final Map<BigInt, Uri> value;

  SimpleClassOfBigIntToUri(this.value);

  factory SimpleClassOfBigIntToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToUri {
  final Map<BigInt, Uri>? value;

  SimpleClassNullableOfBigIntToUri(this.value);

  factory SimpleClassNullableOfBigIntToUri.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToUri {
  final Map<DateTime, Uri> value;

  SimpleClassOfDateTimeToUri(this.value);

  factory SimpleClassOfDateTimeToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToUri {
  final Map<DateTime, Uri>? value;

  SimpleClassNullableOfDateTimeToUri(this.value);

  factory SimpleClassNullableOfDateTimeToUri.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToUri {
  final Map<dynamic, Uri> value;

  SimpleClassOfDynamicToUri(this.value);

  factory SimpleClassOfDynamicToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToUri {
  final Map<dynamic, Uri>? value;

  SimpleClassNullableOfDynamicToUri(this.value);

  factory SimpleClassNullableOfDynamicToUri.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToUri {
  final Map<EnumType, Uri> value;

  SimpleClassOfEnumTypeToUri(this.value);

  factory SimpleClassOfEnumTypeToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToUri {
  final Map<EnumType, Uri>? value;

  SimpleClassNullableOfEnumTypeToUri(this.value);

  factory SimpleClassNullableOfEnumTypeToUri.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToUri {
  final Map<int, Uri> value;

  SimpleClassOfIntToUri(this.value);

  factory SimpleClassOfIntToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToUri {
  final Map<int, Uri>? value;

  SimpleClassNullableOfIntToUri(this.value);

  factory SimpleClassNullableOfIntToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToUri {
  final Map<Object, Uri> value;

  SimpleClassOfObjectToUri(this.value);

  factory SimpleClassOfObjectToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToUri {
  final Map<Object, Uri>? value;

  SimpleClassNullableOfObjectToUri(this.value);

  factory SimpleClassNullableOfObjectToUri.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToUri {
  final Map<String, Uri> value;

  SimpleClassOfStringToUri(this.value);

  factory SimpleClassOfStringToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToUri {
  final Map<String, Uri>? value;

  SimpleClassNullableOfStringToUri(this.value);

  factory SimpleClassNullableOfStringToUri.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToUri {
  final Map<Uri, Uri> value;

  SimpleClassOfUriToUri(this.value);

  factory SimpleClassOfUriToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToUri {
  final Map<Uri, Uri>? value;

  SimpleClassNullableOfUriToUri(this.value);

  factory SimpleClassNullableOfUriToUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriToUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntToUriNullable {
  final Map<BigInt, Uri?> value;

  SimpleClassOfBigIntToUriNullable(this.value);

  factory SimpleClassOfBigIntToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfBigIntToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfBigIntToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntToUriNullable {
  final Map<BigInt, Uri?>? value;

  SimpleClassNullableOfBigIntToUriNullable(this.value);

  factory SimpleClassNullableOfBigIntToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeToUriNullable {
  final Map<DateTime, Uri?> value;

  SimpleClassOfDateTimeToUriNullable(this.value);

  factory SimpleClassOfDateTimeToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDateTimeToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDateTimeToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeToUriNullable {
  final Map<DateTime, Uri?>? value;

  SimpleClassNullableOfDateTimeToUriNullable(this.value);

  factory SimpleClassNullableOfDateTimeToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamicToUriNullable {
  final Map<dynamic, Uri?> value;

  SimpleClassOfDynamicToUriNullable(this.value);

  factory SimpleClassOfDynamicToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfDynamicToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfDynamicToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamicToUriNullable {
  final Map<dynamic, Uri?>? value;

  SimpleClassNullableOfDynamicToUriNullable(this.value);

  factory SimpleClassNullableOfDynamicToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDynamicToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDynamicToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeToUriNullable {
  final Map<EnumType, Uri?> value;

  SimpleClassOfEnumTypeToUriNullable(this.value);

  factory SimpleClassOfEnumTypeToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfEnumTypeToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfEnumTypeToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeToUriNullable {
  final Map<EnumType, Uri?>? value;

  SimpleClassNullableOfEnumTypeToUriNullable(this.value);

  factory SimpleClassNullableOfEnumTypeToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntToUriNullable {
  final Map<int, Uri?> value;

  SimpleClassOfIntToUriNullable(this.value);

  factory SimpleClassOfIntToUriNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntToUriNullable {
  final Map<int, Uri?>? value;

  SimpleClassNullableOfIntToUriNullable(this.value);

  factory SimpleClassNullableOfIntToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectToUriNullable {
  final Map<Object, Uri?> value;

  SimpleClassOfObjectToUriNullable(this.value);

  factory SimpleClassOfObjectToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfObjectToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfObjectToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectToUriNullable {
  final Map<Object, Uri?>? value;

  SimpleClassNullableOfObjectToUriNullable(this.value);

  factory SimpleClassNullableOfObjectToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringToUriNullable {
  final Map<String, Uri?> value;

  SimpleClassOfStringToUriNullable(this.value);

  factory SimpleClassOfStringToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfStringToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfStringToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringToUriNullable {
  final Map<String, Uri?>? value;

  SimpleClassNullableOfStringToUriNullable(this.value);

  factory SimpleClassNullableOfStringToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriToUriNullable {
  final Map<Uri, Uri?> value;

  SimpleClassOfUriToUriNullable(this.value);

  factory SimpleClassOfUriToUriNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriToUriNullable {
  final Map<Uri, Uri?>? value;

  SimpleClassNullableOfUriToUriNullable(this.value);

  factory SimpleClassNullableOfUriToUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriToUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriToUriNullableToPgSql(this);
}
