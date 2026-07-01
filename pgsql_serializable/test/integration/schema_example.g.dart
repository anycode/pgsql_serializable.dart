// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'schema_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

SchemaExample _$SchemaExampleFromPgSql(Map<String, dynamic> pgsql) {
  $checkKeys(pgsql, requiredKeys: const ['propExtraFieldRequired']);
  return SchemaExample(
      (pgsql['requiredBranch'] as List<dynamic>)
          .map((e) => SchemaExample.fromPgSql(e as Map<String, dynamic>))
          .toList(),
      (pgsql['nullableRequiredPositional'] as num?)?.toDouble(),
      requiredName: (pgsql['requiredName'] as num).toDouble(),
      nullableNotRequired:
          (pgsql['nullableNotRequired'] as num?)?.toDouble() ?? 3.145,
      nullableRequiredName: (pgsql['nullableRequiredName'] as num?)?.toDouble(),
      optionalNullableFieldWithPgSqlKeyDefault:
          (pgsql['optionalNullableFieldWithPgSqlKeyDefault'] as num?)
              ?.toDouble() ??
          3.145,
      branch: Branch.fromPgSql(pgsql['branch'] as Map<String, dynamic>),
      nested: pgsql['nested'] == null
          ? null
          : ComprehensiveNested.fromPgSql(
              pgsql['nested'] as Map<String, dynamic>,
            ),
    )
    ..propExtraField = pgsql['propExtraField'] as bool
    ..propExtraFieldRequired = pgsql['propExtraFieldRequired'] as bool;
}

Map<String, dynamic> _$SchemaExampleToPgSql(SchemaExample instance) =>
    <String, dynamic>{
      'requiredName': instance.requiredName,
      'nullableNotRequired': instance.nullableNotRequired,
      'nullableRequiredPositional': instance.nullableRequiredPositional,
      'nullableRequiredName': instance.nullableRequiredName,
      'requiredBranch': instance.requiredBranch,
      'optionalNullableFieldWithPgSqlKeyDefault':
          instance.optionalNullableFieldWithPgSqlKeyDefault,
      'branch': instance.branch,
      'nested': instance.nested,
      'propExtraField': instance.propExtraField,
      'propExtraFieldRequired': instance.propExtraFieldRequired,
    };

const _$SchemaExamplePgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'requiredName': {
      'type': 'number',
      'description': 'Required named constructor parameter',
    },
    'nullableNotRequired': {
      'type': 'number',
      'description': 'Nullable required named constructor parameter',
      'default': 3.145,
    },
    'nullableRequiredPositional': {'type': 'number'},
    'nullableRequiredName': {'type': 'number'},
    'requiredBranch': {
      'type': 'array',
      'items': {r'$ref': '#'},
      'description': 'Required named constructor parameter',
    },
    'optionalNullableFieldWithPgSqlKeyDefault': {
      'type': 'number',
      'default': 3.145,
    },
    'branch': {r'$ref': r'#/$defs/Branch'},
    'nested': {r'$ref': r'#/$defs/ComprehensiveNested'},
    'propExtraField': {
      'type': 'boolean',
      'description':
          'Non-nullable field with default value - should NOT be required',
    },
    'propExtraFieldRequired': {
      'type': 'boolean',
      'description':
          'Non-ctor field with `required: true` - should be required',
    },
  },
  'required': [
    'requiredName',
    'nullableRequiredPositional',
    'nullableRequiredName',
    'requiredBranch',
    'branch',
    'propExtraFieldRequired',
  ],
  r'$defs': {
    'Branch': {
      'type': 'object',
      'properties': {
        'length': {'type': 'number'},
        'branch': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/Branch'},
        },
      },
      'required': ['length', 'branch'],
    },
    'ComprehensiveNested': {
      'type': 'object',
      'properties': {
        'noIncludeFromPgSql': {'type': 'integer'},
        'writableField': {
          'type': 'integer',
          'description': 'Writable field comment\n\nWith a second line.',
        },
        'regexChecks': {
          'type': 'integer',
          'description': 'Description with a multiplication: a * b',
        },
        'renamed_field': {'type': 'integer'},
        'getterIncluded': {'type': 'integer'},
      },
      'required': ['getterIncluded'],
    },
  },
};

Branch _$BranchFromPgSql(Map<String, dynamic> pgsql) => Branch(
  length: (pgsql['length'] as num).toDouble(),
  branch: (pgsql['branch'] as List<dynamic>)
      .map((e) => Branch.fromPgSql(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BranchToPgSql(Branch instance) => <String, dynamic>{
  'length': instance.length,
  'branch': instance.branch,
};

ComprehensiveNested _$ComprehensiveNestedFromPgSql(Map<String, dynamic> pgsql) =>
    ComprehensiveNested()
      ..noIncludeToPgSql = (pgsql['noIncludeToPgSql'] as num).toInt()
      ..writableField = (pgsql['writableField'] as num).toInt()
      ..regexChecks = (pgsql['regexChecks'] as num).toInt()
      ..renamedField = (pgsql['renamed_field'] as num).toInt();

Map<String, dynamic> _$ComprehensiveNestedToPgSql(
  ComprehensiveNested instance,
) => <String, dynamic>{
  'writableField': instance.writableField,
  'regexChecks': instance.regexChecks,
  'renamed_field': instance.renamedField,
  'getterIncluded': instance.getterIncluded,
};

const _$ComprehensiveNestedPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'noIncludeFromPgSql': {'type': 'integer'},
    'writableField': {
      'type': 'integer',
      'description': 'Writable field comment\n\nWith a second line.',
    },
    'regexChecks': {
      'type': 'integer',
      'description': 'Description with a multiplication: a * b',
    },
    'renamed_field': {'type': 'integer'},
    'getterIncluded': {'type': 'integer'},
  },
  'required': ['getterIncluded'],
};
