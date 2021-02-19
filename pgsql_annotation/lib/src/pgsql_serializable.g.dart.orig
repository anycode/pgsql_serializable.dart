// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgsql_serializable.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

PgSqlSerializable _$PgSqlSerializableFromPgSql(Map<String, dynamic> pgsql) {
  return $checkedNew('PgSqlSerializable', pgsql, () {
    $checkKeys(pgsql, allowedKeys: const [
      'any_map',
      'checked',
      'create_factory',
      'create_to_pgsql',
      'disallow_unrecognized_keys',
      'explicit_to_pgsql',
      'field_rename',
      'generic_argument_factories',
      'ignore_unannotated',
      'include_if_null',
    ]);
    final val = PgSqlSerializable(
      anyMap: $checkedConvert(pgsql, 'any_map', (v) => v as bool),
      checked: $checkedConvert(pgsql, 'checked', (v) => v as bool),
      createFactory: $checkedConvert(pgsql, 'create_factory', (v) => v as bool),
      createToPgSql: $checkedConvert(pgsql, 'create_to_pgsql', (v) => v as bool),
      disallowUnrecognizedKeys:
          $checkedConvert(pgsql, 'disallow_unrecognized_keys', (v) => v as bool),
      explicitToPgSql:
          $checkedConvert(pgsql, 'explicit_to_pgsql', (v) => v as bool),
      fieldRename: $checkedConvert(pgsql, 'field_rename',
          (v) => _$enumDecodeNullable(_$FieldRenameEnumMap, v)),
      ignoreUnannotated:
          $checkedConvert(pgsql, 'ignore_unannotated', (v) => v as bool),
      includeIfNull: $checkedConvert(pgsql, 'include_if_null', (v) => v as bool),
      genericArgumentFactories:
          $checkedConvert(pgsql, 'generic_argument_factories', (v) => v as bool),
    );
    return val;
  }, fieldKeyMap: const {
    'anyMap': 'any_map',
    'createFactory': 'create_factory',
    'createToPgSql': 'create_to_pgsql',
    'disallowUnrecognizedKeys': 'disallow_unrecognized_keys',
    'explicitToPgSql': 'explicit_to_pgsql',
    'fieldRename': 'field_rename',
    'ignoreUnannotated': 'ignore_unannotated',
    'includeIfNull': 'include_if_null',
    'genericArgumentFactories': 'generic_argument_factories'
  });
}

Map<String, dynamic> _$PgSqlSerializableToPgSql(PgSqlSerializable instance) =>
    <String, dynamic>{
      'any_map': instance.anyMap,
      'checked': instance.checked,
      'create_factory': instance.createFactory,
      'create_to_pgsql': instance.createToPgSql,
      'disallow_unrecognized_keys': instance.disallowUnrecognizedKeys,
      'explicit_to_pgsql': instance.explicitToPgSql,
      'field_rename': _$FieldRenameEnumMap[instance.fieldRename],
      'generic_argument_factories': instance.genericArgumentFactories,
      'ignore_unannotated': instance.ignoreUnannotated,
      'include_if_null': instance.includeIfNull,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .cast<MapEntry<T, String>?>()
      .singleWhere((e) => e!.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue!;
}

T? _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$FieldRenameEnumMap = {
  FieldRename.none: 'none',
  FieldRename.kebab: 'kebab',
  FieldRename.snake: 'snake',
  FieldRename.pascal: 'pascal',
};
