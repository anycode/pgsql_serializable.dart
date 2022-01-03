// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
import 'package:pgsql_serializable/pgsql_serializable.dart';
import 'package:path/path.dart' as p;
import 'package:source_gen_test/source_gen_test.dart';
import 'package:test/test.dart';

Future<void> main() async {
  initializeBuildLogTracking();
  final pgsqlSerializableTestReader = await initializeLibraryReaderForDirectory(
    p.join('test', 'src'),
    '_pgsql_serializable_test_input.dart',
  );

  testAnnotatedElements(
    pgsqlSerializableTestReader,
    PgSqlSerializableGenerator(),
    expectedAnnotatedTests: _expectedAnnotatedTests,
  );

  final pgsqlEnumTestReader = await initializeLibraryReaderForDirectory(
    p.join('test', 'src'),
    '_pgsql_enum_test_input.dart',
  );

  testAnnotatedElements(
    pgsqlEnumTestReader,
    const PgSqlEnumGenerator(),
    expectedAnnotatedTests: {'UnsupportedClass'},
  );
}

const _expectedAnnotatedTests = {
  'annotatedMethod',
  'unsupportedEnum',
  'BadFromFuncReturnType',
  'BadNoArgs',
  'BadOneNamed',
  'BadToFuncReturnType',
  'BadTwoRequiredPositional',
  'BadEnumDefaultValue',
  '_BetterPrivateNames',
  'CtorDefaultValueAndPgSqlKeyDefaultValue',
  'SameCtorAndPgSqlKeyDefaultValue',
  'DefaultDoubleConstants',
  'DefaultWithConstObject',
  'DefaultWithDisallowNullRequiredClass',
  'DefaultWithFunction',
  'DefaultWithNestedEnum',
  'DefaultWithSymbol',
  'DefaultWithToPgSqlClass',
  'DefaultWithType',
  'DupeKeys',
  'DynamicConvertMethods',
  'FieldNamerKebab',
  'FieldNamerNone',
  'FieldNamerPascal',
  'FieldNamerSnake',
  'FieldWithFromPgSqlCtorAndTypeParams',
  'FinalFields',
  'FinalFieldsNotSetInCtor',
  'FromDynamicCollection',
  'FromNullableDynamicCollection',
  'GeneralTestClass1',
  'GeneralTestClass2',
  'GenericArgumentFactoriesFlagWithoutGenericType',
  'GenericClass',
  'IgnoredFieldClass',
  'IgnoredFieldCtorClass',
  'IgnoreUnannotated',
  'IncludeIfNullDisallowNullClass',
  'IncludeIfNullOverride',
  'InvalidChildClassFromPgSql',
  'InvalidChildClassFromPgSql2',
  'InvalidChildClassFromPgSql3',
  'InvalidFromFunc2Args',
  'InvalidToFunc2Args',
  'Issue713',
  'Issue1038RegressionTest',
  'PgSqlConvertOnField',
  'PgSqlConverterCtorParams',
  'PgSqlConverterDuplicateAnnotations',
  'PgSqlConverterNamedCtor',
  'PgSqlConverterOnGetter',
  'PgSqlConverterWithBadTypeArg',
  'PgSqlValueValid',
  'PgSqlValueWithBool',
  'JustSetter',
  'JustSetterNoFromPgSql',
  'JustSetterNoToPgSql',
  'KeyDupesField',
  'MapKeyNoNullableInt',
  'MapKeyNoNullableObject',
  'MapKeyNoNullableString',
  'MapKeyVariety',
  'NoCtorClass',
  'NoDeserializeBadKey',
  'NoDeserializeFieldType',
  'NoSerializeBadKey',
  'NoSerializeFieldType',
  'ObjectConvertMethods',
  'OkayOneNormalOptionalNamed',
  'OkayOneNormalOptionalPositional',
  'OkayOnlyOptionalPositional',
  'OnlyStaticMembers',
  'OverrideGetterExampleI613',
  'PrivateFieldCtorClass',
  'PropInMixinI448Regression',
  'Reproduce869NullableGenericType',
  'Reproduce869NullableGenericTypeWithDefault',
  'SetSupport',
  'SubclassedPgSqlKey',
  'SubType',
  'SubTypeWithAnnotatedFieldOverrideExtends',
  'SubTypeWithAnnotatedFieldOverrideExtendsWithOverrides',
  'SubTypeWithAnnotatedFieldOverrideImplements',
  'theAnswer',
  'ToPgSqlNullableFalseIncludeIfNullFalse',
  'TypedConvertMethods',
  'UnknownEnumValue',
  'UnknownEnumValueListWrongEnumType',
  'UnknownEnumValueListWrongType',
  'UnknownEnumValueWrongEnumType',
  'UnknownEnumValueNotEnumField',
  'UnsupportedDateTimeField',
  'UnsupportedDurationField',
  'UnsupportedListField',
  'UnsupportedMapField',
  'UnsupportedSetField',
  'UnsupportedUriField',
  'ValidToFromFuncClassStatic',
  'WithANonCtorGetter',
  'WithANonCtorGetterChecked',
  'WrongConstructorNameClass',
};
