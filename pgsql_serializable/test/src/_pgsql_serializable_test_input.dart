// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen_test/annotations.dart';

part 'checked_test_input.dart';
part 'constants_copy.dart';
part 'core_subclass_type_input.dart';
part 'default_value_input.dart';
part 'field_namer_input.dart';
part 'generic_test_input.dart';
part 'inheritance_test_input.dart';
part 'pgsql_converter_test_input.dart';
part 'map_key_variety_test_input.dart';
part 'setter_test_input.dart';
part 'to_from_pgsql_test_input.dart';
part 'unknown_enum_value_test_input.dart';

@ShouldThrow('`@PgSqlSerializable` can only be used on classes.')
@PgSqlSerializable() // ignore: invalid_annotation_target
const theAnswer = 42;

@ShouldThrow('`@PgSqlSerializable` can only be used on classes.')
@PgSqlSerializable() // ignore: invalid_annotation_target
enum UnsupportedEnum { not, valid }

@ShouldThrow('`@PgSqlSerializable` can only be used on classes.')
@PgSqlSerializable() // ignore: invalid_annotation_target
Object annotatedMethod() => throw UnimplementedError();

@ShouldGenerate(
  r'''
OnlyStaticMembers _$OnlyStaticMembersFromPgSql(Map<String, dynamic> pgsql) =>
    OnlyStaticMembers();

Map<String, dynamic> _$OnlyStaticMembersToPgSql(OnlyStaticMembers instance) =>
    <String, dynamic>{};
''',
)
@PgSqlSerializable()
class OnlyStaticMembers {
  // To ensure static members are not considered for serialization.
  static const answer = 42;
  static final reason = DateTime.now();

  static int get understand => 42;
}

@ShouldGenerate(r'''
GeneralTestClass1 _$GeneralTestClass1FromPgSql(Map<String, dynamic> pgsql) =>
    GeneralTestClass1()
      ..firstName = pgsql['firstName'] as String
      ..lastName = pgsql['lastName'] as String
      ..height = pgsql['h'] as int
      ..dateOfBirth = DateTime.parse(pgsql['dateOfBirth'] as String)
      ..dynamicType = pgsql['dynamicType']
      ..varType = pgsql['varType']
      ..listOfInts =
          (pgsql['listOfInts'] as List<dynamic>).map((e) => e as int).toList();

Map<String, dynamic> _$GeneralTestClass1ToPgSql(GeneralTestClass1 instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'h': instance.height,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'dynamicType': instance.dynamicType,
      'varType': instance.varType,
      'listOfInts': instance.listOfInts,
    };
''')
@PgSqlSerializable()
class GeneralTestClass1 {
  late String firstName, lastName;
  @PgSqlKey(name: 'h')
  late int height;
  late DateTime dateOfBirth;
  dynamic dynamicType;

  //ignore: prefer_typing_uninitialized_variables,type_annotate_public_apis
  var varType;
  late List<int> listOfInts;
}

@ShouldGenerate(r'''
GeneralTestClass2 _$GeneralTestClass2FromPgSql(Map<String, dynamic> pgsql) =>
    GeneralTestClass2(
      pgsql['height'] as int,
      pgsql['firstName'] as String,
      pgsql['lastName'] as String?,
    )..dateOfBirth = DateTime.parse(pgsql['dateOfBirth'] as String);

Map<String, dynamic> _$GeneralTestClass2ToPgSql(GeneralTestClass2 instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'height': instance.height,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
    };
''')
@PgSqlSerializable()
class GeneralTestClass2 {
  final String firstName;
  final String? lastName;
  late int height;
  late DateTime dateOfBirth;

  GeneralTestClass2(this.height, String firstName, [this.lastName])
      :
        // ignore: prefer_initializing_formals
        firstName = firstName;
}

@ShouldGenerate(r'''
FinalFields _$FinalFieldsFromPgSql(Map<String, dynamic> pgsql) => FinalFields(
      pgsql['a'] as int,
    );

Map<String, dynamic> _$FinalFieldsToPgSql(FinalFields instance) =>
    <String, dynamic>{
      'a': instance.a,
    };
''')
@PgSqlSerializable()
class FinalFields {
  final int a;

  int get b => 4;

  FinalFields(this.a);
}

@ShouldGenerate(
  r'''
FinalFieldsNotSetInCtor _$FinalFieldsNotSetInCtorFromPgSql(
        Map<String, dynamic> pgsql) =>
    FinalFieldsNotSetInCtor();

Map<String, dynamic> _$FinalFieldsNotSetInCtorToPgSql(
        FinalFieldsNotSetInCtor instance) =>
    <String, dynamic>{};
''',
)
@PgSqlSerializable()
class FinalFieldsNotSetInCtor {
  final int a = 1;

  FinalFieldsNotSetInCtor();
}

