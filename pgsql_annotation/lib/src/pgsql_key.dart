// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'allowed_keys_helpers.dart';
import 'pgsql_serializable.dart';

/// An annotation used to specify how a field is serialized.
class PgSqlKey {
  /// The value to use if the source JSON does not contain this key or if the
  /// value is `null`.
  final Object? defaultValue;

  /// If `true`, generated code will throw a [DisallowedNullValueException] if
  /// the corresponding key exists, but the value is `null`.
  ///
  /// Note: this value does not affect the behavior of a JSON map *without* the
  /// associated key.
  ///
  /// If [disallowNullValue] is `true`, [includeIfNull] will be treated as
  /// `false` to ensure compatibility between `toPgSql` and `fromPgSql`.
  ///
  /// If both [includeIfNull] and [disallowNullValue] are set to `true` on the
  /// same field, an exception will be thrown during code generation.
  final bool? disallowNullValue;

  /// A [Function] to use when decoding the associated JSON value to the
  /// annotated field.
  ///
  /// Must be a top-level or static [Function] that takes one argument mapping
  /// a JSON literal to a value compatible with the type of the annotated field.
  ///
  /// When creating a class that supports both `toPgSql` and `fromPgSql`
  /// (the default), you should also set [toPgSql] if you set [fromPgSql].
  /// Values returned by [toPgSql] should "round-trip" through [fromPgSql].
  final Function? fromPgSql;

  /// `true` if the generator should ignore this field completely.
  ///
  /// If `null` (the default) or `false`, the field will be considered for
  /// serialization.
  final bool? ignore;

  /// Whether the generator should include fields with `null` values in the
  /// serialized output.
  ///
  /// If `true`, the generator should include the field in the serialized
  /// output, even if the value is `null`.
  ///
  /// The default value, `null`, indicates that the behavior should be
  /// acquired from the [PgSqlSerializable.includeIfNull] annotation on the
  /// enclosing class.
  ///
  /// If [disallowNullValue] is `true`, this value is treated as `false` to
  /// ensure compatibility between `toPgSql` and `fromPgSql`.
  ///
  /// If both [includeIfNull] and [disallowNullValue] are set to `true` on the
  /// same field, an exception will be thrown during code generation.
  final bool? includeIfNull;

  /// The key in a JSON map to use when reading and writing values corresponding
  /// to the annotated fields.
  ///
  /// If `null`, the field name is used.
  final String? name;

  /// When `true`, generated code for `fromPgSql` will verify that the source
  /// JSON map contains the associated key.
  ///
  /// If the key does not exist, a [MissingRequiredKeysException] exception is
  /// thrown.
  ///
  /// Note: only the existence of the key is checked. A key with a `null` value
  /// is considered valid.
  final bool? required;

  /// A [Function] to use when encoding the annotated field to JSON.
  ///
  /// Must be a top-level or static [Function] with one parameter compatible
  /// with the field being serialized that returns a JSON-compatible value.
  ///
  /// When creating a class that supports both `toPgSql` and `fromPgSql`
  /// (the default), you should also set [fromPgSql] if you set [toPgSql].
  /// Values returned by [toPgSql] should "round-trip" through [fromPgSql].
  final Function? toPgSql;

  /// The value to use for an enum field when the value provided is not in the
  /// source enum.
  ///
  /// Valid only on enum fields with a compatible enum value.
  final Object? unknownEnumValue;

  /// Creates a new [PgSqlKey] instance.
  ///
  /// Only required when the default behavior is not desired.
  const PgSqlKey({
    @Deprecated('Has no effect') bool? nullable,
    this.defaultValue,
    this.disallowNullValue,
    this.fromPgSql,
    this.ignore,
    this.includeIfNull,
    this.name,
    this.required,
    this.toPgSql,
    this.unknownEnumValue,
  });
}
