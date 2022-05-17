// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgsql_serializable.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

PgSqlSerializable _$PgSqlSerializableFromPgSql(Map<String, dynamic> pgsql) =>
    $checkedCreate(
      'PgSqlSerializable',
      pgsql,
      ($checkedConvert) {
        $checkKeys(
          pgsql,
          allowedKeys: const [
            'any_map',
            'checked',
            'constructor',
            'create_factory',
            'create_to_pgsql',
            'disallow_unrecognized_keys',
            'explicit_to_pgsql',
            'field_rename',
            'generic_argument_factories',
            'ignore_unannotated',
            'include_if_null'
          ],
        );
        final val = PgSqlSerializable(
          anyMap: $checkedConvert('any_map', (v) => v as bool?),
          checked: $checkedConvert('checked', (v) => v as bool?),
          constructor: $checkedConvert('constructor', (v) => v as String?),
          createFactory: $checkedConvert('create_factory', (v) => v as bool?),
          createToPgSql: $checkedConvert('create_to_pgsql', (v) => v as bool?),
          disallowUnrecognizedKeys:
              $checkedConvert('disallow_unrecognized_keys', (v) => v as bool?),
          explicitToPgSql:
              $checkedConvert('explicit_to_pgsql', (v) => v as bool?),
          fieldRename: $checkedConvert('field_rename',
              (v) => _$enumDecodeNullable(_$FieldRenameEnumMap, v)),
          ignoreUnannotated:
              $checkedConvert('ignore_unannotated', (v) => v as bool?),
          includeIfNull: $checkedConvert('include_if_null', (v) => v as bool?),
          genericArgumentFactories:
              $checkedConvert('generic_argument_factories', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'anyMap': 'any_map',
        'createFactory': 'create_factory',
        'createToPgSql': 'create_to_pgsql',
        'disallowUnrecognizedKeys': 'disallow_unrecognized_keys',
        'explicitToPgSql': 'explicit_to_pgsql',
        'fieldRename': 'field_rename',
        'ignoreUnannotated': 'ignore_unannotated',
        'includeIfNull': 'include_if_null',
        'genericArgumentFactories': 'generic_argument_factories'
      },
    );

Map<String, dynamic> _$PgSqlSerializableToPgSql(PgSqlSerializable instance) =>
    <String, dynamic>{
      'any_map': instance.anyMap,
      'checked': instance.checked,
      'constructor': instance.constructor,
      'create_factory': instance.createFactory,
      'create_to_pgsql': instance.createToPgSql,
      'disallow_unrecognized_keys': instance.disallowUnrecognizedKeys,
      'explicit_to_pgsql': instance.explicitToPgSql,
      'field_rename': _$FieldRenameEnumMap[instance.fieldRename],
      'generic_argument_factories': instance.genericArgumentFactories,
      'ignore_unannotated': instance.ignoreUnannotated,
      'include_if_null': instance.includeIfNull,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$FieldRenameEnumMap = {
  FieldRename.none: 'none',
  FieldRename.kebab: 'kebab',
  FieldRename.snake: 'snake',
  FieldRename.pascal: 'pascal',
  FieldRename.screamingSnake: 'screamingSnake',
};
