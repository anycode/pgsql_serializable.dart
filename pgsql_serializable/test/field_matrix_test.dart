import 'dart:convert';

import 'package:test/test.dart';

import 'field_matrix_test.field_matrix.dart';

void main() {
  test('test', () {
    final result = Map.fromEntries(fromPgSqlFactories.map((e) {
      final instance = e({'field': 42});
      return MapEntry(instance.toString(), {
        'with': instance,
        'without': e({}),
      });
    }));

    expect(jsonDecode(jsonEncode(result)), _expectedResult);
  });
}

const _expectedResult = {
  'ToPgSqlNullFromPgSqlNullPublic: field: 42': {
    'with': {'aField': null, 'field': 42, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlNullFromPgSqlTruePublic: field: 42': {
    'with': {'aField': null, 'field': 42, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlNullFromPgSqlFalsePublic: field: null': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlTrueFromPgSqlNullPublic: field: 42': {
    'with': {'aField': null, 'field': 42, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlTrueFromPgSqlTruePublic: field: 42': {
    'with': {'aField': null, 'field': 42, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlTrueFromPgSqlFalsePublic: field: null': {
    'with': {'aField': null, 'field': null, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlFalseFromPgSqlNullPublic: field: 42': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlFalseFromPgSqlTruePublic: field: 42': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlFalseFromPgSqlFalsePublic: field: null': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlNullFromPgSqlNullPrivate: _field: null': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlNullFromPgSqlTruePrivate: _field: 42': {
    'with': {'aField': null, 'field': 42, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlNullFromPgSqlFalsePrivate: _field: null': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlTrueFromPgSqlNullPrivate: _field: null': {
    'with': {'aField': null, 'field': null, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlTrueFromPgSqlTruePrivate: _field: 42': {
    'with': {'aField': null, 'field': 42, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlTrueFromPgSqlFalsePrivate: _field: null': {
    'with': {'aField': null, 'field': null, 'zField': null},
    'without': {'aField': null, 'field': null, 'zField': null}
  },
  'ToPgSqlFalseFromPgSqlNullPrivate: _field: null': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlFalseFromPgSqlTruePrivate: _field: 42': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  },
  'ToPgSqlFalseFromPgSqlFalsePrivate: _field: null': {
    'with': {'aField': null, 'zField': null},
    'without': {'aField': null, 'zField': null}
  }
};
