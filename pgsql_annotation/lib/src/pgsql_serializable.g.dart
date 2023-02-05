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
            'create_field_map',
            'create_per_field_to_pgsql',
            'create_to_pgsql',
            'disallow_unrecognized_keys',
            'enum_map_prefix',
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
          createFieldMap:
              $checkedConvert('create_field_map', (v) => v as bool?),
          createFactory: $checkedConvert('create_factory', (v) => v as bool?),
          createToPgSql: $checkedConvert('create_to_pgsql', (v) => v as bool?),
          disallowUnrecognizedKeys:
              $checkedConvert('disallow_unrecognized_keys', (v) => v as bool?),
          enumMapPrefix:
              $checkedConvert('enum_map_prefix', (v) => v as String?),
          explicitToPgSql:
              $checkedConvert('explicit_to_pgsql', (v) => v as bool?),
          fieldRename: $checkedConvert('field_rename',
              (v) => $enumDecodeNullable(_$FieldRenameEnumMap, v)),
          ignoreUnannotated:
              $checkedConvert('ignore_unannotated', (v) => v as bool?),
          includeIfNull: $checkedConvert('include_if_null', (v) => v as bool?),
          genericArgumentFactories:
              $checkedConvert('generic_argument_factories', (v) => v as bool?),
          createPerFieldToPgSql:
              $checkedConvert('create_per_field_to_pgsql', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'anyMap': 'any_map',
        'createFieldMap': 'create_field_map',
        'createFactory': 'create_factory',
        'createToPgSql': 'create_to_pgsql',
        'disallowUnrecognizedKeys': 'disallow_unrecognized_keys',
        'enumMapPrefix': 'enum_map_prefix',
        'explicitToPgSql': 'explicit_to_pgsql',
        'fieldRename': 'field_rename',
        'ignoreUnannotated': 'ignore_unannotated',
        'includeIfNull': 'include_if_null',
        'genericArgumentFactories': 'generic_argument_factories',
        'createPerFieldToPgSql': 'create_per_field_to_pgsql'
      },
    );

Map<String, dynamic> _$PgSqlSerializableToPgSql(PgSqlSerializable instance) =>
    <String, dynamic>{
      'any_map': instance.anyMap,
      'checked': instance.checked,
      'constructor': instance.constructor,
      'create_factory': instance.createFactory,
      'create_field_map': instance.createFieldMap,
      'create_per_field_to_pgsql': instance.createPerFieldToPgSql,
      'create_to_pgsql': instance.createToPgSql,
      'disallow_unrecognized_keys': instance.disallowUnrecognizedKeys,
      'enum_map_prefix': instance.enumMapPrefix,
      'explicit_to_pgsql': instance.explicitToPgSql,
      'field_rename': _$FieldRenameEnumMap[instance.fieldRename],
      'generic_argument_factories': instance.genericArgumentFactories,
      'ignore_unannotated': instance.ignoreUnannotated,
      'include_if_null': instance.includeIfNull,
    };

const _$FieldRenameEnumMap = {
  FieldRename.none: 'none',
  FieldRename.kebab: 'kebab',
  FieldRename.snake: 'snake',
  FieldRename.pascal: 'pascal',
  FieldRename.screamingSnake: 'screamingSnake',
};
