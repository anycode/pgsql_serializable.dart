part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(
  r'''
UnknownEnumValue _$UnknownEnumValueFromPgSql(Map<String, dynamic> pgsql) {
  return UnknownEnumValue()
    ..value = _$enumDecodeNullable(
            _$UnknownEnumValueItemsEnumMap, pgsql['value'],
            unknownValue: UnknownEnumValueItems.vUnknown) ??
        UnknownEnumValueItems.vNull;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$UnknownEnumValueItemsEnumMap = {
  UnknownEnumValueItems.v0: 'v0',
  UnknownEnumValueItems.v1: 'v1',
  UnknownEnumValueItems.v2: 'v2',
  UnknownEnumValueItems.vUnknown: 'vUnknown',
  UnknownEnumValueItems.vNull: 'vNull',
};
''',
)
@PgSqlSerializable(
  createToPgSql: false,
)
class UnknownEnumValue {
  @PgSqlKey(
    defaultValue: UnknownEnumValueItems.vNull,
    unknownEnumValue: UnknownEnumValueItems.vUnknown,
  )
  UnknownEnumValueItems value;
}

enum UnknownEnumValueItems { v0, v1, v2, vUnknown, vNull }

@ShouldThrow(
  'Error with `@PgSqlKey` on `value`. `unknownEnumValue` has type '
  '`int`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@PgSqlSerializable()
class UnknownEnumValueListWrongType {
  @PgSqlKey(unknownEnumValue: WrongEnumType.otherValue)
  List<int> value;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `value`. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@PgSqlSerializable()
class UnknownEnumValueListWrongEnumType {
  @PgSqlKey(unknownEnumValue: WrongEnumType.otherValue)
  List<UnknownEnumValueItems> value;
}

enum WrongEnumType { otherValue }

@ShouldThrow(
  'Error with `@PgSqlKey` on `value`. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@PgSqlSerializable()
class UnknownEnumValueWrongEnumType {
  @PgSqlKey(unknownEnumValue: WrongEnumType.otherValue)
  UnknownEnumValueItems value;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `value`. The value provided '
  'for `unknownEnumValue` must be a matching enum.',
)
@PgSqlSerializable()
class UnknownEnumValueNotEnumValue {
  @PgSqlKey(unknownEnumValue: 'not enum value')
  UnknownEnumValueItems value;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on `value`. `unknownEnumValue` can only be set on '
  'fields of type enum or on Iterable, List, or Set instances of an enum type.',
)
@PgSqlSerializable()
class UnknownEnumValueNotEnumField {
  @PgSqlKey(unknownEnumValue: UnknownEnumValueItems.vUnknown)
  int value;
}
