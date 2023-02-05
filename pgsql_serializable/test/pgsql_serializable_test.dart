// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library test;

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
    expectedAnnotatedTests: {
      'EnumValueIssue1147',
      'EnumValueNotAField',
      'EnumValueNotSupportType',
      'EnumValueWeirdField',
      'UnsupportedClass',
    },
  );
}

const _expectedAnnotatedTests = {
  'BadEnumDefaultValue',
  'BadFromFuncReturnType',
  'BadNoArgs',
  'BadOneNamed',
  'BadToFuncReturnType',
  'BadTwoRequiredPositional',
  'CtorDefaultValueAndPgSqlKeyDefaultValue',
  'DefaultDoubleConstants',
  'DefaultWithConstObject',
  'DefaultWithDisallowNullRequiredClass',
  'DefaultWithFunction',
  'DefaultWithFunctionInList',
  'DefaultWithNestedEnum',
  'DefaultWithSymbol',
  'DefaultWithToPgSqlClass',
  'DefaultWithType',
  'DupeKeys',
  'DynamicConvertMethods',
  'FieldNamerKebab',
  'FieldNamerNone',
  'FieldNamerPascal',
  'FieldNamerScreamingSnake',
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
  'IgnoreAndIncludeFromPgSqlFieldCtorClass',
  'IgnoreAndIncludeToPgSqlFieldCtorClass',
  'IgnoreUnannotated',
  'IgnoredFieldClass',
  'IgnoredFieldCtorClass',
  'IncludeIfNullDisallowNullClass',
  'IncludeIfNullOverride',
  'InvalidChildClassFromPgSql',
  'InvalidChildClassFromPgSql2',
  'InvalidChildClassFromPgSql3',
  'InvalidFromFunc2Args',
  'InvalidToFunc2Args',
  'Issue1038RegressionTest',
  'Issue713',
  'PgSqlConvertOnField',
  'PgSqlConverterCtorParams',
  'PgSqlConverterDuplicateAnnotations',
  'PgSqlConverterNamedCtor',
  'PgSqlConverterNullableToNonNullable',
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
  'SameCtorAndPgSqlKeyDefaultValue',
  'SetSupport',
  'SubType',
  'SubTypeWithAnnotatedFieldOverrideExtends',
  'SubTypeWithAnnotatedFieldOverrideExtendsWithOverrides',
  'SubTypeWithAnnotatedFieldOverrideImplements',
  'SubclassedPgSqlKey',
  'TearOffFromPgSqlClass',
  'ToPgSqlNullableFalseIncludeIfNullFalse',
  'TypedConvertMethods',
  'UnknownEnumValue',
  'UnknownEnumValueListWrongEnumType',
  'UnknownEnumValueListWrongType',
  'UnknownEnumValueNotEnumField',
  'UnknownEnumValueWrongEnumType',
  'UnsupportedDateTimeField',
  'UnsupportedDurationField',
  'UnsupportedEnum',
  'UnsupportedListField',
  'UnsupportedMapField',
  'UnsupportedSetField',
  'UnsupportedUriField',
  'ValidToFromFuncClassStatic',
  'WithANonCtorGetter',
  'WithANonCtorGetterChecked',
  'WrongConstructorNameClass',
  '_BetterPrivateNames',
  'annotatedMethod',
  'theAnswer',
};
