// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_list.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final List value;

  @PgSqlKey(defaultValue: [42, true, false, null])
  List withDefault;

  SimpleClass(
    this.value,
    this.withDefault,
  );

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullable {
  final List? value;

  @PgSqlKey(defaultValue: [42, true, false, null])
  List? withDefault;

  SimpleClassNullable(
    this.value,
    this.withDefault,
  );

  factory SimpleClassNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigInt {
  final List<BigInt> value;

  SimpleClassOfBigInt(
    this.value,
  );

  factory SimpleClassOfBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigInt {
  final List<BigInt>? value;

  SimpleClassNullableOfBigInt(
    this.value,
  );

  factory SimpleClassNullableOfBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBigIntNullable {
  final List<BigInt?> value;

  SimpleClassOfBigIntNullable(
    this.value,
  );

  factory SimpleClassOfBigIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntNullable {
  final List<BigInt?>? value;

  SimpleClassNullableOfBigIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfBigIntNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBool {
  final List<bool> value;

  SimpleClassOfBool(
    this.value,
  );

  factory SimpleClassOfBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBool {
  final List<bool>? value;

  SimpleClassNullableOfBool(
    this.value,
  );

  factory SimpleClassNullableOfBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfBoolNullable {
  final List<bool?> value;

  SimpleClassOfBoolNullable(
    this.value,
  );

  factory SimpleClassOfBoolNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBoolNullable {
  final List<bool?>? value;

  SimpleClassNullableOfBoolNullable(
    this.value,
  );

  factory SimpleClassNullableOfBoolNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTime {
  final List<DateTime> value;

  SimpleClassOfDateTime(
    this.value,
  );

  factory SimpleClassOfDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTime {
  final List<DateTime>? value;

  SimpleClassNullableOfDateTime(
    this.value,
  );

  factory SimpleClassNullableOfDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDateTimeNullable {
  final List<DateTime?> value;

  SimpleClassOfDateTimeNullable(
    this.value,
  );

  factory SimpleClassOfDateTimeNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeNullable {
  final List<DateTime?>? value;

  SimpleClassNullableOfDateTimeNullable(
    this.value,
  );

  factory SimpleClassNullableOfDateTimeNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDouble {
  final List<double> value;

  SimpleClassOfDouble(
    this.value,
  );

  factory SimpleClassOfDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDouble {
  final List<double>? value;

  SimpleClassNullableOfDouble(
    this.value,
  );

  factory SimpleClassNullableOfDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDoubleNullable {
  final List<double?> value;

  SimpleClassOfDoubleNullable(
    this.value,
  );

  factory SimpleClassOfDoubleNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDoubleNullable {
  final List<double?>? value;

  SimpleClassNullableOfDoubleNullable(
    this.value,
  );

  factory SimpleClassNullableOfDoubleNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDuration {
  final List<Duration> value;

  SimpleClassOfDuration(
    this.value,
  );

  factory SimpleClassOfDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDuration {
  final List<Duration>? value;

  SimpleClassNullableOfDuration(
    this.value,
  );

  factory SimpleClassNullableOfDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDurationNullable {
  final List<Duration?> value;

  SimpleClassOfDurationNullable(
    this.value,
  );

  factory SimpleClassOfDurationNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDurationNullable {
  final List<Duration?>? value;

  SimpleClassNullableOfDurationNullable(
    this.value,
  );

  factory SimpleClassNullableOfDurationNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfDynamic {
  final List<dynamic> value;

  SimpleClassOfDynamic(
    this.value,
  );

  factory SimpleClassOfDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamic {
  final List<dynamic>? value;

  SimpleClassNullableOfDynamic(
    this.value,
  );

  factory SimpleClassNullableOfDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumType {
  final List<EnumType> value;

  SimpleClassOfEnumType(
    this.value,
  );

  factory SimpleClassOfEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumType {
  final List<EnumType>? value;

  SimpleClassNullableOfEnumType(
    this.value,
  );

  factory SimpleClassNullableOfEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfEnumTypeNullable {
  final List<EnumType?> value;

  SimpleClassOfEnumTypeNullable(
    this.value,
  );

  factory SimpleClassOfEnumTypeNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeNullable {
  final List<EnumType?>? value;

  SimpleClassNullableOfEnumTypeNullable(
    this.value,
  );

  factory SimpleClassNullableOfEnumTypeNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfFromPgSqlDynamicParam {
  final List<FromPgSqlDynamicParam> value;

  SimpleClassOfFromPgSqlDynamicParam(
    this.value,
  );

  factory SimpleClassOfFromPgSqlDynamicParam.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassOfFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlDynamicParam {
  final List<FromPgSqlDynamicParam>? value;

  SimpleClassNullableOfFromPgSqlDynamicParam(
    this.value,
  );

  factory SimpleClassNullableOfFromPgSqlDynamicParam.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfFromPgSqlNullableObjectParam {
  final List<FromPgSqlNullableObjectParam> value;

  SimpleClassOfFromPgSqlNullableObjectParam(
    this.value,
  );

  factory SimpleClassOfFromPgSqlNullableObjectParam.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassOfFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlNullableObjectParam {
  final List<FromPgSqlNullableObjectParam>? value;

  SimpleClassNullableOfFromPgSqlNullableObjectParam(
    this.value,
  );

  factory SimpleClassNullableOfFromPgSqlNullableObjectParam.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfFromPgSqlObjectParam {
  final List<FromPgSqlObjectParam> value;

  SimpleClassOfFromPgSqlObjectParam(
    this.value,
  );

  factory SimpleClassOfFromPgSqlObjectParam.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassOfFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlObjectParam {
  final List<FromPgSqlObjectParam>? value;

  SimpleClassNullableOfFromPgSqlObjectParam(
    this.value,
  );

  factory SimpleClassNullableOfFromPgSqlObjectParam.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfInt {
  final List<int> value;

  SimpleClassOfInt(
    this.value,
  );

  factory SimpleClassOfInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfInt {
  final List<int>? value;

  SimpleClassNullableOfInt(
    this.value,
  );

  factory SimpleClassNullableOfInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfIntNullable {
  final List<int?> value;

  SimpleClassOfIntNullable(
    this.value,
  );

  factory SimpleClassOfIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntNullable {
  final List<int?>? value;

  SimpleClassNullableOfIntNullable(
    this.value,
  );

  factory SimpleClassNullableOfIntNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfNum {
  final List<num> value;

  SimpleClassOfNum(
    this.value,
  );

  factory SimpleClassOfNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfNum {
  final List<num>? value;

  SimpleClassNullableOfNum(
    this.value,
  );

  factory SimpleClassNullableOfNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfNumNullable {
  final List<num?> value;

  SimpleClassOfNumNullable(
    this.value,
  );

  factory SimpleClassOfNumNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfNumNullable {
  final List<num?>? value;

  SimpleClassNullableOfNumNullable(
    this.value,
  );

  factory SimpleClassNullableOfNumNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObject {
  final List<Object> value;

  SimpleClassOfObject(
    this.value,
  );

  factory SimpleClassOfObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObject {
  final List<Object>? value;

  SimpleClassNullableOfObject(
    this.value,
  );

  factory SimpleClassNullableOfObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfObjectNullable {
  final List<Object?> value;

  SimpleClassOfObjectNullable(
    this.value,
  );

  factory SimpleClassOfObjectNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectNullable {
  final List<Object?>? value;

  SimpleClassNullableOfObjectNullable(
    this.value,
  );

  factory SimpleClassNullableOfObjectNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfRecord {
  final List<(int, String, {bool truth})> value;

  SimpleClassOfRecord(
    this.value,
  );

  factory SimpleClassOfRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfRecord {
  final List<(int, String, {bool truth})>? value;

  SimpleClassNullableOfRecord(
    this.value,
  );

  factory SimpleClassNullableOfRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfString {
  final List<String> value;

  SimpleClassOfString(
    this.value,
  );

  factory SimpleClassOfString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfString {
  final List<String>? value;

  SimpleClassNullableOfString(
    this.value,
  );

  factory SimpleClassNullableOfString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfStringNullable {
  final List<String?> value;

  SimpleClassOfStringNullable(
    this.value,
  );

  factory SimpleClassOfStringNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringNullable {
  final List<String?>? value;

  SimpleClassNullableOfStringNullable(
    this.value,
  );

  factory SimpleClassNullableOfStringNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUri {
  final List<Uri> value;

  SimpleClassOfUri(
    this.value,
  );

  factory SimpleClassOfUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUri {
  final List<Uri>? value;

  SimpleClassNullableOfUri(
    this.value,
  );

  factory SimpleClassNullableOfUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassOfUriNullable {
  final List<Uri?> value;

  SimpleClassOfUriNullable(
    this.value,
  );

  factory SimpleClassOfUriNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriNullable {
  final List<Uri?>? value;

  SimpleClassNullableOfUriNullable(
    this.value,
  );

  factory SimpleClassNullableOfUriNullable.fromPgSql(
          Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriNullableToPgSql(this);
}
