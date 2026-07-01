// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'shared_checkers.dart';
import 'type_helpers/config_types.dart';

const _pgsqlKeyChecker = TypeChecker.typeNamed(
  PgSqlKey,
  inPackage: 'pgsql_annotation',
);

/// If an annotation exists on `element` the source is a 'real' field.
/// If the result is `null`, check the getter – it is a property.
// TODO: setters: github.com/anycode/pgsql_serializable.dart/issues/24
DartObject? _pgsqlKeyAnnotation(FieldElement element) =>
    _pgsqlKeyChecker.firstAnnotationOf(element) ??
    (element.getter == null
        ? null
        : _pgsqlKeyChecker.firstAnnotationOf(element.getter!));

ConstantReader pgsqlKeyAnnotation(FieldElement element) =>
    ConstantReader(_pgsqlKeyAnnotation(element));

/// Returns `true` if [element] is annotated with [PgSqlKey].
bool hasPgSqlKeyAnnotation(FieldElement element) =>
    _pgsqlKeyAnnotation(element) != null;

ConstantReader pgsqlKeyAnnotationForCtorParam(FormalParameterElement element) =>
    ConstantReader(_pgsqlKeyChecker.firstAnnotationOf(element));

Never throwUnsupported(FieldElement element, String message) =>
    throw InvalidGenerationSourceError(
      'Error with `@PgSqlKey` on the `${element.name}` field. $message',
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
  createPgSqlKeys: reader.read('createPgSqlKeys').literalValue as bool?,
  createPerFieldToPgSql:
      reader.read('createPerFieldToPgSql').literalValue as bool?,
  dateTimeUtc: reader.read('dateTimeUtc').literalValue as bool?,
  disallowUnrecognizedKeys:
      reader.read('disallowUnrecognizedKeys').literalValue as bool?,
  explicitToPgSql: reader.read('explicitToPgSql').literalValue as bool?,
  fieldRename: readEnum(reader.read('fieldRename'), FieldRename.values),
  genericArgumentFactories:
      reader.read('genericArgumentFactories').literalValue as bool?,
  ignoreUnannotated: reader.read('ignoreUnannotated').literalValue as bool?,
  includeIfNull: reader.read('includeIfNull').literalValue as bool?,
  createPgSqlSchema: reader.read('createPgSqlSchema').literalValue as bool?,
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
  required ClassElement classElement,
}) {
  final annotation = _valueForAnnotation(reader);
  assert(config.ctorParams.isEmpty);

  final constructor = annotation.constructor ?? config.constructor;
  final constructorInstance = _constructorByNameOrNull(
    classElement,
    constructor,
  );

  final ctorParams = <FormalParameterElement>[
    ...?constructorInstance?.formalParameters,
  ];

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
        (classElement.typeParameters.isNotEmpty &&
            config.genericArgumentFactories),
    ignoreUnannotated: annotation.ignoreUnannotated ?? config.ignoreUnannotated,
    includeIfNull: annotation.includeIfNull ?? config.includeIfNull,
    ctorParams: ctorParams,
    converters: converters.isNull ? const [] : converters.listValue,
    createPgSqlSchema: annotation.createPgSqlSchema ?? config.createPgSqlSchema,
    dateTimeUtc: annotation.dateTimeUtc ?? config.dateTimeUtc,
  );
}

ConstructorElement? _constructorByNameOrNull(
  ClassElement classElement,
  String name,
) {
  try {
    return constructorByName(classElement, name);
  } on InvalidGenerationSourceError {
    return null;
  }
}

ConstructorElement constructorByName(ClassElement classElement, String name) {
  final className = classElement.name;

  ConstructorElement? ctor;
  if (name.isEmpty) {
    ctor = classElement.unnamedConstructor;
    if (ctor == null) {
      throw InvalidGenerationSourceError(
        'The class `$className` has no default constructor.',
        element: classElement,
      );
    }
  } else {
    ctor = classElement.getNamedConstructor(name);
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

/// If [targetType] is an enum, returns the [FieldElement] instances associated
/// with its values.
///
/// Otherwise, `null`.
Iterable<FieldElement>? iterateEnumFields(DartType targetType) {
  if (targetType.element is EnumElement) {
    return (targetType.element as EnumElement).constants;
  }
  return null;
}

extension DartTypeExtension on DartType {
  DartType promoteNonNullable() =>
      element?.library?.typeSystem.promoteToNonNull(this) ?? this;

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
/// types. Specifically, it supports [InterfaceType]s, [RecordType]s,
/// [TypeParameterType]s, and [DynamicType]s.
String typeToCode(DartType type, {bool forceNullable = false}) =>
    switch (type) {
      DynamicType() => 'dynamic',
      InterfaceType() => [
        type.element.name,
        if (type.typeArguments.isNotEmpty)
          '<${type.typeArguments.map(typeToCode).join(', ')}>',
        if (type.isNullableType || forceNullable) '?',
      ].join(),
      TypeParameterType() => type.toStringNonNullable(),
      RecordType() => _recordTypeToCode(type, forceNullable),
      _ => type.getDisplayString(),
    };

String _recordTypeToCode(RecordType type, bool forceNullable) {
  final positional = type.positionalFields
      .map((f) => typeToCode(f.type))
      .join(', ');
  final named = type.namedFields
      .map((f) => '${typeToCode(f.type)} ${f.name}')
      .join(', ');

  final buffer = StringBuffer('(');
  if (positional.isNotEmpty) {
    buffer.write(positional);
    if (named.isNotEmpty) buffer.write(', ');
  }
  if (named.isNotEmpty) {
    buffer.write('{$named}');
  }
  if (type.positionalFields.length == 1 && type.namedFields.isEmpty) {
    buffer.write(',');
  }
  buffer.write(')');
  if (type.isNullableType || forceNullable) {
    buffer.write('?');
  }
  return buffer.toString();
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

extension ExecutableElementExtension on ExecutableElement {
  /// Returns the name of `this` qualified with the class name if it's a
  /// [MethodElement].
  String get qualifiedName {
    if (this is TopLevelFunctionElement) {
      return name!;
    }

    if (this is MethodElement) {
      return '${enclosingElement!.name}.$name';
    }

    if (this is ConstructorElement) {
      // The default constructor.
      if (name == 'new') {
        return enclosingElement!.name!;
      }
      return '${enclosingElement!.name}.$name';
    }

    throw UnsupportedError('Not sure how to support typeof $runtimeType');
  }
}

const pgsqlSerializableChecker = TypeChecker.fromUrl(
  'package:pgsql_annotation/src/pgsql_serializable.dart#PgSqlSerializable',
);
