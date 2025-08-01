// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'pgsql_literal_generator.dart';
import 'shared_checkers.dart';
import 'type_helpers/config_types.dart';
import 'utils.dart';

final _pgsqlKeyExpando = Expando<Map<ClassConfig, KeyConfig>>();

KeyConfig pgsqlKeyForField(FieldElement2 field, ClassConfig classAnnotation) =>
    (_pgsqlKeyExpando[field] ??= Map.identity())[classAnnotation] ??= _from(
      field,
      classAnnotation,
    );

KeyConfig _from(FieldElement2 element, ClassConfig classAnnotation) {
  // If an annotation exists on `element` the source is a 'real' field.
  // If the result is `null`, check the getter – it is a property.
  // TODO: setters: github.com/anycode/pgsql_serializable.dart/issues/24
  final obj = pgsqlKeyAnnotation(element);

  final ctorParamDefault = classAnnotation.ctorParamDefaults[element.name3];

  if (obj.isNull) {
    return _populatePgSqlKey(
      classAnnotation,
      element,
      defaultValue: ctorParamDefault,
      includeFromPgSql: classAnnotation.ignoreUnannotated ? false : null,
      includeToPgSql: classAnnotation.ignoreUnannotated ? false : null,
    );
  }

  /// Returns a literal value for [dartObject] if possible, otherwise throws
  /// an [InvalidGenerationSourceError] using [typeInformation] to describe
  /// the unsupported type.
  Object? literalForObject(
    String fieldName,
    DartObject dartObject,
    Iterable<String> typeInformation,
  ) {
    if (dartObject.isNull) {
      return null;
    }

    final reader = ConstantReader(dartObject);

    String? badType;
    if (reader.isSymbol) {
      badType = 'Symbol';
    } else if (reader.isType) {
      badType = 'Type';
    } else if (dartObject.type is FunctionType) {
      // Function types at the "root" are already handled. If they occur
      // here, it's because the function is nested instead of a collection
      // literal, which is NOT supported!
      badType = 'Function';
    } else if (!reader.isLiteral) {
      badType = dartObject.type!.element3?.name3;
    }

    if (badType != null) {
      badType = typeInformation.followedBy([badType]).join(' > ');
      throwUnsupported(
        element,
        '`$fieldName` is `$badType`, it must be a literal.',
      );
    }

    if (reader.isDouble || reader.isInt || reader.isString || reader.isBool) {
      return reader.literalValue;
    }

    if (reader.isList) {
      return [
        for (var e in reader.listValue)
          literalForObject(fieldName, e, [...typeInformation, 'List']),
      ];
    }

    if (reader.isSet) {
      return {
        for (var e in reader.setValue)
          literalForObject(fieldName, e, [...typeInformation, 'Set']),
      };
    }

    if (reader.isMap) {
      final mapTypeInformation = [...typeInformation, 'Map'];
      return reader.mapValue.map(
        (k, v) => MapEntry(
          literalForObject(fieldName, k!, mapTypeInformation),
          literalForObject(fieldName, v!, mapTypeInformation),
        ),
      );
    }

    badType = typeInformation.followedBy(['$dartObject']).join(' > ');

    throwUnsupported(
      element,
      'The provided value is not supported: $badType. '
      'This may be an error in package:pgsql_serializable. '
      'Please rerun your build with `--verbose` and file an issue.',
    );
  }

  /// Returns a literal object representing the value of [fieldName] in [obj].
  ///
  /// If [mustBeEnum] is `true`, throws an [InvalidGenerationSourceError] if
  /// either the annotated field is not an `enum` or `List` or if the value in
  /// [fieldName] is not an `enum` value.
  String? createAnnotationValue(String fieldName, {bool mustBeEnum = false}) {
    final annotationValue = obj.read(fieldName);

    if (annotationValue.isNull) {
      return null;
    }

    final objectValue = annotationValue.objectValue;
    final annotationType = objectValue.type!;

    if (annotationType is FunctionType) {
      // TODO: we could be a LOT more careful here, checking the return type
      // and the number of parameters. BUT! If any of those things are wrong
      // the generated code will be invalid, so skipping until we're bored
      // later

      final functionValue = objectValue.toFunctionValue2()!;

      final invokeConst =
          functionValue is ConstructorElement2 && functionValue.isConst
          ? 'const '
          : '';

      return '$invokeConst${functionValue.qualifiedName}()';
    }

    final enumFields = iterateEnumFields(annotationType);

    if (enumFields != null) {
      if (mustBeEnum) {
        late DartType targetEnumType;
        if (element.type.isEnum) {
          targetEnumType = element.type;
        } else if (coreIterableTypeChecker.isAssignableFromType(element.type)) {
          targetEnumType = coreIterableGenericType(element.type);
        } else {
          throwUnsupported(
            element,
            '`$fieldName` can only be set on fields of type enum or on '
            'Iterable, List, or Set instances of an enum type.',
          );
        }

        if (_nullAsUnknownChecker.isExactlyType(annotationType)) {
          return pgsqlKeyNullForUndefinedEnumValueFieldName;
        } else if (!_interfaceTypesEqual(annotationType, targetEnumType)) {
          throwUnsupported(
            element,
            '`$fieldName` has type '
            '`${targetEnumType.toStringNonNullable()}`, but '
            'the provided unknownEnumValue is of type '
            '`${annotationType.toStringNonNullable()}`.',
          );
        }
      }

      if (_nullAsUnknownChecker.isExactlyType(annotationType)) {
        throw InvalidGenerationSourceError(
          '`$pgsqlKeyNullForUndefinedEnumValueFieldName` cannot be used with '
          '`PgSqlKey.defaultValue`.',
          element: element,
        );
      }

      final enumValueNames = enumFields
          .map((p) => p.name3!)
          .toList(growable: false);

      final enumValueName = enumValueForDartObject<String>(
        objectValue,
        enumValueNames,
        (n) => n,
      );

      return '${annotationType.element3!.name3}.$enumValueName';
    } else {
      final defaultValueLiteral = literalForObject(fieldName, objectValue, []);
      if (defaultValueLiteral == null) {
        return null;
      }
      if (mustBeEnum) {
        throwUnsupported(
          element,
          'The value provided for `$fieldName` must be a matching enum.',
        );
      }
      return pgsqlLiteralAsDart(defaultValueLiteral);
    }
  }

  final defaultValue = createAnnotationValue('defaultValue');
  if (defaultValue != null && ctorParamDefault != null) {
    if (defaultValue == ctorParamDefault) {
      log.info(
        'The default value `$defaultValue` for `${element.name3!}` is defined '
        'twice in the constructor and in the `PgSqlKey.defaultValue`.',
      );
    } else {
      log.warning(
        'The constructor parameter for `${element.name3!}` has a default value '
        '`$ctorParamDefault`, but the `PgSqlKey.defaultValue` value '
        '`$defaultValue` will be used for missing or `null` values in PgSQL '
        'decoding.',
      );
    }
  }

  String? readValueFunctionName;
  final readValue = obj.read('readValue');
  if (!readValue.isNull) {
    readValueFunctionName = readValue.objectValue
        .toFunctionValue2()!
        .qualifiedName;
  }

  final ignore = obj.read('ignore').literalValue as bool?;
  var includeFromPgSql = obj.read('includeFromPgSql').literalValue as bool?;
  var includeToPgSql = obj.read('includeToPgSql').literalValue as bool?;

  if (ignore != null) {
    if (includeFromPgSql != null) {
      throwUnsupported(
        element,
        'Cannot use both `ignore` and `includeFromPgSql` on the same field. '
        'Since `ignore` is deprecated, you should only use `includeFromPgSql`.',
      );
    }
    if (includeToPgSql != null) {
      throwUnsupported(
        element,
        'Cannot use both `ignore` and `includeToPgSql` on the same field. '
        'Since `ignore` is deprecated, you should only use `includeToPgSql`.',
      );
    }
    assert(includeFromPgSql == null && includeToPgSql == null);
    includeToPgSql = includeFromPgSql = !ignore;
  }

  return _populatePgSqlKey(
    classAnnotation,
    element,
    defaultValue: defaultValue ?? ctorParamDefault,
    disallowNullValue: obj.read('disallowNullValue').literalValue as bool?,
    includeIfNull: obj.read('includeIfNull').literalValue as bool?,
    name: obj.read('name').literalValue as String?,
    readValueFunctionName: readValueFunctionName,
    required: obj.read('required').literalValue as bool?,
    unknownEnumValue: createAnnotationValue(
      'unknownEnumValue',
      mustBeEnum: true,
    ),
    includeToPgSql: includeToPgSql,
    includeFromPgSql: includeFromPgSql,
  );
}

