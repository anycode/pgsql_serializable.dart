// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'helper_core.dart';
import 'pgsql_literal_generator.dart';
import 'type_helpers/generic_factory_helper.dart';
import 'unsupported_type_error.dart';
import 'utils.dart';

class CreateFactoryResult {
  final String output;
  final Set<String> usedFields;

  CreateFactoryResult(this.output, this.usedFields);
}

mixin DecodeHelper implements HelperCore {
  CreateFactoryResult createFactory(
    Map<String, FieldElement2> accessibleFields,
    Map<String, String> unavailableReasons,
  ) {
    assert(config.createFactory);
    final buffer = StringBuffer();

    final mapType = config.anyMap ? 'Map' : 'Map<String, dynamic>';
    buffer.write(
      '$targetClassReference '
      '${prefix}FromPgSql${genericClassArgumentsImpl(withConstraints: true)}'
      '($mapType pgsql',
    );

    if (config.genericArgumentFactories) {
      for (var arg in element.typeParameters2) {
        final helperName = fromPgSqlForType(
          arg.instantiate(nullabilitySuffix: NullabilitySuffix.none),
        );

        buffer.write(', ${arg.name3} Function(Object? pgsql) $helperName');
      }
      if (element.typeParameters2.isNotEmpty) {
        buffer.write(',');
      }
    }

    buffer.write(')');

    final fromPgSqlLines = <String>[];

    String deserializeFun(
      String paramOrFieldName, {
      FormalParameterElement? ctorParam,
    }) => _deserializeForField(
      accessibleFields[paramOrFieldName]!,
      ctorParam: ctorParam,
    );

    final data = _writeConstructorInvocation(
      element,
      config.constructor,
      accessibleFields.keys,
      accessibleFields.values
          .where(
            (fe) =>
                element.lookUpSetter2(
                  name: fe.name3!,
                  library: element.library2,
                ) !=
                null,
          )
          .map((fe) => fe.name3!)
          .toList(),
      unavailableReasons,
      deserializeFun,
    );

    final checks = _checkKeys(
      accessibleFields.values.where(
        (fe) => data.usedCtorParamsAndFields.contains(fe.name3),
      ),
    ).toList();

    if (config.checked) {
      final classLiteral = escapeDartString(element.name3!);

      final sectionBuffer = StringBuffer()
        ..write('''
  \$checkedCreate(
    $classLiteral,
    pgsql,
    (\$checkedConvert) {\n''')
        ..write(checks.join())
        ..write('''
    final val = ${data.content};''');

      for (final fieldName in data.fieldsToSet) {
        sectionBuffer.writeln();
        final fieldValue = accessibleFields[fieldName]!;
        final safeName = safeNameAccess(fieldValue);
        sectionBuffer
          ..write('''
    \$checkedConvert($safeName, (v) => ''')
          ..write('val.$fieldName = ')
          ..write(_deserializeForField(fieldValue, checkedProperty: true));

        final readValueFunc = pgsqlKeyFor(fieldValue).readValueFunctionName;
        if (readValueFunc != null) {
          sectionBuffer.writeln(',readValue: $readValueFunc,');
        }

        sectionBuffer.write(');');
      }

      sectionBuffer.write('''\n    return val;
  }''');

      final fieldKeyMap = Map.fromEntries(
        data.usedCtorParamsAndFields
            .map((k) => MapEntry(k, nameAccess(accessibleFields[k]!)))
            .where((me) => me.key != me.value),
      );

      String fieldKeyMapArg;
      if (fieldKeyMap.isEmpty) {
        fieldKeyMapArg = '';
      } else {
        final mapLiteral = pgsqlMapAsDart(fieldKeyMap);
        fieldKeyMapArg = ', fieldKeyMap: const $mapLiteral';
      }

      sectionBuffer
        ..write(fieldKeyMapArg)
        ..write(',);');
      fromPgSqlLines.add(sectionBuffer.toString());
    } else {
      fromPgSqlLines.addAll(checks);

      final sectionBuffer = StringBuffer()
        ..write('''
  ${data.content}''');
      for (final field in data.fieldsToSet) {
        sectionBuffer
          ..writeln()
          ..write('    ..$field = ')
          ..write(deserializeFun(field));
      }
      sectionBuffer.writeln(';');
      fromPgSqlLines.add(sectionBuffer.toString());
    }

    if (fromPgSqlLines.length == 1) {
      buffer
        ..write('=>')
        ..write(fromPgSqlLines.single);
    } else {
      buffer
        ..write('{')
        ..writeAll(fromPgSqlLines.take(fromPgSqlLines.length - 1))
        ..write('return ')
        ..write(fromPgSqlLines.last)
        ..write('}');
    }

    return CreateFactoryResult(buffer.toString(), data.usedCtorParamsAndFields);
  }

  Iterable<String> _checkKeys(Iterable<FieldElement2> accessibleFields) sync* {
    final args = <String>[];

    String constantList(Iterable<FieldElement2> things) =>
        'const ${pgsqlLiteralAsDart(things.map<String>(nameAccess).toList())}';

    if (config.disallowUnrecognizedKeys) {
      final allowKeysLiteral = constantList(accessibleFields);

      args.add('allowedKeys: $allowKeysLiteral');
    }

    final requiredKeys = accessibleFields
        .where((fe) => pgsqlKeyFor(fe).required)
        .toList();
    if (requiredKeys.isNotEmpty) {
      final requiredKeyLiteral = constantList(requiredKeys);

      args.add('requiredKeys: $requiredKeyLiteral');
    }

    final disallowNullKeys = accessibleFields
        .where((fe) => pgsqlKeyFor(fe).disallowNullValue)
        .toList();
    if (disallowNullKeys.isNotEmpty) {
      final disallowNullKeyLiteral = constantList(disallowNullKeys);

      args.add('disallowNullValues: $disallowNullKeyLiteral');
    }

    if (args.isNotEmpty) {
      yield '\$checkKeys(pgsql, ${args.map((e) => '$e, ').join()});\n';
    }
  }

  /// If [checkedProperty] is `true`, we're using this function to write to a
  /// setter.
  String _deserializeForField(
    FieldElement2 field, {
    FormalParameterElement? ctorParam,
    bool checkedProperty = false,
  }) {
    final pgsqlKeyName = safeNameAccess(field);
    final targetType = ctorParam?.type ?? field.type;
    final contextHelper = getHelperContext(field);
    final pgsqlKey = pgsqlKeyFor(field);
    final defaultValue = pgsqlKey.defaultValue;
    final readValueFunc = pgsqlKey.readValueFunctionName;

    String deserialize(String expression) => contextHelper
        .deserialize(targetType, expression, defaultValue: defaultValue)
        .toString();

    String value;
    try {
      if (config.checked) {
        value = deserialize('v');
        if (!checkedProperty) {
          final readValueBit = readValueFunc == null
              ? ''
              : ',readValue: $readValueFunc,';
          value = '\$checkedConvert($pgsqlKeyName, (v) => $value$readValueBit)';
        }
      } else {
        assert(
          !checkedProperty,
          'should only be true if `_generator.checked` is true.',
        );

        value = deserialize(
          readValueFunc == null
              ? 'pgsql[$pgsqlKeyName]'
              : '$readValueFunc(pgsql, $pgsqlKeyName)',
        );
      }
    } on UnsupportedTypeError catch (e) // ignore: avoid_catching_errors
    {
      throw createInvalidGenerationError('fromPgSql', field, e);
    }

    if (defaultValue != null) {
      if (pgsqlKey.disallowNullValue && pgsqlKey.required) {
        log.warning(
          'The `defaultValue` on field `${field.name3}` will have no '
          'effect because both `disallowNullValue` and `required` are set to '
          '`true`.',
        );
      }
    }
    return value;
  }
}

