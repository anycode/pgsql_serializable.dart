// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';

import 'helper_core.dart';
import 'type_helper.dart';
import 'type_helpers/convert_helper.dart';
import 'unsupported_type_error.dart';
import 'utils.dart';

TypeHelperCtx typeHelperContext(
        HelperCore helperCore, FieldElement fieldElement, PgSqlKey key) =>
    TypeHelperCtx._(helperCore, fieldElement, key);

class TypeHelperCtx
    implements TypeHelperContextWithConfig, TypeHelperContextWithConvert {
  final HelperCore _helperCore;
  final PgSqlKey _key;

  @override
  final FieldElement fieldElement;

  @override
  bool get nullable => _key.nullable;

  @override
  ClassElement get classElement => _helperCore.element;

  @override
  PgSqlSerializable get config => _helperCore.config;

  TypeHelperCtx._(this._helperCore, this.fieldElement, this._key);

  @override
  ConvertData get serializeConvertData => _pairFromContext?.toPgSql;

  @override
  ConvertData get deserializeConvertData => _pairFromContext?.fromPgSql;

  _ConvertPair get _pairFromContext => _ConvertPair(fieldElement);

  @override
  void addMember(String memberContent) {
    _helperCore.addMember(memberContent);
  }

  @override
  Object serialize(DartType targetType, String expression) => _run(
        targetType,
        expression,
        (TypeHelper th) => th.serialize(targetType, expression, this),
      );

  @override
  Object deserialize(DartType targetType, String expression) => _run(
        targetType,
        expression,
        (TypeHelper th) => th.deserialize(targetType, expression, this),
      );

  Object _run(
    DartType targetType,
    String expression,
    Object Function(TypeHelper) invoke,
  ) =>
      _helperCore.allTypeHelpers.map(invoke).firstWhere(
            (r) => r != null,
            orElse: () => throw UnsupportedTypeError(targetType, expression),
          );
}

class _ConvertPair {
  static final _expando = Expando<_ConvertPair>();

  final ConvertData fromPgSql, toPgSql;

  _ConvertPair._(this.fromPgSql, this.toPgSql);

  factory _ConvertPair(FieldElement element) {
    var pair = _expando[element];

    if (pair == null) {
      final obj = PgSqlKeyAnnotation(element);
      if (obj.isNull) {
        pair = _ConvertPair._(null, null);
      } else {
        final toPgSql = _convertData(obj.objectValue, element, false);
        final fromPgSql = _convertData(obj.objectValue, element, true);
        pair = _ConvertPair._(fromPgSql, toPgSql);
      }
      _expando[element] = pair;
    }
    return pair;
  }
}

ConvertData _convertData(DartObject obj, FieldElement element, bool isFrom) {
  final paramName = isFrom ? 'fromPgSql' : 'toPgSql';
  final objectValue = obj.getField(paramName);

  if (objectValue == null || objectValue.isNull) {
    return null;
  }

  final executableElement = objectValue.toFunctionValue();

  if (executableElement.parameters.isEmpty ||
      executableElement.parameters.first.isNamed ||
      executableElement.parameters.where((pe) => !pe.isOptional).length > 1) {
    throwUnsupported(
        element,
        'The `$paramName` function `${executableElement.name}` must have one '
        'positional parameter.');
  }

  final argType = executableElement.parameters.first.type;
  if (isFrom) {
    final returnType = executableElement.returnType;

    if (returnType is TypeParameterType) {
      // We keep things simple in this case. We rely on inferred type arguments
      // to the `fromPgSql` function.
      // TODO: consider adding error checking here if there is confusion.
    } else if (!returnType.isAssignableTo(element.type)) {
      final returnTypeCode = typeToCode(returnType);
      final elementTypeCode = typeToCode(element.type);
      throwUnsupported(
          element,
          'The `$paramName` function `${executableElement.name}` return type '
          '`$returnTypeCode` is not compatible with field type '
          '`$elementTypeCode`.');
    }
  } else {
    if (argType is TypeParameterType) {
      // We keep things simple in this case. We rely on inferred type arguments
      // to the `fromPgSql` function.
      // TODO: consider adding error checking here if there is confusion.
    } else if (!element.type.isAssignableTo(argType)) {
      final argTypeCode = typeToCode(argType);
      final elementTypeCode = typeToCode(element.type);
      throwUnsupported(
          element,
          'The `$paramName` function `${executableElement.name}` argument type '
          '`$argTypeCode` is not compatible with field type'
          ' `$elementTypeCode`.');
    }
  }

  var name = executableElement.name;

  if (executableElement is MethodElement) {
    name = '${executableElement.enclosingElement.name}.$name';
  }

  return ConvertData(name, argType);
}
