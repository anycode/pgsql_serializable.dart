// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_record.g.dart';

typedef RecordTypeDef = ();

@PgSqlSerializable()
class SimpleClass {
  final RecordTypeDef value;

  SimpleClass(this.value);

  factory SimpleClass.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullable {
  final RecordTypeDef? value;

  SimpleClassNullable(this.value);

  factory SimpleClassNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableToPgSql(this);
}

typedef SimpleClassOfBigIntTypeDef = (BigInt, {BigInt named});

@PgSqlSerializable()
class SimpleClassOfBigInt {
  final SimpleClassOfBigIntTypeDef value;

  SimpleClassOfBigInt(this.value);

  factory SimpleClassOfBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigInt {
  final SimpleClassOfBigIntTypeDef? value;

  SimpleClassNullableOfBigInt(this.value);

  factory SimpleClassNullableOfBigInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBigIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfBigIntToPgSql(this);
}

typedef SimpleClassOfBigIntNullableTypeDef = (BigInt?, {BigInt? named});

@PgSqlSerializable()
class SimpleClassOfBigIntNullable {
  final SimpleClassOfBigIntNullableTypeDef value;

  SimpleClassOfBigIntNullable(this.value);

  factory SimpleClassOfBigIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBigIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBigIntNullable {
  final SimpleClassOfBigIntNullableTypeDef? value;

  SimpleClassNullableOfBigIntNullable(this.value);

  factory SimpleClassNullableOfBigIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBigIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBigIntNullableToPgSql(this);
}

typedef SimpleClassOfBoolTypeDef = (bool, {bool named});

@PgSqlSerializable()
class SimpleClassOfBool {
  final SimpleClassOfBoolTypeDef value;

  SimpleClassOfBool(this.value);

  factory SimpleClassOfBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBool {
  final SimpleClassOfBoolTypeDef? value;

  SimpleClassNullableOfBool(this.value);

  factory SimpleClassNullableOfBool.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfBoolFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfBoolToPgSql(this);
}

typedef SimpleClassOfBoolNullableTypeDef = (bool?, {bool? named});

@PgSqlSerializable()
class SimpleClassOfBoolNullable {
  final SimpleClassOfBoolNullableTypeDef value;

  SimpleClassOfBoolNullable(this.value);

  factory SimpleClassOfBoolNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfBoolNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfBoolNullable {
  final SimpleClassOfBoolNullableTypeDef? value;

  SimpleClassNullableOfBoolNullable(this.value);

  factory SimpleClassNullableOfBoolNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfBoolNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfBoolNullableToPgSql(this);
}

typedef SimpleClassOfDateTimeTypeDef = (DateTime, {DateTime named});

@PgSqlSerializable()
class SimpleClassOfDateTime {
  final SimpleClassOfDateTimeTypeDef value;

  SimpleClassOfDateTime(this.value);

  factory SimpleClassOfDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTime {
  final SimpleClassOfDateTimeTypeDef? value;

  SimpleClassNullableOfDateTime(this.value);

  factory SimpleClassNullableOfDateTime.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDateTimeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDateTimeToPgSql(this);
}

typedef SimpleClassOfDateTimeNullableTypeDef = (DateTime?, {DateTime? named});

@PgSqlSerializable()
class SimpleClassOfDateTimeNullable {
  final SimpleClassOfDateTimeNullableTypeDef value;

  SimpleClassOfDateTimeNullable(this.value);

  factory SimpleClassOfDateTimeNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDateTimeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDateTimeNullable {
  final SimpleClassOfDateTimeNullableTypeDef? value;

  SimpleClassNullableOfDateTimeNullable(this.value);

  factory SimpleClassNullableOfDateTimeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDateTimeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDateTimeNullableToPgSql(this);
}

typedef SimpleClassOfDoubleTypeDef = (double, {double named});

@PgSqlSerializable()
class SimpleClassOfDouble {
  final SimpleClassOfDoubleTypeDef value;

  SimpleClassOfDouble(this.value);