@ShouldGenerate(r'''
SetSupport _$SetSupportFromPgSql(Map<String, dynamic> pgsql) => SetSupport(
      (pgsql['values'] as List<dynamic>).map((e) => e as int).toSet(),
    );

Map<String, dynamic> _$SetSupportToPgSql(SetSupport instance) =>
    <String, dynamic>{
      'values': instance.values.toList(),
    };
''')
@PgSqlSerializable()
class SetSupport {
  final Set<int> values;

  SetSupport(this.values);
}

@ShouldThrow(
  '''
Could not generate `toPgSql` code for `watch`.
To support the type `Stopwatch` you can:
$converterOrKeyInstructions''',
)
@PgSqlSerializable(createFactory: false)
class NoSerializeFieldType {
  Stopwatch? watch;
}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `watch`.
To support the type `Stopwatch` you can:
$converterOrKeyInstructions''',
)
@PgSqlSerializable(createToPgSql: false)
class NoDeserializeFieldType {
  Stopwatch? watch;
}

@ShouldThrow(
  '''
Could not generate `toPgSql` code for `durationDateTimeMap` because of type `Duration`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''',
)
@PgSqlSerializable(createFactory: false)
class NoSerializeBadKey {
  late Map<Duration, DateTime> durationDateTimeMap;
}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `durationDateTimeMap` because of type `Duration`.
Map keys must be one of: Object, dynamic, enum, String, BigInt, DateTime, int, Uri.''',
)
@PgSqlSerializable(createToPgSql: false)
class NoDeserializeBadKey {
  late Map<Duration, DateTime> durationDateTimeMap;
}

@ShouldGenerate(
  r'''
Map<String, dynamic> _$IncludeIfNullOverrideToPgSql(
    IncludeIfNullOverride instance) {
  final val = <String, dynamic>{
    'number': instance.number,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('str', instance.str);
  return val;
}
''',
)
@PgSqlSerializable(createFactory: false, includeIfNull: false)
class IncludeIfNullOverride {
  @PgSqlKey(includeIfNull: true)
  int? number;
  String? str;
}

// https://github.com/google/pgsql_serializable.dart/issues/7 regression
@ShouldThrow(
  'The class `NoCtorClass` has no default constructor.',
)
@PgSqlSerializable()
class NoCtorClass {
  late final int member;

  //ignore: avoid_unused_constructor_parameters
  factory NoCtorClass.fromPgSql(Map<String, dynamic> pgsql) =>
      throw UnimplementedError();
}

// https://github.com/google/pgsql_serializable.dart/issues/7 regression
@ShouldThrow(
  'The class `WrongConstructorNameClass` does not have a constructor with the '
  'name `bob`.',
)
@PgSqlSerializable(constructor: 'bob')
class WrongConstructorNameClass {
  late final int member;
}

@ShouldThrow(
  'More than one field has the PgSQL key for name "str".',
  element: 'str',
)
@PgSqlSerializable(createFactory: false)
class KeyDupesField {
  @PgSqlKey(name: 'str')
  late int number;

  late String str;
}

@ShouldThrow(
  'More than one field has the PgSQL key for name "a".',
  element: 'str',
)
@PgSqlSerializable(createFactory: false)
class DupeKeys {
  @PgSqlKey(name: 'a')
  late int number;

