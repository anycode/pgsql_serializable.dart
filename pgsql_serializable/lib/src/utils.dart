// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'shared_checkers.dart';
import 'type_helpers/config_types.dart';

const _pgsqlKeyChecker = TypeChecker.fromRuntime(PgSqlKey);

DartObject? _pgsqlKeyAnnotation(FieldElement2 element) =>
    _pgsqlKeyChecker.firstAnnotationOf(element) ??
    (element.getter2 == null
        ? null
        : _pgsqlKeyChecker.firstAnnotationOf(element.getter2!));

ConstantReader pgsqlKeyAnnotation(FieldElement2 element) =>
    ConstantReader(_pgsqlKeyAnnotation(element));

/// Returns `true` if [element] is annotated with [PgSqlKey].
bool hasPgSqlKeyAnnotation(FieldElement2 element) =>
    _pgsqlKeyAnnotation(element) != null;

Never throwUnsupported(FieldElement2 element, String message) =>
    throw InvalidGenerationSourceError(
      'Error with `@PgSqlKey` on the `${element.name3}` field. $message',
      element: element,
    );

T? readEnum<T extends Enum>(ConstantReader reader, List<T> values) =>
    reader.isNull
    ? null
    : enumValueForDartObject<T>(reader.objectValue, values, (f) => f.name);

T enumValueForDartObject<T>(
  DartObject source,
  List<T> items,
  String Function(T) name,
) => items[source.getField('index')!.toIntValue()!];

/// Return an instance of [PgSqlSerializable] corresponding to the provided
/// [reader].
// #CHANGE WHEN UPDATING pgsql_annotation
PgSqlSerializable _valueForAnnotation(ConstantReader reader) => PgSqlSerializable(
  anyMap: reader.read('anyMap').literalValue as bool?,
  checked: reader.read('checked').literalValue as bool?,
  constructor: reader.read('constructor').literalValue as String?,
  createFactory: reader.read('createFactory').literalValue as bool?,
  createToPgSql: reader.read('createToPgSql').literalValue as bool?,
  createFieldMap: reader.read('createFieldMap').literalValue as bool?,
  enumMapPrefix: reader.read('enumMapPrefix').literalValue as String?,
  createPgSqlKeys: reader.read('createPgSqlKeys').literalValue as bool?,
  createPerFieldToPgSql:
      reader.read('createPerFieldToPgSql').literalValue as bool?,
  disallowUnrecognizedKeys:
      reader.read('disallowUnrecognizedKeys').literalValue as bool?,
  explicitToPgSql: reader.read('explicitToPgSql').literalValue as bool?,
  fieldRename: readEnum(reader.read('fieldRename'), FieldRename.values),
  genericArgumentFactories:
      reader.read('genericArgumentFactories').literalValue as bool?,
  ignoreUnannotated: reader.read('ignoreUnannotated').literalValue as bool?,
  includeIfNull: reader.read('includeIfNull').literalValue as bool?,
);

/// Returns a [ClassConfig] with values from the [PgSqlSerializable]
/// instance represented by [reader].
///
/// For fields that are not defined in [PgSqlSerializable] or `null` in [reader],
/// use the values in [config].
///
/// Note: if [PgSqlSerializable.genericArgumentFactories] is `false` for [reader]
/// and `true` for [config], the corresponding field in the return value will
/// only be `true` if [classElement] has type parameters.
ClassConfig mergeConfig(
  ClassConfig config,
  ConstantReader reader, {
  required ClassElement2 classElement,
}) {
  final annotation = _valueForAnnotation(reader);
  assert(config.ctorParamDefaults.isEmpty);

  final constructor = annotation.constructor ?? config.constructor;
  final constructorInstance = _constructorByNameOrNull(
    classElement,
    constructor,
  );

  final paramDefaultValueMap = constructorInstance == null
      ? <String, String>{}
      : Map<String, String>.fromEntries(
          constructorInstance.formalParameters
              .where((element) => element.hasDefaultValue)
              .map((e) => MapEntry(e.name3!, e.defaultValueCode!)),
        );

  final converters = reader.read('converters');

  return ClassConfig(
    anyMap: annotation.anyMap ?? config.anyMap,
    checked: annotation.checked ?? config.checked,
    constructor: constructor,
    createFactory: annotation.createFactory ?? config.createFactory,
    createToPgSql: annotation.createToPgSql ?? config.createToPgSql,
    createFieldMap: annotation.createFieldMap ?? config.createFieldMap,
    enumMapPrefix: annotation.enumMapPrefix ?? config.enumMapPrefix,
    createPgSqlKeys: annotation.createPgSqlKeys ?? config.createPgSqlKeys,
    createPerFieldToPgSql:
        annotation.createPerFieldToPgSql ?? config.createPerFieldToPgSql,
    disallowUnrecognizedKeys:
        annotation.disallowUnrecognizedKeys ?? config.disallowUnrecognizedKeys,
    explicitToPgSql: annotation.explicitToPgSql ?? config.explicitToPgSql,
    fieldRename: annotation.fieldRename ?? config.fieldRename,
    genericArgumentFactories:
        annotation.genericArgumentFactories ??
        (classElement.typeParameters2.isNotEmpty &&
            config.genericArgumentFactories),
    ignoreUnannotated: annotation.ignoreUnannotated ?? config.ignoreUnannotated,
    includeIfNull: annotation.includeIfNull ?? config.includeIfNull,
    ctorParamDefaults: paramDefaultValueMap,
    converters: converters.isNull ? const [] : converters.listValue,
  );
}

