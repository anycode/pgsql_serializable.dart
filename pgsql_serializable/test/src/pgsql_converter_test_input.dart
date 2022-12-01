// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
PgSqlConverterNamedCtor<E> _$PgSqlConverterNamedCtorFromPgSql<E>(
        Map<String, dynamic> pgsql) =>
    PgSqlConverterNamedCtor<E>()
      ..value = const _DurationMillisecondConverter.named()
          .fromPgSql(pgsql['value'] as int)
      ..genericValue =
          _GenericConverter<E>.named().fromPgSql(pgsql['genericValue'] as int)
      ..keyAnnotationFirst =
          PgSqlConverterNamedCtor._fromPgSql(pgsql['keyAnnotationFirst'] as int);

Map<String, dynamic> _$PgSqlConverterNamedCtorToPgSql<E>(
        PgSqlConverterNamedCtor<E> instance) =>
    <String, dynamic>{
      'value':
          const _DurationMillisecondConverter.named().toPgSql(instance.value),
      'genericValue':
          _GenericConverter<E>.named().toPgSql(instance.genericValue),
      'keyAnnotationFirst':
          PgSqlConverterNamedCtor._toPgSql(instance.keyAnnotationFirst),
    };
''')
@PgSqlSerializable()
@_DurationMillisecondConverter.named()
@_GenericConverter.named()
class PgSqlConverterNamedCtor<E> {
  late Duration value;
  late E genericValue;

  // Field annotations have precedence over class annotations
  @PgSqlKey(fromPgSql: _fromPgSql, toPgSql: _toPgSql)
  late Duration keyAnnotationFirst;

  static Duration _fromPgSql(int value) => throw UnimplementedError();

  static int _toPgSql(Duration object) => 42;
}

@ShouldGenerate(r'''
PgSqlConvertOnField<E> _$PgSqlConvertOnFieldFromPgSql<E>(
        Map<String, dynamic> pgsql) =>
    PgSqlConvertOnField<E>()
      ..annotatedField = const _DurationMillisecondConverter()
          .fromPgSql(pgsql['annotatedField'] as int)
      ..annotatedWithNamedCtor = const _DurationMillisecondConverter.named()
          .fromPgSql(pgsql['annotatedWithNamedCtor'] as int)
      ..classAnnotatedWithField =
          _durationConverter.fromPgSql(pgsql['classAnnotatedWithField'] as int)
      ..genericValue =
          _GenericConverter<E>().fromPgSql(pgsql['genericValue'] as int);

Map<String, dynamic> _$PgSqlConvertOnFieldToPgSql<E>(
        PgSqlConvertOnField<E> instance) =>
    <String, dynamic>{
      'annotatedField':
          const _DurationMillisecondConverter().toPgSql(instance.annotatedField),
      'annotatedWithNamedCtor': const _DurationMillisecondConverter.named()
          .toPgSql(instance.annotatedWithNamedCtor),
      'classAnnotatedWithField':
          _durationConverter.toPgSql(instance.classAnnotatedWithField),
      'genericValue': _GenericConverter<E>().toPgSql(instance.genericValue),
    };
''')
@PgSqlSerializable()
@_durationConverter
class PgSqlConvertOnField<E> {
  @_DurationMillisecondConverter()
  late Duration annotatedField;

  @_DurationMillisecondConverter.named()
  late Duration annotatedWithNamedCtor;

  late Duration classAnnotatedWithField;

  @_GenericConverter()
  late E genericValue;
}

class _GenericConverter<T> implements PgSqlConverter<T, int> {
  const _GenericConverter();

  const _GenericConverter.named();

  @override
  T fromPgSql(int pgsql) => throw UnimplementedError();

  @override
  int toPgSql(T object) => 0;
}

@ShouldThrow(
  '`PgSqlConverter` implementations can have no more than one type argument. '
  '`_BadConverter` has 2.',
  element: '_BadConverter',
)
@PgSqlSerializable()
@_BadConverter()
class PgSqlConverterWithBadTypeArg<T> {
  late T value;
}

class _BadConverter<T, S> implements PgSqlConverter<S, int> {
  const _BadConverter();

  @override
  S fromPgSql(int pgsql) => throw UnimplementedError();

  @override
  int toPgSql(S object) => 0;
}

@ShouldThrow(
  'Found more than one matching converter for `Duration`.',
  element: '',
)
@PgSqlSerializable()
@_durationConverter
@_DurationMillisecondConverter()
class PgSqlConverterDuplicateAnnotations {
  late Duration value;
}

const _durationConverter = _DurationMillisecondConverter();

class _DurationMillisecondConverter implements PgSqlConverter<Duration, int> {
  const _DurationMillisecondConverter();

  const _DurationMillisecondConverter.named();

  @override
  Duration fromPgSql(int pgsql) => throw UnimplementedError();

  @override
  int toPgSql(Duration object) => throw UnimplementedError();
}

@ShouldThrow(
  'Generators with constructor arguments are not supported.',
  element: '',
)
@PgSqlSerializable()
@_ConverterWithCtorParams(42)
class PgSqlConverterCtorParams {
  late Duration value;
}

class _ConverterWithCtorParams implements PgSqlConverter<Duration, int> {
  final int param;

  const _ConverterWithCtorParams(this.param);

  @override
  Duration fromPgSql(int pgsql) => throw UnimplementedError();

  @override
  int toPgSql(Duration object) => 0;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$PgSqlConverterOnGetterToPgSql(
        PgSqlConverterOnGetter instance) =>
    <String, dynamic>{
      'annotatedGetter':
          const _NeedsConversionConverter().toPgSql(instance.annotatedGetter),
    };
''')
@PgSqlSerializable(createFactory: false)
class PgSqlConverterOnGetter {
  @PgSqlKey()
  @_NeedsConversionConverter()
  NeedsConversion get annotatedGetter => NeedsConversion();
}

class NeedsConversion {}

class _NeedsConversionConverter implements PgSqlConverter<NeedsConversion, int> {
  const _NeedsConversionConverter();

  @override
  NeedsConversion fromPgSql(int pgsql) => NeedsConversion();

  @override
  int toPgSql(NeedsConversion object) => 0;
}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `value`.
To support the type `NeedsConversion` you can:
$converterOrKeyInstructions''',
)
@_NullableConverter()
@PgSqlSerializable()
class PgSqlConverterNullableToNonNullable {
  late NeedsConversion value;
}

class _NullableConverter implements PgSqlConverter<NeedsConversion?, Object?> {
  const _NullableConverter();

  @override
  NeedsConversion? fromPgSql(Object? pgsql) => null;

  @override
  Object? toPgSql(NeedsConversion? object) => null;
}
