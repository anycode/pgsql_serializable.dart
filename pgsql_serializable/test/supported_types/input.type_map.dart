// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_map.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final Map value;

  @PgSqlKey(nullable: false)
  final Map nullable;

  @PgSqlKey(defaultValue: {'a': 1})
  Map withDefault;

  SimpleClass(
    this.value,
    this.nullable,
  );

  factory SimpleClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToBigInt {
  final Map<BigInt, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, BigInt> nullable;

  SimpleClassBigIntToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToBigInt {
  final Map<DateTime, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, BigInt> nullable;

  SimpleClassDateTimeToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToBigInt {
  final Map<dynamic, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, BigInt> nullable;

  SimpleClassDynamicToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToBigInt {
  final Map<EnumType, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, BigInt> nullable;

  SimpleClassEnumTypeToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToBigInt {
  final Map<int, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<int, BigInt> nullable;

  SimpleClassIntToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToBigInt {
  final Map<Object, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<Object, BigInt> nullable;

  SimpleClassObjectToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToBigInt {
  final Map<String, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<String, BigInt> nullable;

  SimpleClassStringToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToBigInt {
  final Map<Uri, BigInt> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, BigInt> nullable;

  SimpleClassUriToBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToBool {
  final Map<BigInt, bool> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, bool> nullable;

  SimpleClassBigIntToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToBool {
  final Map<DateTime, bool> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, bool> nullable;

  SimpleClassDateTimeToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToBool {
  final Map<dynamic, bool> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, bool> nullable;

  SimpleClassDynamicToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToBool {
  final Map<EnumType, bool> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, bool> nullable;

  SimpleClassEnumTypeToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToBool {
  final Map<int, bool> value;

  @PgSqlKey(nullable: false)
  final Map<int, bool> nullable;

  SimpleClassIntToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToBool {
  final Map<Object, bool> value;

  @PgSqlKey(nullable: false)
  final Map<Object, bool> nullable;

  SimpleClassObjectToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToBool {
  final Map<String, bool> value;

  @PgSqlKey(nullable: false)
  final Map<String, bool> nullable;

  SimpleClassStringToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToBool {
  final Map<Uri, bool> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, bool> nullable;

  SimpleClassUriToBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToDateTime {
  final Map<BigInt, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, DateTime> nullable;

  SimpleClassBigIntToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToDateTime {
  final Map<DateTime, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, DateTime> nullable;

  SimpleClassDateTimeToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToDateTime {
  final Map<dynamic, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, DateTime> nullable;

  SimpleClassDynamicToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToDateTime {
  final Map<EnumType, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, DateTime> nullable;

  SimpleClassEnumTypeToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToDateTime {
  final Map<int, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<int, DateTime> nullable;

  SimpleClassIntToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToDateTime {
  final Map<Object, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<Object, DateTime> nullable;

  SimpleClassObjectToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToDateTime {
  final Map<String, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<String, DateTime> nullable;

  SimpleClassStringToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToDateTime {
  final Map<Uri, DateTime> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, DateTime> nullable;

  SimpleClassUriToDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToDouble {
  final Map<BigInt, double> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, double> nullable;

  SimpleClassBigIntToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToDouble {
  final Map<DateTime, double> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, double> nullable;

  SimpleClassDateTimeToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToDouble {
  final Map<dynamic, double> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, double> nullable;

  SimpleClassDynamicToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToDouble {
  final Map<EnumType, double> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, double> nullable;

  SimpleClassEnumTypeToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToDouble {
  final Map<int, double> value;

  @PgSqlKey(nullable: false)
  final Map<int, double> nullable;

  SimpleClassIntToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToDouble {
  final Map<Object, double> value;

  @PgSqlKey(nullable: false)
  final Map<Object, double> nullable;

  SimpleClassObjectToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToDouble {
  final Map<String, double> value;

  @PgSqlKey(nullable: false)
  final Map<String, double> nullable;

  SimpleClassStringToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToDouble {
  final Map<Uri, double> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, double> nullable;

  SimpleClassUriToDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToDuration {
  final Map<BigInt, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, Duration> nullable;

  SimpleClassBigIntToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToDuration {
  final Map<DateTime, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, Duration> nullable;

  SimpleClassDateTimeToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToDuration {
  final Map<dynamic, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, Duration> nullable;

  SimpleClassDynamicToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToDuration {
  final Map<EnumType, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, Duration> nullable;

  SimpleClassEnumTypeToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToDuration {
  final Map<int, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<int, Duration> nullable;

  SimpleClassIntToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToDuration {
  final Map<Object, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<Object, Duration> nullable;

  SimpleClassObjectToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToDuration {
  final Map<String, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<String, Duration> nullable;

  SimpleClassStringToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToDuration {
  final Map<Uri, Duration> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, Duration> nullable;

  SimpleClassUriToDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToDynamic {
  final Map<BigInt, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, dynamic> nullable;

  SimpleClassBigIntToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToDynamic {
  final Map<DateTime, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, dynamic> nullable;

  SimpleClassDateTimeToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToDynamic {
  final Map<dynamic, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, dynamic> nullable;

  SimpleClassDynamicToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToDynamic {
  final Map<EnumType, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, dynamic> nullable;

  SimpleClassEnumTypeToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToDynamic {
  final Map<int, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<int, dynamic> nullable;

  SimpleClassIntToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToDynamic {
  final Map<Object, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<Object, dynamic> nullable;

  SimpleClassObjectToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToDynamic {
  final Map<String, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<String, dynamic> nullable;

  SimpleClassStringToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToDynamic {
  final Map<Uri, dynamic> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, dynamic> nullable;

  SimpleClassUriToDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToEnumType {
  final Map<BigInt, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, EnumType> nullable;

  SimpleClassBigIntToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToEnumType {
  final Map<DateTime, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, EnumType> nullable;

  SimpleClassDateTimeToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToEnumType {
  final Map<dynamic, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, EnumType> nullable;

  SimpleClassDynamicToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToEnumType {
  final Map<EnumType, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, EnumType> nullable;

  SimpleClassEnumTypeToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToEnumType {
  final Map<int, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<int, EnumType> nullable;

  SimpleClassIntToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToEnumType {
  final Map<Object, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<Object, EnumType> nullable;

  SimpleClassObjectToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToEnumType {
  final Map<String, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<String, EnumType> nullable;

  SimpleClassStringToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToEnumType {
  final Map<Uri, EnumType> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, EnumType> nullable;

  SimpleClassUriToEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToInt {
  final Map<BigInt, int> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, int> nullable;

  SimpleClassBigIntToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToInt {
  final Map<DateTime, int> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, int> nullable;

  SimpleClassDateTimeToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToInt {
  final Map<dynamic, int> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, int> nullable;

  SimpleClassDynamicToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToInt {
  final Map<EnumType, int> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, int> nullable;

  SimpleClassEnumTypeToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToInt {
  final Map<int, int> value;

  @PgSqlKey(nullable: false)
  final Map<int, int> nullable;

  SimpleClassIntToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToInt {
  final Map<Object, int> value;

  @PgSqlKey(nullable: false)
  final Map<Object, int> nullable;

  SimpleClassObjectToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToInt {
  final Map<String, int> value;

  @PgSqlKey(nullable: false)
  final Map<String, int> nullable;

  SimpleClassStringToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToInt {
  final Map<Uri, int> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, int> nullable;

  SimpleClassUriToInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToNum {
  final Map<BigInt, num> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, num> nullable;

  SimpleClassBigIntToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToNum {
  final Map<DateTime, num> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, num> nullable;

  SimpleClassDateTimeToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToNum {
  final Map<dynamic, num> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, num> nullable;

  SimpleClassDynamicToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToNum {
  final Map<EnumType, num> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, num> nullable;

  SimpleClassEnumTypeToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToNum {
  final Map<int, num> value;

  @PgSqlKey(nullable: false)
  final Map<int, num> nullable;

  SimpleClassIntToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToNum {
  final Map<Object, num> value;

  @PgSqlKey(nullable: false)
  final Map<Object, num> nullable;

  SimpleClassObjectToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToNum {
  final Map<String, num> value;

  @PgSqlKey(nullable: false)
  final Map<String, num> nullable;

  SimpleClassStringToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToNum {
  final Map<Uri, num> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, num> nullable;

  SimpleClassUriToNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToObject {
  final Map<BigInt, Object> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, Object> nullable;

  SimpleClassBigIntToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToObject {
  final Map<DateTime, Object> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, Object> nullable;

  SimpleClassDateTimeToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToObject {
  final Map<dynamic, Object> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, Object> nullable;

  SimpleClassDynamicToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToObject {
  final Map<EnumType, Object> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, Object> nullable;

  SimpleClassEnumTypeToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToObject {
  final Map<int, Object> value;

  @PgSqlKey(nullable: false)
  final Map<int, Object> nullable;

  SimpleClassIntToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToObject {
  final Map<Object, Object> value;

  @PgSqlKey(nullable: false)
  final Map<Object, Object> nullable;

  SimpleClassObjectToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToObject {
  final Map<String, Object> value;

  @PgSqlKey(nullable: false)
  final Map<String, Object> nullable;

  SimpleClassStringToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToObject {
  final Map<Uri, Object> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, Object> nullable;

  SimpleClassUriToObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToString {
  final Map<BigInt, String> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, String> nullable;

  SimpleClassBigIntToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToString {
  final Map<DateTime, String> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, String> nullable;

  SimpleClassDateTimeToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToString {
  final Map<dynamic, String> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, String> nullable;

  SimpleClassDynamicToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToString {
  final Map<EnumType, String> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, String> nullable;

  SimpleClassEnumTypeToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToString {
  final Map<int, String> value;

  @PgSqlKey(nullable: false)
  final Map<int, String> nullable;

  SimpleClassIntToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToString {
  final Map<Object, String> value;

  @PgSqlKey(nullable: false)
  final Map<Object, String> nullable;

  SimpleClassObjectToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToString {
  final Map<String, String> value;

  @PgSqlKey(nullable: false)
  final Map<String, String> nullable;

  SimpleClassStringToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToString {
  final Map<Uri, String> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, String> nullable;

  SimpleClassUriToString(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigIntToUri {
  final Map<BigInt, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<BigInt, Uri> nullable;

  SimpleClassBigIntToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigIntToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTimeToUri {
  final Map<DateTime, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<DateTime, Uri> nullable;

  SimpleClassDateTimeToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTimeToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamicToUri {
  final Map<dynamic, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<dynamic, Uri> nullable;

  SimpleClassDynamicToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamicToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumTypeToUri {
  final Map<EnumType, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<EnumType, Uri> nullable;

  SimpleClassEnumTypeToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumTypeToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassIntToUri {
  final Map<int, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<int, Uri> nullable;

  SimpleClassIntToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassIntToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObjectToUri {
  final Map<Object, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<Object, Uri> nullable;

  SimpleClassObjectToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassObjectToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassStringToUri {
  final Map<String, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<String, Uri> nullable;

  SimpleClassStringToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassStringToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToUriToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUriToUri {
  final Map<Uri, Uri> value;

  @PgSqlKey(nullable: false)
  final Map<Uri, Uri> nullable;

  SimpleClassUriToUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassUriToUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriToUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToUriToPgSql(this);
}
