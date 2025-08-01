// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:meta/meta.dart';
import 'package:source_gen/source_gen.dart';
import 'package:source_helper/source_helper.dart';

import 'constants.dart';
import 'pgsql_key_utils.dart';
import 'type_helper.dart';
import 'type_helper_ctx.dart';
import 'type_helpers/config_types.dart';
import 'unsupported_type_error.dart';
import 'utils.dart';

abstract class HelperCore {
  final ClassElement2 element;
  final ClassConfig config;

  HelperCore(this.element, this.config);

  Iterable<TypeHelper> get allTypeHelpers;

  void addMember(String memberContent);

  @protected
  String get targetClassReference =>
      '${element.name3}${genericClassArgumentsImpl(withConstraints: false)}';

  @protected
  String nameAccess(FieldElement2 field) => pgsqlKeyFor(field).name;

  @protected
  String safeNameAccess(FieldElement2 field) =>
      escapeDartString(nameAccess(field));

  @protected
  String get prefix => '_\$${element.name3!.nonPrivate}';

  /// Returns a [String] representing the type arguments that exist on
  /// [element].
  ///
  /// Returns the output of calling [genericClassArguments] with [element].
  @protected
  String genericClassArgumentsImpl({required bool withConstraints}) =>
      genericClassArguments(element, withConstraints);

  @protected
  KeyConfig pgsqlKeyFor(FieldElement2 field) => pgsqlKeyForField(field, config);

  @protected
  TypeHelperCtx getHelperContext(FieldElement2 field) =>
      typeHelperContext(this, field);
}

InvalidGenerationSourceError createInvalidGenerationError(
  String targetMember,
  FieldElement2 field,
  UnsupportedTypeError error,
) {
  var message = 'Could not generate `$targetMember` code for `${field.name3!}`';

  String? todo;
  if (error.type is TypeParameterType) {
    message =
        '$message because of type '
        '`${error.type.toStringNonNullable()}` '
        '(type parameter)';

    todo =
        '''
To support type parameters (generic types) you can:
$converterOrKeyInstructions
* Set `PgSqlSerializable.genericArgumentFactories` to `true`
  https://pub.dev/documentation/pgsql_annotation/latest/pgsql_annotation/PgSqlSerializable/genericArgumentFactories.html''';
  } else if (field.type != error.type) {
    message = '$message because of type `${typeToCode(error.type)}`';
  } else {
    final element = error.type.element3?.name3;
    todo =
        '''
To support the type `${element ?? error.type}` you can:
$converterOrKeyInstructions''';
  }

  return InvalidGenerationSourceError(
    ['$message.', if (error.reason != null) error.reason, ?todo].join('\n'),
    element: field,
  );
}

/// Returns a [String] representing the type arguments that exist on
/// [element].
///
/// If [withConstraints] is `null` or if [element] has no type arguments, an
/// empty [String] is returned.
///
/// If [withConstraints] is true, any type constraints that exist on [element]
/// are included.
///
/// For example, for class `class Sample<T as num, S>{...}`
///
/// For [withConstraints] = `false`:
///
/// ```
/// "<T, S>"
/// ```
///
/// For [withConstraints] = `true`:
///
/// ```
/// "<T as num, S>"
/// ```
String genericClassArguments(ClassElement2 element, bool? withConstraints) {
  if (withConstraints == null || element.typeParameters2.isEmpty) {
    return '';
  }
  final values = element.typeParameters2
      .map((t) {
        if (withConstraints && t.bound != null) {
          final boundCode = typeToCode(t.bound!);
          return '${t.name3!} extends $boundCode';
        } else {
          return t.name3!;
        }
      })
      .join(', ');
  return '<$values>';
}