  @PgSqlKey(name: 'a')
  late String str;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$IgnoredFieldClassToPgSql(IgnoredFieldClass instance) =>
    <String, dynamic>{
      'ignoredFalseField': instance.ignoredFalseField,
      'ignoredNullField': instance.ignoredNullField,
    };
''')
@PgSqlSerializable(createFactory: false)
class IgnoredFieldClass {
  // ignore: deprecated_member_use
  @PgSqlKey(ignore: true)
  late int ignoredTrueField;

  // ignore: deprecated_member_use
  @PgSqlKey(ignore: false)
  late int ignoredFalseField;

  late int ignoredNullField;
}

@ShouldThrow(
  'Cannot populate the required constructor argument: ignoredTrueField. It is '
  'assigned to a field not meant to be used in fromPgSql.',
  element: '',
)
@PgSqlSerializable()
class IgnoredFieldCtorClass {
  @PgSqlKey(includeFromPgSql: false, includeToPgSql: false)
  int ignoredTrueField;

  IgnoredFieldCtorClass(this.ignoredTrueField);
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `ignoredTrueField` field. '
  'Cannot use both `ignore` and `includeToPgSql` on the same field. '
  'Since `ignore` is deprecated, you should only use `includeToPgSql`.',
)
@PgSqlSerializable()
class IgnoreAndIncludeToPgSqlFieldCtorClass {
  // ignore: deprecated_member_use
  @PgSqlKey(ignore: true, includeToPgSql: true)
  int? ignoredTrueField;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `ignoredTrueField` field. '
  'Cannot use both `ignore` and `includeFromPgSql` on the same field. '
  'Since `ignore` is deprecated, you should only use `includeFromPgSql`.',
)
@PgSqlSerializable()
class IgnoreAndIncludeFromPgSqlFieldCtorClass {
  // ignore: deprecated_member_use
  @PgSqlKey(ignore: true, includeFromPgSql: true)
  int? ignoredTrueField;
}

@ShouldThrow(
  'Cannot populate the required constructor argument: '
  '_privateField. It is assigned to a private field.',
  element: '',
)
@PgSqlSerializable()
class PrivateFieldCtorClass {
  // ignore: unused_field
  final int _privateField;

  PrivateFieldCtorClass(this._privateField);
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `field` field. '
  'Cannot set both `disallowNullValue` and `includeIfNull` to `true`. '
  'This leads to incompatible `toPgSql` and `fromPgSql` behavior.',
  element: 'field',
)
@PgSqlSerializable()
class IncludeIfNullDisallowNullClass {
  @PgSqlKey(includeIfNull: true, disallowNullValue: true)
  late int field;
}

@ShouldThrow(
  'The `PgSqlValue` annotation on `BadEnum.value` does not have a value '
  'of type String, int, or null.',
  element: 'value',
)
@PgSqlSerializable()
class PgSqlValueWithBool {
  late BadEnum field;
}

enum BadEnum {
  @PgSqlValue(true)
  value
}

@ShouldGenerate(r'''const _$GoodEnumEnumMap = {
  GoodEnum.noAnnotation: 'noAnnotation',
  GoodEnum.stringAnnotation: 'string annotation',
  GoodEnum.stringAnnotationWeird: r"string annotation with $ funky 'values'",
  GoodEnum.intValue: 42,
  GoodEnum.nullValue: null,
};
''', contains: true)
@PgSqlSerializable()
class PgSqlValueValid {
  late GoodEnum field;
}

enum GoodEnum {
  noAnnotation,
  @PgSqlValue('string annotation')
  stringAnnotation,
  @PgSqlValue("string annotation with \$ funky 'values'")
  stringAnnotationWeird,
  @PgSqlValue(42)
  intValue,
  @PgSqlValue(null)
  nullValue
}

@ShouldGenerate(r'''
FieldWithFromPgSqlCtorAndTypeParams _$FieldWithFromPgSqlCtorAndTypeParamsFromPgSql(
        Map<String, dynamic> pgsql) =>
    FieldWithFromPgSqlCtorAndTypeParams()
      ..customOrders = pgsql['customOrders'] == null
          ? null
          : MyList<GeneralTestClass2, int>.fromPgSql((pgsql['customOrders']
                  as List<dynamic>)
              .map((e) => GeneralTestClass2.fromPgSql(e as Map<String, dynamic>))
              .toList());
''')
@PgSqlSerializable(createToPgSql: false)
class FieldWithFromPgSqlCtorAndTypeParams {
  MyList<GeneralTestClass2, int>? customOrders;
}

class MyList<T, Q> extends ListBase<T> {
  final List<T> _data;

  MyList(Iterable<T> source) : _data = source.toList();

  factory MyList.fromPgSql(List<T> items) => MyList(items);

  @override
  int get length => _data.length;

  @override
  set length(int value) {
    _data.length = value;
  }

  @override
  T operator [](int index) => _data[index];

  @override
  void operator []=(int index, T value) {
    _data[index] = value;
  }
}

mixin _PropInMixinI448RegressionMixin {
  late int nullable;
}

@ShouldGenerate(r'''
PropInMixinI448Regression _$PropInMixinI448RegressionFromPgSql(
        Map<String, dynamic> pgsql) =>
    PropInMixinI448Regression()
      ..nullable = pgsql['nullable'] as int
      ..notNullable = pgsql['notNullable'] as int;

Map<String, dynamic> _$PropInMixinI448RegressionToPgSql(
        PropInMixinI448Regression instance) =>
    <String, dynamic>{
      'nullable': instance.nullable,
      'notNullable': instance.notNullable,
    };
''')
@PgSqlSerializable()
class PropInMixinI448Regression with _PropInMixinI448RegressionMixin {
  @PgSqlKey()
  late int notNullable;
}

@ShouldGenerate(
  r'''
IgnoreUnannotated _$IgnoreUnannotatedFromPgSql(Map<String, dynamic> pgsql) =>
    IgnoreUnannotated()..annotated = pgsql['annotated'] as int;

Map<String, dynamic> _$IgnoreUnannotatedToPgSql(IgnoreUnannotated instance) =>
    <String, dynamic>{
      'annotated': instance.annotated,
    };
''',
)
@PgSqlSerializable(ignoreUnannotated: true)
class IgnoreUnannotated {
  @PgSqlKey()
  late int annotated;

  late int unannotated;
}

@ShouldGenerate(
  r'''
SubclassedPgSqlKey _$SubclassedPgSqlKeyFromPgSql(Map<String, dynamic> pgsql) =>
    SubclassedPgSqlKey()..annotatedWithSubclass = pgsql['bob'] as int;

Map<String, dynamic> _$SubclassedPgSqlKeyToPgSql(SubclassedPgSqlKey instance) =>
    <String, dynamic>{
      'bob': instance.annotatedWithSubclass,
    };
''',
)
@PgSqlSerializable(ignoreUnannotated: true)
class SubclassedPgSqlKey {
  @MyPgSqlKey()
  late int annotatedWithSubclass;
}

class MyPgSqlKey extends PgSqlKey {
  const MyPgSqlKey() : super(name: 'bob');
}

@ShouldGenerate(
  r'''
OverrideGetterExampleI613 _$OverrideGetterExampleI613FromPgSql(
        Map<String, dynamic> pgsql) =>
    OverrideGetterExampleI613()..id = pgsql['id'] as String;

Map<String, dynamic> _$OverrideGetterExampleI613ToPgSql(
        OverrideGetterExampleI613 instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
''',
)
@PgSqlSerializable()
class OverrideGetterExampleI613 extends OverrideGetterExampleI613Super {
  @override
  String get id => throw UnimplementedError();
}

class OverrideGetterExampleI613Super {
  set id(String value) => throw UnimplementedError();

  String get id => throw UnimplementedError();
}

@ShouldThrow(
  'Expecting a `fromPgSql` constructor with exactly one positional parameter. '
  'Found a constructor with 0 parameters.',
  element: 'fromPgSql',
)
@PgSqlSerializable()
class InvalidChildClassFromPgSql {
  late NoParamFromPgSqlCtor field;
}

class NoParamFromPgSqlCtor {
  NoParamFromPgSqlCtor.fromPgSql();
}

@ShouldThrow(
  'Expecting a `fromPgSql` constructor with exactly one positional parameter. '
  'The only extra parameters allowed are functions of the form '
  '`T Function(Object?) fromPgSqlT` '
  'where `T` is a type parameter of the target type.',
  element: 'fromPgSql',
)
@PgSqlSerializable()
class InvalidChildClassFromPgSql2 {
  late ExtraParamFromPgSqlCtor field;
}

class ExtraParamFromPgSqlCtor {
  // ignore: avoid_unused_constructor_parameters
  ExtraParamFromPgSqlCtor.fromPgSql(Map<String, dynamic> pgsql, int oops);

  Map<String, dynamic> toPgSql() => throw UnimplementedError();
}

@ShouldThrow(
  'Expecting a `toPgSql` function with no required parameters. '
  'The only extra parameters allowed are functions of the form '
  '`Object Function(T) toPgSqlT` where `T` is a type parameter of the target '
  ' type.',
  element: 'toPgSql',
)
@PgSqlSerializable()
class InvalidChildClassFromPgSql3 {
  late ExtraParamToPgSql field;
}

class ExtraParamToPgSql {
  // ignore: avoid_unused_constructor_parameters
  ExtraParamToPgSql.fromPgSql(Map<String, dynamic> pgsql);

  Map<String, dynamic> toPgSql(int bob) => throw UnimplementedError();
}

@ShouldGenerate(r'''
Map<String, dynamic> _$Issue1038RegressionTestToPgSql(
        Issue1038RegressionTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ean': instance.ean,
    };
''')
@PgSqlSerializable(createFactory: false)
class Issue1038RegressionTest {
  final String? id;
  final String? ean;

  Issue1038RegressionTest.id(this.id) : ean = null;

  Issue1038RegressionTest.ean(this.ean) : id = null;
}

@ShouldGenerate(
  r'''
TearOffFromPgSqlClass _$TearOffFromPgSqlClassFromPgSql(
        Map<String, dynamic> pgsql) =>
    TearOffFromPgSqlClass(
      TearOffValueClass(pgsql['value'] as String),
      TearOffValueClass.fromPgSql(pgsql['factoryValue'] as String),
    );
''',
)
@PgSqlSerializable(createToPgSql: false)
class TearOffFromPgSqlClass {
  TearOffFromPgSqlClass(this.value, this.factoryValue);

  @PgSqlKey(fromPgSql: TearOffValueClass.new)
  final TearOffValueClass value;
  @PgSqlKey(fromPgSql: TearOffValueClass.fromPgSql)
  final TearOffValueClass factoryValue;
}

class TearOffValueClass {
  const TearOffValueClass(this.value);

  factory TearOffValueClass.fromPgSql(String value) => TearOffValueClass(value);

  final String value;
}