/// [availableConstructorParameters] is checked to see if it is available. If
/// [availableConstructorParameters] does not contain the parameter name,
/// an [UnsupportedError] is thrown.
///
/// To improve the error details, [unavailableReasons] is checked for the
/// unavailable constructor parameter. If the value is not `null`, it is
/// included in the [UnsupportedError] message.
///
/// [writableFields] are also populated, but only if they have not already
/// been defined by a constructor parameter with the same name.
_ConstructorData _writeConstructorInvocation(
  ClassElement2 classElement,
  String constructorName,
  Iterable<String> availableConstructorParameters,
  Iterable<String> writableFields,
  Map<String, String> unavailableReasons,
  String Function(String paramOrFieldName, {FormalParameterElement ctorParam})
  deserializeForField,
) {
  final className = classElement.name3;

  final ctor = constructorByName(classElement, constructorName);

  final usedCtorParamsAndFields = <String>{};
  final constructorArguments = <FormalParameterElement>[];
  final namedConstructorArguments = <FormalParameterElement>[];

  for (final arg in ctor.formalParameters) {
    if (!availableConstructorParameters.contains(arg.name3)) {
      if (arg.isRequired) {
        var msg =
            'Cannot populate the required constructor '
            'argument: ${arg.name3}.';

        final additionalInfo = unavailableReasons[arg.name3];

        if (additionalInfo != null) {
          msg = '$msg $additionalInfo';
        }

        throw InvalidGenerationSourceError(msg, element: ctor);
      }

      continue;
    }

    // TODO: validate that the types match!
    if (arg.isNamed) {
      namedConstructorArguments.add(arg);
    } else {
      constructorArguments.add(arg);
    }
    usedCtorParamsAndFields.add(arg.name3!);
  }

  // fields that aren't already set by the constructor and that aren't final
  final remainingFieldsForInvocationBody = writableFields.toSet().difference(
    usedCtorParamsAndFields,
  );

  final constructorExtra = constructorName.isEmpty ? '' : '.$constructorName';

  final buffer = StringBuffer()
    ..write(
      '$className'
      '${genericClassArguments(classElement, false)}'
      '$constructorExtra(',
    )
    ..writeAll(
      constructorArguments.map((paramElement) {
        final content = deserializeForField(
          paramElement.name3!,
          ctorParam: paramElement,
        );
        return '      $content,\n';
      }),
    )
    ..writeAll(
      namedConstructorArguments.map((paramElement) {
        final value = deserializeForField(
          paramElement.name3!,
          ctorParam: paramElement,
        );
        return '      ${paramElement.name3!}: $value,\n';
      }),
    )
    ..write(')');

  usedCtorParamsAndFields.addAll(remainingFieldsForInvocationBody);

  return _ConstructorData(
    buffer.toString(),
    remainingFieldsForInvocationBody,
    usedCtorParamsAndFields,
  );
}

class _ConstructorData {
  final String content;
  final Set<String> fieldsToSet;
  final Set<String> usedCtorParamsAndFields;

  _ConstructorData(
    this.content,
    this.fieldsToSet,
    this.usedCtorParamsAndFields,
  );
}