ConstructorElement2? _constructorByNameOrNull(
  ClassElement2 classElement,
  String name,
) {
  try {
    return constructorByName(classElement, name);
  } on InvalidGenerationSourceError {
    return null;
  }
}

ConstructorElement2 constructorByName(ClassElement2 classElement, String name) {
  final className = classElement.name3;

  ConstructorElement2? ctor;
  if (name.isEmpty) {
    ctor = classElement.unnamedConstructor2;
    if (ctor == null) {
      throw InvalidGenerationSourceError(
        'The class `$className` has no default constructor.',
        element: classElement,
      );
    }
  } else {
    ctor = classElement.getNamedConstructor2(name);
    if (ctor == null) {
      throw InvalidGenerationSourceError(
        'The class `$className` does not have a constructor with the name '
        '`$name`.',
        element: classElement,
      );
    }
  }

  return ctor;
}

/// If [targetType] is an enum, returns the [FieldElement2] instances associated
/// with its values.
///
/// Otherwise, `null`.
Iterable<FieldElement2>? iterateEnumFields(DartType targetType) {
  if ( /*targetType is InterfaceType && */ targetType.element3
      is EnumElement2) {
    return (targetType.element3 as EnumElement2).constants2;
  }
  return null;
}

extension DartTypeExtension on DartType {
  DartType promoteNonNullable() =>
      element3?.library2?.typeSystem.promoteToNonNull(this) ?? this;

  String toStringNonNullable() {
    final val = getDisplayString();
    if (val.endsWith('?')) return val.substring(0, val.length - 1);
    return val;
  }
}

String ifNullOrElse(String test, String ifNull, String ifNotNull) =>
    '$test == null ? $ifNull : $ifNotNull';

String encodedFieldName(FieldRename fieldRename, String declaredName) =>
    switch (fieldRename) {
      FieldRename.none => declaredName,
      FieldRename.snake => declaredName.snake,
      FieldRename.screamingSnake => declaredName.snake.toUpperCase(),
      FieldRename.kebab => declaredName.kebab,
      FieldRename.pascal => declaredName.pascal,
    };

/// Return the Dart code presentation for the given [type].
///
/// This function is intentionally limited, and does not support all possible
/// types and locations of these files in code. Specifically, it supports
/// only [InterfaceType]s, with optional type arguments that are also should
/// be [InterfaceType]s.
String typeToCode(DartType type, {bool forceNullable = false}) {
  if (type is DynamicType) {
    return 'dynamic';
  } else if (type is InterfaceType) {
    return [
      type.element3.name3,
      if (type.typeArguments.isNotEmpty)
        '<${type.typeArguments.map(typeToCode).join(', ')}>',
      (type.isNullableType || forceNullable) ? '?' : '',
    ].join();
  }

  if (type is TypeParameterType) {
    return type.toStringNonNullable();
  }
  throw UnimplementedError('(${type.runtimeType}) $type');
}

String? defaultDecodeLogic(
  DartType targetType,
  String expression, {
  bool defaultProvided = false,
}) {
  if (targetType.isDartCoreObject && !targetType.isNullableType) {
    final question = defaultProvided ? '?' : '';
    return '$expression as Object$question';
  } else if (targetType.isDartCoreObject || targetType is DynamicType) {
    // just return it as-is. We'll hope it's safe.
    return expression;
  } else if (targetType.isDartCoreDouble) {
    final targetTypeNullable = defaultProvided || targetType.isNullableType;
    final question = targetTypeNullable ? '?' : '';
    return '($expression as num$question)$question.toDouble()';
  } else if (targetType.isDartCoreInt) {
    final targetTypeNullable = defaultProvided || targetType.isNullableType;
    final question = targetTypeNullable ? '?' : '';
    return '($expression as num$question)$question.toInt()';
  } else if (simplePgSqlTypeChecker.isAssignableFromType(targetType)) {
    final typeCode = typeToCode(targetType, forceNullable: defaultProvided);
    return '$expression as $typeCode';
  }

  return null;
}

extension ExecutableElementExtension on ExecutableElement2 {
  /// Returns the name of `this` qualified with the class name if it's a
  /// [MethodElement2].
  String get qualifiedName {
    if (this is TopLevelFunctionElement) {
      return name3!;
    }

    if (this is MethodElement2) {
      return '${enclosingElement2!.name3!}.${name3!}';
    }

    if (this is ConstructorElement2) {
      // The default constructor.
      if (name3 == 'new') {
        return enclosingElement2!.name3!;
      }
      return '${enclosingElement2!.name3!}.${name3!}';
    }

    throw UnsupportedError('Not sure how to support typeof $runtimeType');
  }
}
