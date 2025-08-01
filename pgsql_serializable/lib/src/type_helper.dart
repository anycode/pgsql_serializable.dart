// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';

import 'type_helpers/config_types.dart';

/// Context information provided in calls to [TypeHelper.serialize] and
/// [TypeHelper.deserialize].
abstract class TypeHelperContext {
  /// The annotated class that code is being generated for.
  ClassElement2 get classElement;

  /// The field that code is being generated for.
  FieldElement2 get fieldElement;

  /// [expression] may be just the name of the field or it may an expression
  /// representing the serialization of a value.
  Object? serialize(DartType fieldType, String expression);

  /// [expression] may be just the name of the field or it may an expression
  /// representing the serialization of a value.
  Object? deserialize(DartType fieldType, String expression);

  /// Adds [memberContent] to the set of generated, top-level members.
  void addMember(String memberContent);
}

/// Extended context information with includes configuration values
/// corresponding to `PgSqlSerializableGenerator` settings.
abstract class TypeHelperContextWithConfig extends TypeHelperContext {
  ClassConfig get config;
}

abstract class TypeHelper<T extends TypeHelperContext> {
  const TypeHelper();

  /// Returns Dart code that serializes an [expression] representing a Dart
  /// object of type [targetType].
  ///
  /// If [targetType] is not supported, returns `null`.
  ///
  /// Let's say you want to serialize a class `Foo` as just its `id` property
  /// of type `int`.
  ///
  /// Treating [expression] as a opaque Dart expression, the [serialize]
  /// implementation could be a simple as:
  ///
  /// ```dart
  /// String serialize(DartType targetType, String expression) =>
  ///   "$expression.id";
  /// ```.
  Object? serialize(DartType targetType, String expression, T context);

  /// Returns Dart code that deserializes an [expression] representing a PgSQL
  /// literal to into [targetType].
  ///
  /// If [targetType] is not supported, returns `null`.
  ///
  /// Let's say you want to deserialize a class `Foo` by taking an `int` stored
  /// in a PgSQL literal and calling the `Foo.fromInt` constructor.
  ///
  /// Treating [expression] as a opaque Dart expression representing a PgSQL
  /// literal, the [deserialize] implementation could be a simple as:
  ///
  /// ```dart
  /// String deserialize(DartType targetType, String expression) =>
  ///   "new Foo.fromInt($expression)";
  /// ```.
  ///
  /// Note that [targetType] is not used here. If you wanted to support many
  /// types of [targetType] you could write:
  ///
  /// ```dart
  /// String deserialize(DartType targetType, String expression) =>
  ///   "new ${targetType.name}.fromInt($expression)";
  /// ```.
  Object? deserialize(
    DartType targetType,
    String expression,
    T context,
    bool defaultProvided,
  );
}
