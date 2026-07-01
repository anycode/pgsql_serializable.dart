// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldGenerate(r'''
const _$PgSqlSchemaDocsTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'name': {'type': 'string', 'description': 'The name of the item'},
  },
  'required': ['name'],
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaDocsTest {
  /// The name of the item
  final String name;

  PgSqlSchemaDocsTest(this.name);
}

@ShouldGenerate(r'''
const _$PgSqlSchemaCollectionsTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'tags': {
      'type': 'array',
      'items': {'type': 'string'},
    },
    'metadata': {
      'type': 'object',
      'additionalProperties': {'type': 'integer'},
    },
  },
  'required': ['tags', 'metadata'],
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaCollectionsTest {
  final List<String> tags;
  final Map<String, int> metadata;

  PgSqlSchemaCollectionsTest(this.tags, this.metadata);
}

@ShouldGenerate(r'''
PgSqlSchemaDefaultsTest _$PgSqlSchemaDefaultsTestFromPgSql(
  Map<String, dynamic> pgsql,
) => PgSqlSchemaDefaultsTest(
  (pgsql['propAnnotatedDefaultValue'] as num?)?.toInt() ?? 42,
  propCtorDefaultValue: (pgsql['propCtorDefaultValue'] as num?)?.toInt() ?? 42,
);

const _$PgSqlSchemaDefaultsTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'propAnnotatedDefaultValue': {'type': 'integer', 'default': 42},
    'propCtorDefaultValue': {
      'type': 'integer',
      'description': 'Default value is still required',
      'default': 42,
    },
  },
};
''')
@PgSqlSerializable(createPgSqlSchema: true, createToPgSql: false)
class PgSqlSchemaDefaultsTest {
  @PgSqlKey(defaultValue: 42)
  final int propAnnotatedDefaultValue;

  /// Default value is still required
  final int propCtorDefaultValue;

  PgSqlSchemaDefaultsTest(
    this.propAnnotatedDefaultValue, {
    this.propCtorDefaultValue = 42,
  });
}

@ShouldGenerate(r'''
PgSqlSchemaNullableTest _$PgSqlSchemaNullableTestFromPgSql(
  Map<String, dynamic> pgsql,
) => PgSqlSchemaNullableTest(pgsql['nullableStillRequired'] as String?);

const _$PgSqlSchemaNullableTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'nullableStillRequired': {
      'type': 'string',
      'description': 'Nullable field is still required!',
    },
  },
  'required': ['nullableStillRequired'],
};
''')
@PgSqlSerializable(createPgSqlSchema: true, createToPgSql: false)
class PgSqlSchemaNullableTest {
  /// Nullable field is still required!
  final String? nullableStillRequired;

  PgSqlSchemaNullableTest(this.nullableStillRequired);
}

@ShouldGenerate(r'''
const _$PgSqlSchemaNestedTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'inner': {r'$ref': r'#/$defs/InnerClass'},
  },
  'required': ['inner'],
  r'$defs': {
    'InnerClass': {
      'type': 'object',
      'properties': {
        'value': {'type': 'integer'},
      },
      'required': ['value'],
    },
  },
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaNestedTest {
  final InnerClass inner;

  PgSqlSchemaNestedTest(this.inner);
}

@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class InnerClass {
  final int value;

  InnerClass(this.value);
}

@ShouldGenerate(r'''
const _$PgSqlSchemaNonCollectionTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'intField': {'type': 'integer'},
    'doubleField': {'type': 'number'},
    'numField': {'type': 'number'},
    'boolField': {'type': 'boolean'},
    'stringField': {'type': 'string'},
    'dateTimeField': {'type': 'string', 'format': 'date-time'},
    'uriField': {'type': 'string', 'format': 'uri'},
    'bigIntField': {'type': 'integer'},
  },
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaNonCollectionTest {
  final int? intField;
  final double? doubleField;
  final num? numField;
  final bool? boolField;
  final String? stringField;
  final DateTime? dateTimeField;
  final Uri? uriField;
  final BigInt? bigIntField;

  PgSqlSchemaNonCollectionTest({
    this.intField,
    this.doubleField,
    this.numField,
    this.boolField,
    this.stringField,
    this.dateTimeField,
    this.uriField,
    this.bigIntField,
  });
}

@ShouldGenerate(r'''
const _$PgSqlSchemaGetterTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'renamed_name': {'type': 'string'},
  },
  'required': ['renamed_name'],
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaGetterTest {
  @PgSqlKey(name: 'renamed_name')
  final String name;

  // This getter should NOT be in the schema
  int get length => name.length;

  PgSqlSchemaGetterTest(this.name);
}

@ShouldGenerate(r'''
const _$PgSqlSchemaRecursiveListTestPgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'children': {
      'type': 'array',
      'items': {r'$ref': '#'},
    },
  },
  'required': ['children'],
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaRecursiveListTest {
  final List<PgSqlSchemaRecursiveListTest> children;

  PgSqlSchemaRecursiveListTest(this.children);
}

@ShouldGenerate(r'''
const _$PgSqlSchemaRecursiveListIssuePgSqlSchema = {
  r'$schema': 'https://pgsql-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'alternates': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/PgSqlSchemaRecursiveListIssueA'},
    },
  },
  'required': ['alternates'],
  r'$defs': {
    'PgSqlSchemaRecursiveListIssueA': {
      'type': 'object',
      'properties': {
        'children': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/PgSqlSchemaRecursiveListIssueA'},
        },
      },
      'required': ['children'],
    },
  },
};
''')
@PgSqlSerializable(
  createPgSqlSchema: true,
  createFactory: false,
  createToPgSql: false,
)
class PgSqlSchemaRecursiveListIssue {
  final List<PgSqlSchemaRecursiveListIssueA> alternates;

  PgSqlSchemaRecursiveListIssue(this.alternates);
}

class PgSqlSchemaRecursiveListIssueA {
  final List<PgSqlSchemaRecursiveListIssueA> children;

  PgSqlSchemaRecursiveListIssueA(this.children);
}