  factory SimpleClassOfDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDouble {
  final SimpleClassOfDoubleTypeDef? value;

  SimpleClassNullableOfDouble(this.value);

  factory SimpleClassNullableOfDouble.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDoubleFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDoubleToPgSql(this);
}

typedef SimpleClassOfDoubleNullableTypeDef = (double?, {double? named});

@PgSqlSerializable()
class SimpleClassOfDoubleNullable {
  final SimpleClassOfDoubleNullableTypeDef value;

  SimpleClassOfDoubleNullable(this.value);

  factory SimpleClassOfDoubleNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDoubleNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDoubleNullable {
  final SimpleClassOfDoubleNullableTypeDef? value;

  SimpleClassNullableOfDoubleNullable(this.value);

  factory SimpleClassNullableOfDoubleNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDoubleNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDoubleNullableToPgSql(this);
}

typedef SimpleClassOfDurationTypeDef = (Duration, {Duration named});

@PgSqlSerializable()
class SimpleClassOfDuration {
  final SimpleClassOfDurationTypeDef value;

  SimpleClassOfDuration(this.value);

  factory SimpleClassOfDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDuration {
  final SimpleClassOfDurationTypeDef? value;

  SimpleClassNullableOfDuration(this.value);

  factory SimpleClassNullableOfDuration.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDurationFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDurationToPgSql(this);
}

typedef SimpleClassOfDurationNullableTypeDef = (Duration?, {Duration? named});

@PgSqlSerializable()
class SimpleClassOfDurationNullable {
  final SimpleClassOfDurationNullableTypeDef value;

  SimpleClassOfDurationNullable(this.value);

  factory SimpleClassOfDurationNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDurationNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDurationNullable {
  final SimpleClassOfDurationNullableTypeDef? value;

  SimpleClassNullableOfDurationNullable(this.value);

  factory SimpleClassNullableOfDurationNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfDurationNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfDurationNullableToPgSql(this);
}

typedef SimpleClassOfDynamicTypeDef = (dynamic, {dynamic named});

@PgSqlSerializable()
class SimpleClassOfDynamic {
  final SimpleClassOfDynamicTypeDef value;

  SimpleClassOfDynamic(this.value);

  factory SimpleClassOfDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfDynamic {
  final SimpleClassOfDynamicTypeDef? value;

  SimpleClassNullableOfDynamic(this.value);

  factory SimpleClassNullableOfDynamic.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfDynamicFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfDynamicToPgSql(this);
}

typedef SimpleClassOfEnumTypeTypeDef = (EnumType, {EnumType named});

@PgSqlSerializable()
class SimpleClassOfEnumType {
  final SimpleClassOfEnumTypeTypeDef value;

  SimpleClassOfEnumType(this.value);

  factory SimpleClassOfEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumType {
  final SimpleClassOfEnumTypeTypeDef? value;

  SimpleClassNullableOfEnumType(this.value);

  factory SimpleClassNullableOfEnumType.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfEnumTypeFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfEnumTypeToPgSql(this);
}

typedef SimpleClassOfEnumTypeNullableTypeDef = (EnumType?, {EnumType? named});

@PgSqlSerializable()
class SimpleClassOfEnumTypeNullable {
  final SimpleClassOfEnumTypeNullableTypeDef value;

  SimpleClassOfEnumTypeNullable(this.value);

  factory SimpleClassOfEnumTypeNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfEnumTypeNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfEnumTypeNullable {
  final SimpleClassOfEnumTypeNullableTypeDef? value;

  SimpleClassNullableOfEnumTypeNullable(this.value);

  factory SimpleClassNullableOfEnumTypeNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfEnumTypeNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfEnumTypeNullableToPgSql(this);
}

typedef SimpleClassOfFromPgSqlDynamicParamTypeDef = (
  FromPgSqlDynamicParam, {
  FromPgSqlDynamicParam named,
});

@PgSqlSerializable()
class SimpleClassOfFromPgSqlDynamicParam {
  final SimpleClassOfFromPgSqlDynamicParamTypeDef value;

  SimpleClassOfFromPgSqlDynamicParam(this.value);

