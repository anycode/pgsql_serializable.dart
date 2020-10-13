// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_list.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final List value;

  @PgSqlKey(nullable: false)
  final List nullable;

  @PgSqlKey(defaultValue: [42, true, false, null])
  List withDefault;

  SimpleClass(
    this.value,
    this.nullable,
  );

  factory SimpleClass.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBigInt {
  final List<BigInt> value;

  @PgSqlKey(nullable: false)
  final List<BigInt> nullable;

  SimpleClassBigInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassBigInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBigIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBigIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassBool {
  final List<bool> value;

  @PgSqlKey(nullable: false)
  final List<bool> nullable;

  SimpleClassBool(
    this.value,
    this.nullable,
  );

  factory SimpleClassBool.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassBoolFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassBoolToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDateTime {
  final List<DateTime> value;

  @PgSqlKey(nullable: false)
  final List<DateTime> nullable;

  SimpleClassDateTime(
    this.value,
    this.nullable,
  );

  factory SimpleClassDateTime.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDateTimeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDateTimeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDouble {
  final List<double> value;

  @PgSqlKey(nullable: false)
  final List<double> nullable;

  SimpleClassDouble(
    this.value,
    this.nullable,
  );

  factory SimpleClassDouble.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDoubleFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDoubleToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDuration {
  final List<Duration> value;

  @PgSqlKey(nullable: false)
  final List<Duration> nullable;

  SimpleClassDuration(
    this.value,
    this.nullable,
  );

  factory SimpleClassDuration.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDurationFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDurationToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassDynamic {
  final List<dynamic> value;

  @PgSqlKey(nullable: false)
  final List<dynamic> nullable;

  SimpleClassDynamic(
    this.value,
    this.nullable,
  );

  factory SimpleClassDynamic.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassDynamicFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassDynamicToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassEnumType {
  final List<EnumType> value;

  @PgSqlKey(nullable: false)
  final List<EnumType> nullable;

  SimpleClassEnumType(
    this.value,
    this.nullable,
  );

  factory SimpleClassEnumType.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassEnumTypeFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassEnumTypeToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassInt {
  final List<int> value;

  @PgSqlKey(nullable: false)
  final List<int> nullable;

  SimpleClassInt(
    this.value,
    this.nullable,
  );

  factory SimpleClassInt.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassIntFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassIntToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassNum {
  final List<num> value;

  @PgSqlKey(nullable: false)
  final List<num> nullable;

  SimpleClassNum(
    this.value,
    this.nullable,
  );

  factory SimpleClassNum.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassNumFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassNumToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassObject {
  final List<Object> value;

  @PgSqlKey(nullable: false)
  final List<Object> nullable;

  SimpleClassObject(
    this.value,
    this.nullable,
  );

  factory SimpleClassObject.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassObjectFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassObjectToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassString {
  final List<String> value;

  @PgSqlKey(nullable: false)
  final List<String> nullable;

  SimpleClassString(
    this.value,
    this.nullable,
  );

  factory SimpleClassString.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassStringFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassStringToPgSql(this);
}

@PgSqlSerializable()
class SimpleClassUri {
  final List<Uri> value;

  @PgSqlKey(nullable: false)
  final List<Uri> nullable;

  SimpleClassUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToPgSql(this);
}