KeyConfig _populatePgSqlKey(
  ClassConfig classAnnotation,
  FieldElement2 element, {
  required String? defaultValue,
  bool? disallowNullValue,
  bool? includeIfNull,
  String? name,
  String? readValueFunctionName,
  bool? required,
  String? unknownEnumValue,
  bool? includeToPgSql,
  bool? includeFromPgSql,
}) {
  if (disallowNullValue == true) {
    if (includeIfNull == true) {
      throwUnsupported(
        element,
        'Cannot set both `disallowNullValue` and `includeIfNull` to `true`. '
        'This leads to incompatible `toPgSql` and `fromPgSql` behavior.',
      );
    }
  }

  return KeyConfig(
    defaultValue: defaultValue,
    disallowNullValue: disallowNullValue ?? false,
    includeIfNull: _includeIfNull(
      includeIfNull,
      disallowNullValue,
      classAnnotation.includeIfNull,
    ),
    name: name ?? encodedFieldName(classAnnotation.fieldRename, element.name3!),
    readValueFunctionName: readValueFunctionName,
    required: required ?? false,
    unknownEnumValue: unknownEnumValue,
    includeFromPgSql: includeFromPgSql,
    includeToPgSql: includeToPgSql,
  );
}

bool _includeIfNull(
  bool? keyIncludeIfNull,
  bool? keyDisallowNullValue,
  bool classIncludeIfNull,
) {
  if (keyDisallowNullValue == true) {
    assert(keyIncludeIfNull != true);
    return false;
  }
  return keyIncludeIfNull ?? classIncludeIfNull;
}

bool _interfaceTypesEqual(DartType a, DartType b) {
  if (a is InterfaceType && b is InterfaceType) {
    // Handle nullability case. Pretty sure this is fine for enums.
    return a.element3 == b.element3;
  }
  return a == b;
}

const pgsqlKeyNullForUndefinedEnumValueFieldName =
    'PgSqlKey.nullForUndefinedEnumValue';

final _nullAsUnknownChecker = TypeChecker.fromRuntime(
  PgSqlKey.nullForUndefinedEnumValue.runtimeType,
);
