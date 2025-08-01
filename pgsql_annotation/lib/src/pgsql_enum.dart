// Copyright (c) 2021, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta_meta.dart';

import 'pgsql_serializable.dart';
import 'pgsql_value.dart';

/// Allows configuration of how `enum` elements are treated as PgSQL.
@Target({TargetKind.enumType})
class PgSqlEnum {
  const PgSqlEnum({
    this.alwaysCreate = false,
    this.fieldRename = FieldRename.none,
    this.valueField,
  });

  /// If `true`, `_$[enum name]EnumMap` is generated for in library containing
  /// the `enum`, even if the `enum` is not used as a field in a class annotated
  /// with [PgSqlSerializable].
  ///
  /// The default, `false`, means no extra helpers are generated for this `enum`
  /// unless it is used by a class annotated with [PgSqlSerializable].
  final bool alwaysCreate;

  /// Defines the naming strategy when converting enum entry names to PgSQL
  /// values.
  ///
  /// With a value [FieldRename.none] (the default), the name of the enum entry
  /// is used without modification.
  ///
  /// See [FieldRename] for details on the other options.
  ///
  /// Note: the value for [PgSqlValue.value] takes precedence over this option
  /// for entries annotated with [PgSqlValue].
  final FieldRename fieldRename;

  /// Specifies the field within an "enhanced enum" to use as the value
  /// to use for serialization.
  ///
  /// If an individual `enum` element is annotated with `@PgSqlValue`
  /// that value still takes precedence.
  final String? valueField;
}