  factory SimpleClassOfFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlDynamicParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlDynamicParam {
  final SimpleClassOfFromPgSqlDynamicParamTypeDef? value;

  SimpleClassNullableOfFromPgSqlDynamicParam(this.value);

  factory SimpleClassNullableOfFromPgSqlDynamicParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfFromPgSqlDynamicParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlDynamicParamToPgSql(this);
}

typedef SimpleClassOfFromPgSqlNullableObjectParamTypeDef = (
  FromPgSqlNullableObjectParam, {
  FromPgSqlNullableObjectParam named,
});

@PgSqlSerializable()
class SimpleClassOfFromPgSqlNullableObjectParam {
  final SimpleClassOfFromPgSqlNullableObjectParamTypeDef value;

  SimpleClassOfFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassOfFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlNullableObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlNullableObjectParam {
  final SimpleClassOfFromPgSqlNullableObjectParamTypeDef? value;

  SimpleClassNullableOfFromPgSqlNullableObjectParam(this.value);

  factory SimpleClassNullableOfFromPgSqlNullableObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfFromPgSqlNullableObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlNullableObjectParamToPgSql(this);
}

typedef SimpleClassOfFromPgSqlObjectParamTypeDef = (
  FromPgSqlObjectParam, {
  FromPgSqlObjectParam named,
});

@PgSqlSerializable()
class SimpleClassOfFromPgSqlObjectParam {
  final SimpleClassOfFromPgSqlObjectParamTypeDef value;

  SimpleClassOfFromPgSqlObjectParam(this.value);

  factory SimpleClassOfFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassOfFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassOfFromPgSqlObjectParamToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfFromPgSqlObjectParam {
  final SimpleClassOfFromPgSqlObjectParamTypeDef? value;

  SimpleClassNullableOfFromPgSqlObjectParam(this.value);

  factory SimpleClassNullableOfFromPgSqlObjectParam.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfFromPgSqlObjectParamFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfFromPgSqlObjectParamToPgSql(this);
}

typedef SimpleClassOfIntTypeDef = (int, {int named});

@PgSqlSerializable()
class SimpleClassOfInt {
  final SimpleClassOfIntTypeDef value;

  SimpleClassOfInt(this.value);

  factory SimpleClassOfInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfInt {
  final SimpleClassOfIntTypeDef? value;

  SimpleClassNullableOfInt(this.value);

  factory SimpleClassNullableOfInt.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfIntFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfIntToPgSql(this);
}

typedef SimpleClassOfIntNullableTypeDef = (int?, {int? named});

@PgSqlSerializable()
class SimpleClassOfIntNullable {
  final SimpleClassOfIntNullableTypeDef value;

  SimpleClassOfIntNullable(this.value);

  factory SimpleClassOfIntNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfIntNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfIntNullable {
  final SimpleClassOfIntNullableTypeDef? value;

  SimpleClassNullableOfIntNullable(this.value);

  factory SimpleClassNullableOfIntNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfIntNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfIntNullableToPgSql(this);
}

typedef SimpleClassOfNumTypeDef = (num, {num named});

@PgSqlSerializable()
class SimpleClassOfNum {
  final SimpleClassOfNumTypeDef value;

  SimpleClassOfNum(this.value);

  factory SimpleClassOfNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfNum {
  final SimpleClassOfNumTypeDef? value;

  SimpleClassNullableOfNum(this.value);

  factory SimpleClassNullableOfNum.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfNumFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfNumToPgSql(this);
}

typedef SimpleClassOfNumNullableTypeDef = (num?, {num? named});

@PgSqlSerializable()
class SimpleClassOfNumNullable {
  final SimpleClassOfNumNullableTypeDef value;

  SimpleClassOfNumNullable(this.value);

  factory SimpleClassOfNumNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfNumNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfNumNullable {
  final SimpleClassOfNumNullableTypeDef? value;

  SimpleClassNullableOfNumNullable(this.value);

  factory SimpleClassNullableOfNumNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfNumNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfNumNullableToPgSql(this);
}

typedef SimpleClassOfObjectTypeDef = (Object, {Object named});

@PgSqlSerializable()
class SimpleClassOfObject {
  final SimpleClassOfObjectTypeDef value;

