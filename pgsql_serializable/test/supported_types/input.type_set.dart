// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'enum_type.dart';

part 'input.type_set.g.dart';

@PgSqlSerializable()
class SimpleClass {
  final Set value;

  @PgSqlKey(nullable: false)
  final Set nullable;

  @PgSqlKey(defaultValue: {42, true, false, null})
  Set withDefault;

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
  final Set<BigInt> value;

  @PgSqlKey(nullable: false)
  final Set<BigInt> nullable;

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
  final Set<bool> value;

  @PgSqlKey(nullable: false)
  final Set<bool> nullable;

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
  final Set<DateTime> value;

  @PgSqlKey(nullable: false)
  final Set<DateTime> nullable;

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
  final Set<double> value;

  @PgSqlKey(nullable: false)
  final Set<double> nullable;

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
  final Set<Duration> value;

  @PgSqlKey(nullable: false)
  final Set<Duration> nullable;

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
  final Set<dynamic> value;

  @PgSqlKey(nullable: false)
  final Set<dynamic> nullable;

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
  final Set<EnumType> value;

  @PgSqlKey(nullable: false)
  final Set<EnumType> nullable;

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
  final Set<int> value;

  @PgSqlKey(nullable: false)
  final Set<int> nullable;

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
  final Set<num> value;

  @PgSqlKey(nullable: false)
  final Set<num> nullable;

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
  final Set<Object> value;

  @PgSqlKey(nullable: false)
  final Set<Object> nullable;

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
  final Set<String> value;

  @PgSqlKey(nullable: false)
  final Set<String> nullable;

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
  final Set<Uri> value;

  @PgSqlKey(nullable: false)
  final Set<Uri> nullable;

  SimpleClassUri(
    this.value,
    this.nullable,
  );

  factory SimpleClassUri.fromPgSql(Map<String, dynamic> pgsql) =>
      _$SimpleClassUriFromPgSql(pgsql);

  Map<String, dynamic> toPgSql() => _$SimpleClassUriToPgSql(this);
}
