// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
UnknownEnumValue _$UnknownEnumValueFromPgSql(Map<String, dynamic> pgsql) =>
    UnknownEnumValue()
      ..value =
          $enumDecodeNullable(
            _$UnknownEnumValueItemsEnumMap,
            pgsql['value'],
            unknownValue: UnknownEnumValueItems.vUnknown,
          ) ??
          UnknownEnumValueItems.vNull;

const _$UnknownEnumValueItemsEnumMap = {
  UnknownEnumValueItems.v0: 'v0',
  UnknownEnumValueItems.v1: 'v1',
  UnknownEnumValueItems.v2: 'v2',
  UnknownEnumValueItems.vUnknown: 'vUnknown',
  UnknownEnumValueItems.vNull: 'vNull',
};
''')
@PgSqlSerializable(createToPgSql: false)
class UnknownEnumValue {
  @PgSqlKey(
    defaultValue: UnknownEnumValueItems.vNull,
    unknownEnumValue: UnknownEnumValueItems.vUnknown,
  )
  UnknownEnumValueItems? value;
}

enum UnknownEnumValueItems { v0, v1, v2, vUnknown, vNull }

@ShouldThrow(
  'Error with `@PgSqlKey` on the `value` field. `unknownEnumValue` has type '
  '`int`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@PgSqlSerializable()
class UnknownEnumValueListWrongType {
  @PgSqlKey(unknownEnumValue: WrongEnumType.otherValue)
  late List<int> value;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `value` field. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@PgSqlSerializable()
class UnknownEnumValueListWrongEnumType {
  @PgSqlKey(unknownEnumValue: WrongEnumType.otherValue)
  late List<UnknownEnumValueItems> value;
}

enum WrongEnumType { otherValue }

@ShouldThrow(
  'Error with `@PgSqlKey` on the `value` field. `unknownEnumValue` has type '
  '`UnknownEnumValueItems`, but the provided unknownEnumValue is of type '
  '`WrongEnumType`.',
)
@PgSqlSerializable()
class UnknownEnumValueWrongEnumType {
  @PgSqlKey(unknownEnumValue: WrongEnumType.otherValue)
  late UnknownEnumValueItems value;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `value` field. `unknownEnumValue` can only be '
  'set on fields of type enum or on Iterable, List, or Set instances of an '
  'enum type.',
)
@PgSqlSerializable()
class UnknownEnumValueNotEnumField {
  @PgSqlKey(unknownEnumValue: UnknownEnumValueItems.vUnknown)
  int? value;
}
