// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta_meta.dart';

import 'allowed_keys_helpers.dart';
import 'pgsql_serializable.dart';

/// An annotation used to specify how a field is serialized.
@Target({TargetKind.field, TargetKind.getter})
class PgSqlKey {
  /// The value to use if the source PgSQL does not contain this key or if the
  /// value is `null`.
  ///
  /// Also supported: a top-level or static [Function] or a constructor with no
  /// required parameters and a return type compatible with the field being
  /// assigned.
  final Object? defaultValue;

  /// If `true`, generated code will throw a [DisallowedNullValueException] if
  /// the corresponding key exists, but its value is `null`.
  ///
  /// Note: this value does not affect the behavior of a PgSQL map *without* the
  /// associated key.
  ///
  /// If [disallowNullValue] is `true`, [includeIfNull] will be treated as
  /// `false` to ensure consistency between `toPgSql` and `fromPgSql`.
  ///
  /// If both [includeIfNull] and [disallowNullValue] are set to `true` on the
  /// same field, an exception will be thrown during code generation.
  final bool? disallowNullValue;

  /// A [Function] to use when decoding the associated PgSQL value to the
  /// annotated field.
  ///
  /// Must be a top-level or static [Function] or a constructor that accepts one
  /// positional argument mapping a PgSQL literal to a value compatible with the
  /// type of the annotated field.
  ///
  /// When creating a class that supports both `toPgSql` and `fromPgSql`
  /// (the default behavior), it is recommended to also set [toPgSql] if
  /// [fromPgSql] is set. Values returned by [toPgSql] should "round-trip"
  /// through [fromPgSql].
  final Function? fromPgSql;

  /// `true` if the generator should ignore this field completely.
  ///
  /// If `null` (the default) or `false`, the field will be considered for
  /// serialization.
  ///
  /// This field is DEPRECATED; use [includeFromPgSql] and [includeToPgSql]
  /// instead.
  @Deprecated(
    'Use `includeFromPgSql` and `includeToPgSql` with a value of `false` '
    'instead.',
  )
  final bool? ignore;

  /// Determines whether a field should be included (or excluded) when decoding
  /// an object from PgSQL.
  ///
  /// `null` (the default) means the field will be handled with default
  /// semantics that consider whether it's private or if it can be cleanly
  /// round-tripped to and from PgSQL.
  ///
  /// `true` forces the field to always be decoded, even if it's private.
  ///
  /// `false` prevents the field from being decoded.
  final bool? includeFromPgSql;

  /// Specifies whether fields with `null` values should be included in the
  /// serialized output.
  ///
  /// If `true`, the field will be included in the serialized output even if its
  /// value is `null`.
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

  /// Determines whether a field should be included (or excluded) when encoding
  /// an object to PgSQL.
  ///
  /// `null` (the default) means the field will be handled with the default
  /// semantics that take into account if it's private or if it can be cleanly
  /// round-tripped to-from PgSQL.
  ///
  /// `true` forces the field to always be encoded, even if it's private.
  ///
  /// `false` prevents the field from being encoded.
  final bool? includeToPgSql;

  /// The key to use in the PgSQL map when reading and writing values for the
  /// annotated field.
  ///
  /// If `null`, the field name will be used as the key.
  final String? name;

  /// Customizes how a value is read from the source PgSQL map.
  ///
  /// Typically, the value corresponding to a given key is read directly from
  /// the PgSQL map using `map[key]`. At times it's convenient to customize this
  /// behavior to support alternative names or to support logic that requires
  /// accessing multiple values at once.
  ///
  /// The provided [Function] must be either a top-level function or a static
  /// method within the class.
  ///
  /// Note: using this feature does not change any of the subsequent decoding
  /// logic for the field. For instance, if the field is of type [DateTime] we
  /// expect the function provided here to return a [String].
  final Object? Function(Map, String)? readValue;

  /// If `true`, generated code for `fromPgSql` will verify that the source PgSQL
  /// map contains the associated key.
  ///
  /// If the key is missing, a [MissingRequiredKeysException] will be thrown.
  ///
  /// Note: only the existence of the key is checked. A key with a `null` value
  /// is considered valid.
  final bool? required;

  /// A [Function] to use when encoding the annotated field to PgSQL.
  ///
  /// Must be a top-level or static [Function] or a constructor that accepts one
  /// positional argument compatible with the field being serialized that
  /// returns a PgSQL-compatible value.
  ///
  /// When creating a class that supports both `toPgSql` and `fromPgSql`
  /// (the default behavior), it is recommended to also set [fromPgSql] if
  /// [toPgSql] is set. Values returned by [toPgSql] should "round-trip" through
  /// [fromPgSql].
  final Function? toPgSql;

  /// The value to use for an enum field when the provided value does not match
  /// any of the values in the source enum.
  ///
  /// Valid only on enum fields with a compatible enum value.
  ///
  /// To use `null` for unknown values, use [PgSqlKey.nullForUndefinedEnumValue].
  /// This is only valid for nullable enum fields.
  final Enum? unknownEnumValue;

  /// Creates a new [PgSqlKey] instance.
  ///
  /// Use this constructor when the default behavior is not desired.
  const PgSqlKey({
    @Deprecated('Has no effect') bool? nullable,
    this.defaultValue,
    this.disallowNullValue,
    this.fromPgSql,
    @Deprecated(
      'Use `includeFromPgSql` and `includeToPgSql` with a value of `false` '
      'instead.',
    )
    this.ignore,
    this.includeFromPgSql,
    this.includeIfNull,
    this.includeToPgSql,
    this.name,
    this.readValue,
    this.required,
    this.toPgSql,
    this.unknownEnumValue,
  });

  /// Sentinel value for use with [unknownEnumValue].
  ///
  /// Read the documentation on [unknownEnumValue] for more details.
  static const Enum nullForUndefinedEnumValue = _NullAsDefault.value;
}

enum _NullAsDefault { value }