  SimpleClassOfObject(this.value);

  factory SimpleClassOfObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObject {
  final SimpleClassOfObjectTypeDef? value;

  SimpleClassNullableOfObject(this.value);

  factory SimpleClassNullableOfObject.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfObjectFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfObjectToPgSql(this);
}

typedef SimpleClassOfObjectNullableTypeDef = (Object?, {Object? named});

@PgSqlSerializable()
class SimpleClassOfObjectNullable {
  final SimpleClassOfObjectNullableTypeDef value;

  SimpleClassOfObjectNullable(this.value);

  factory SimpleClassOfObjectNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfObjectNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfObjectNullable {
  final SimpleClassOfObjectNullableTypeDef? value;

  SimpleClassNullableOfObjectNullable(this.value);

  factory SimpleClassNullableOfObjectNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfObjectNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfObjectNullableToPgSql(this);
}

typedef SimpleClassOfRecordTypeDef = (
  (int, String, {bool truth}), {
  (int, String, {bool truth}) named,
});

@PgSqlSerializable()
class SimpleClassOfRecord {
  final SimpleClassOfRecordTypeDef value;

  SimpleClassOfRecord(this.value);

  factory SimpleClassOfRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfRecordToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfRecord {
  final SimpleClassOfRecordTypeDef? value;

  SimpleClassNullableOfRecord(this.value);

  factory SimpleClassNullableOfRecord.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfRecordFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfRecordToPgSql(this);
}

typedef SimpleClassOfStringTypeDef = (String, {String named});

@PgSqlSerializable()
class SimpleClassOfString {
  final SimpleClassOfStringTypeDef value;

  SimpleClassOfString(this.value);

  factory SimpleClassOfString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfString {
  final SimpleClassOfStringTypeDef? value;

  SimpleClassNullableOfString(this.value);

  factory SimpleClassNullableOfString.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfStringFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfStringToPgSql(this);
}

typedef SimpleClassOfStringNullableTypeDef = (String?, {String? named});

@PgSqlSerializable()
class SimpleClassOfStringNullable {
  final SimpleClassOfStringNullableTypeDef value;

  SimpleClassOfStringNullable(this.value);

  factory SimpleClassOfStringNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfStringNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfStringNullable {
  final SimpleClassOfStringNullableTypeDef? value;

  SimpleClassNullableOfStringNullable(this.value);

  factory SimpleClassNullableOfStringNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfStringNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfStringNullableToPgSql(this);
}

typedef SimpleClassOfUriTypeDef = (Uri, {Uri named});

@PgSqlSerializable()
class SimpleClassOfUri {
  final SimpleClassOfUriTypeDef value;

  SimpleClassOfUri(this.value);

  factory SimpleClassOfUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUri {
  final SimpleClassOfUriTypeDef? value;

  SimpleClassNullableOfUri(this.value);

  factory SimpleClassNullableOfUri.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassNullableOfUriFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassNullableOfUriToPgSql(this);
}

typedef SimpleClassOfUriNullableTypeDef = (Uri?, {Uri? named});

@PgSqlSerializable()
class SimpleClassOfUriNullable {
  final SimpleClassOfUriNullableTypeDef value;

  SimpleClassOfUriNullable(this.value);

  factory SimpleClassOfUriNullable.fromPgSql(Map<String, Object?> pgsql) =>
      _$SimpleClassOfUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() => _$SimpleClassOfUriNullableToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNullableOfUriNullable {
  final SimpleClassOfUriNullableTypeDef? value;

  SimpleClassNullableOfUriNullable(this.value);

  factory SimpleClassNullableOfUriNullable.fromPgSql(
    Map<String, Object?> pgsql,
  ) => _$SimpleClassNullableOfUriNullableFromPgSql(pgsql);

  Map<String, Object?> toPgSql() =>
      _$SimpleClassNullableOfUriNullableToPgSql(this);
}
