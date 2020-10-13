// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';

import 'constants.dart';
import 'helper_core.dart';
import 'type_helpers/generic_factory_helper.dart';
import 'type_helpers/pgsql_converter_helper.dart';
import 'unsupported_type_error.dart';

abstract class EncodeHelper implements HelperCore {
  String _fieldAccess(FieldElement field) => '$_ToPgSqlParamName.${field.name}';

  Iterable<String> createToPgSql(Set<FieldElement> accessibleFields) sync* {
    assert(config.createToPgSql);

    final buffer = StringBuffer();

    final functionName = '${prefix}ToPgSql${genericClassArgumentsImpl(true)}';
    buffer.write('Map<String, dynamic> '
        '$functionName($targetClassReference $_ToPgSqlParamName');

    if (config.genericArgumentFactories) {
      for (var arg in element.typeParameters) {
        final helperName = toPgSqlForType(
          arg.instantiate(nullabilitySuffix: NullabilitySuffix.none),
        );
        buffer.write(',Object Function(${arg.name} value) $helperName');
      }
      if (element.typeParameters.isNotEmpty) {
        buffer.write(',');
      }
    }
    buffer.write(') ');

    final writeNaive = accessibleFields.every(_writepgsqlValueNaive);

    if (writeNaive) {
      // write simple `ToPgSql` method that includes all keys...
      _writeToPgSqlSimple(buffer, accessibleFields);
    } else {
      // At least one field should be excluded if null
      _writeToPgSqlWithNullChecks(buffer, accessibleFields);
    }

    yield buffer.toString();
  }

  void _writeToPgSqlSimple(StringBuffer buffer, Iterable<FieldElement> fields) {
    buffer
      ..writeln('=> <String, dynamic>{')
      ..writeAll(fields.map((field) {
        final access = _fieldAccess(field);
        final value =
            '${safeNameAccess(field)}: ${_serializeField(field, access)}';
        return '        $value,\n';
      }))
      ..writeln('};');
  }

  static const _ToPgSqlParamName = 'instance';

  void _writeToPgSqlWithNullChecks(
    StringBuffer buffer,
    Iterable<FieldElement> fields,
  ) {
    buffer
      ..writeln('{')
      ..writeln('    final $generatedLocalVarName = <String, dynamic>{');

    // Note that the map literal is left open above. As long as target fields
    // don't need to be intercepted by the `only if null` logic, write them
    // to the map literal directly. In theory, should allow more efficient
    // serialization.
    var directWrite = true;

    for (final field in fields) {
      var safeFieldAccess = _fieldAccess(field);
      final safePgSqlKeyString = safeNameAccess(field);

      // If `fieldName` collides with one of the local helpers, prefix
      // access with `this.`.
      if (safeFieldAccess == generatedLocalVarName ||
          safeFieldAccess == toPgSqlMapHelperName) {
        safeFieldAccess = 'this.$safeFieldAccess';
      }

      final expression = _serializeField(field, safeFieldAccess);
      if (_writepgsqlValueNaive(field)) {
        if (directWrite) {
          buffer.writeln('      $safePgSqlKeyString: $expression,');
        } else {
          buffer.writeln(
              '    $generatedLocalVarName[$safePgSqlKeyString] = $expression;');
        }
      } else {
        if (directWrite) {
          // close the still-open map literal
          buffer
            ..writeln('    };')
            ..writeln()

            // write the helper to be used by all following null-excluding
            // fields
            ..writeln('''
    void $toPgSqlMapHelperName(String key, dynamic value) {
      if (value != null) {
        $generatedLocalVarName[key] = value;
      }
    }
''');
          directWrite = false;
        }
        buffer.writeln(
            '    $toPgSqlMapHelperName($safePgSqlKeyString, $expression);');
      }
    }

    buffer..writeln('    return $generatedLocalVarName;')..writeln('  }');
  }

  String _serializeField(FieldElement field, String accessExpression) {
    try {
      return getHelperContext(field)
          .serialize(field.type, accessExpression)
          .toString();
    } on UnsupportedTypeError catch (e) // ignore: avoid_catching_errors
    {
      throw createInvalidGenerationError('ToPgSql', field, e);
    }
  }

  /// Returns `true` if the field can be written to pgsql 'naively' – meaning
  /// we can avoid checking for `null`.
  bool _writepgsqlValueNaive(FieldElement field) {
    final pgSqlKey = pgSqlKeyFor(field);
    return pgSqlKey.includeIfNull ||
        (!pgSqlKey.nullable && !_fieldHasCustomEncoder(field));
  }

  /// Returns `true` if [field] has a user-defined encoder.
  ///
  /// This can be either a `ToPgSql` function in [PgSqlKey] or a [pgsqlConverter]
  /// annotation.
  bool _fieldHasCustomEncoder(FieldElement field) {
    final helperContext = getHelperContext(field);
    return helperContext.serializeConvertData != null ||
        const PgSqlConverterHelper()
                .serialize(field.type, 'test', helperContext) !=
            null;
  }
}
