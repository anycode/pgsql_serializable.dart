// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_set.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final Set value;

  @PgSqlKey(defaultValue: {42, true, false, null})
  Set withDefault;

  SimpleClass(this.value, this.withDefault);

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullable {
  final Set? value;

  @PgSqlKey(defaultValue: {42, true, false, null})
  Set? withDefault;

  SimpleClassNullable(this.value, this.withDefault);

  factory SimpleClassNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigInt {
  final Set<BigInt> value;

  SimpleClassOfBigInt(this.value);

  factory SimpleClassOfBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigInt {
  final Set<BigInt>? value;

  SimpleClassNullableOfBigInt(this.value);

  factory SimpleClassNullableOfBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntNullable {
  final Set<BigInt?> value;

  SimpleClassOfBigIntNullable(this.value);

  factory SimpleClassOfBigIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntNullable {
  final Set<BigInt?>? value;

  SimpleClassNullableOfBigIntNullable(this.value);

  factory SimpleClassNullableOfBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBool {
  final Set<bool> value;

  SimpleClassOfBool(this.value);

  factory SimpleClassOfBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBool {
  final Set<bool>? value;

  SimpleClassNullableOfBool(this.value);

  factory SimpleClassNullableOfBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBoolNullable {
  final Set<bool?> value;

  SimpleClassOfBoolNullable(this.value);

  factory SimpleClassOfBoolNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBoolNullable {
  final Set<bool?>? value;

  SimpleClassNullableOfBoolNullable(this.value);

  factory SimpleClassNullableOfBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTime {
  final Set<DateTime> value;

  SimpleClassOfDateTime(this.value);

  factory SimpleClassOfDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTime {
  final Set<DateTime>? value;

  SimpleClassNullableOfDateTime(this.value);

  factory SimpleClassNullableOfDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeNullable {
  final Set<DateTime?> value;

  SimpleClassOfDateTimeNullable(this.value);

  factory SimpleClassOfDateTimeNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeNullable {
  final Set<DateTime?>? value;

  SimpleClassNullableOfDateTimeNullable(this.value);

  factory SimpleClassNullableOfDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDouble {
  final Set<double> value;

  SimpleClassOfDouble(this.value);

  factory SimpleClassOfDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDouble {
  final Set<double>? value;

  SimpleClassNullableOfDouble(this.value);

  factory SimpleClassNullableOfDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDoubleNullable {
  final Set<double?> value;

  SimpleClassOfDoubleNullable(this.value);

  factory SimpleClassOfDoubleNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDoubleNullable {
  final Set<double?>? value;

  SimpleClassNullableOfDoubleNullable(this.value);

  factory SimpleClassNullableOfDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDuration {
  final Set<Duration> value;

  SimpleClassOfDuration(this.value);

  factory SimpleClassOfDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDuration {
  final Set<Duration>? value;

  SimpleClassNullableOfDuration(this.value);

  factory SimpleClassNullableOfDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDurationNullable {
  final Set<Duration?> value;

  SimpleClassOfDurationNullable(this.value);

  factory SimpleClassOfDurationNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDurationNullable {
  final Set<Duration?>? value;

  SimpleClassNullableOfDurationNullable(this.value);

  factory SimpleClassNullableOfDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamic {
  final Set<dynamic> value;

  SimpleClassOfDynamic(this.value);

  factory SimpleClassOfDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamic {
  final Set<dynamic>? value;

  SimpleClassNullableOfDynamic(this.value);

  factory SimpleClassNullableOfDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumType {
  final Set<EnumType> value;

  SimpleClassOfEnumType(this.value);

  factory SimpleClassOfEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumType {
  final Set<EnumType>? value;

  SimpleClassNullableOfEnumType(this.value);

  factory SimpleClassNullableOfEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeNullable {
  final Set<EnumType?> value;

  SimpleClassOfEnumTypeNullable(this.value);

  factory SimpleClassOfEnumTypeNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeNullable {
  final Set<EnumType?>? value;

  SimpleClassNullableOfEnumTypeNullable(this.value);

  factory SimpleClassNullableOfEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfFromPgSqlDynamicParam {
  final Set<FromPgSqlDynamicParam> value;

  SimpleClassOfFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlDynamicParam {
  final Set<FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfFromPgSqlNullableObjectParam {
  final Set<FromPgSqlNullableObjectParam> value;

  SimpleClassOfFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlNullableObjectParam {
  final Set<FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfFromPgSqlObjectParam {
  final Set<FromPgSqlObjectParam> value;

  SimpleClassOfFromPgSqlObjectParam(this.value);

  factory SimpleClassOfFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlObjectParam {
  final Set<FromPgSqlObjectParam>? value;

  SimpleClassNullableOfFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfInt {
  final Set<int> value;

  SimpleClassOfInt(this.value);

  factory SimpleClassOfInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfInt {
  final Set<int>? value;

  SimpleClassNullableOfInt(this.value);

  factory SimpleClassNullableOfInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntNullable {
  final Set<int?> value;

  SimpleClassOfIntNullable(this.value);

  factory SimpleClassOfIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntNullable {
  final Set<int?>? value;

  SimpleClassNullableOfIntNullable(this.value);

  factory SimpleClassNullableOfIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfNum {
  final Set<num> value;

  SimpleClassOfNum(this.value);

  factory SimpleClassOfNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfNum {
  final Set<num>? value;

  SimpleClassNullableOfNum(this.value);

  factory SimpleClassNullableOfNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfNumNullable {
  final Set<num?> value;

  SimpleClassOfNumNullable(this.value);

  factory SimpleClassOfNumNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfNumNullable {
  final Set<num?>? value;

  SimpleClassNullableOfNumNullable(this.value);

  factory SimpleClassNullableOfNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObject {
  final Set<Object> value;

  SimpleClassOfObject(this.value);

  factory SimpleClassOfObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObject {
  final Set<Object>? value;

  SimpleClassNullableOfObject(this.value);

  factory SimpleClassNullableOfObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectNullable {
  final Set<Object?> value;

  SimpleClassOfObjectNullable(this.value);

  factory SimpleClassOfObjectNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectNullable {
  final Set<Object?>? value;

  SimpleClassNullableOfObjectNullable(this.value);

  factory SimpleClassNullableOfObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfRecord {
  final Set<(int, String, {bool truth})> value;

  SimpleClassOfRecord(this.value);

  factory SimpleClassOfRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfRecord {
  final Set<(int, String, {bool truth})>? value;

  SimpleClassNullableOfRecord(this.value);

  factory SimpleClassNullableOfRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfString {
  final Set<String> value;

  SimpleClassOfString(this.value);

  factory SimpleClassOfString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfString {
  final Set<String>? value;

  SimpleClassNullableOfString(this.value);

  factory SimpleClassNullableOfString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringNullable {
  final Set<String?> value;

  SimpleClassOfStringNullable(this.value);

  factory SimpleClassOfStringNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringNullable {
  final Set<String?>? value;

  SimpleClassNullableOfStringNullable(this.value);

  factory SimpleClassNullableOfStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUri {
  final Set<Uri> value;

  SimpleClassOfUri(this.value);

  factory SimpleClassOfUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUri {
  final Set<Uri>? value;

  SimpleClassNullableOfUri(this.value);

  factory SimpleClassNullableOfUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriNullable {
  final Set<Uri?> value;

  SimpleClassOfUriNullable(this.value);

  factory SimpleClassOfUriNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriNullable {
  final Set<Uri?>? value;

  SimpleClassNullableOfUriNullable(this.value);

  factory SimpleClassNullableOfUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriNullableToPgSql(this);
}
