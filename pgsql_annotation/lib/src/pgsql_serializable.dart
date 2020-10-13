// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'allowed_keys_helpers.dart';
import 'checked_helpers.dart';
import 'pgsql_key.dart';

part 'pgsql_serializable.g.dart';

/// Values for the automatic field renaming behavior for [PgSqlSerializable].
enum FieldRename {
  /// Use the field name without changes.
  none,

  /// Encodes a field named `kebabCase` with a pgsql key `kebab-case`.
  kebab,

  /// Encodes a field named `snakeCase` with a pgsql key `snake_case`.
  snake,

  /// Encodes a field named `pascalCase` with a pgsql key `PascalCase`.
  pascal
}

/// An annotation used to specify a class to generate code for.
@PgSqlSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
  fieldRename: FieldRename.snake,
)
class PgSqlSerializable {
  /// If `true`, [Map] types are *not* assumed to be [Map<String, dynamic>]
  /// – which is the default type of [Map] instances return by pgsql decode in
  /// `dart:convert`.
  ///
  /// This will increase the code size, but allows [Map] types returned
  /// from other sources, such as `package:yaml`.
  ///
  /// *Note: in many cases the key values are still assumed to be [String]*.
  final bool anyMap;

  /// If `true`, generated `FromPgSql` functions include extra checks to validate
  /// proper deserialization of types.
  ///
  /// If an exception is thrown during deserialization, a
  /// [CheckedFromPgSqlException] is thrown.
  final bool checked;

  /// If `true` (the default), a private, static `_$ExampleFromPgSql` method
  /// is created in the generated part file.
  ///
  /// Call this method from a factory constructor added to the source class:
  ///
  /// ```dart
  /// @pgsqlSerializable()
  /// class Example {
  ///   // ...
  ///   factory Example.FromPgSql(Map<String, dynamic> pgsql) =>
  ///     _$ExampleFromPgSql(pgsql);
  /// }
  /// ```
  final bool createFactory;

  /// If `true` (the default), A top-level function is created that you can
  /// reference from your class.
  ///
  /// ```dart
  /// @pgsqlSerializable()
  /// class Example {
  ///   Map<String, dynamic> ToPgSql() => _$ExampleToPgSql(this);
  /// }
  /// ```
  final bool createToPgSql;

  /// If `false` (the default), then the generated `FromPgSql` function will
  /// ignore unrecognized keys in the provided pgsql [Map].
  ///
  /// If `true`, unrecognized keys will cause an [UnrecognizedKeysException] to
  /// be thrown.
  final bool disallowUnrecognizedKeys;

  /// If `true`, generated `ToPgSql` methods will explicitly call `ToPgSql` on
  /// nested objects.
  ///
  /// When using pgsql encoding support in `dart:convert`, `ToPgSql` is
  /// automatically called on objects, so the default behavior
  /// (`explicitToPgSql: false`) is to omit the `ToPgSql` call.
  ///
  /// Example of `explicitToPgSql: false` (default)
  ///
  /// ```dart
  /// Map<String, dynamic> ToPgSql() => {'child': child};
  /// ```
  ///
  /// Example of `explicitToPgSql: true`
  ///
  /// ```dart
  /// Map<String, dynamic> ToPgSql() => {'child': child?.ToPgSql()};
  /// ```
  final bool explicitToPgSql;

  /// Defines the automatic naming strategy when converting class field names
  /// into pgsql map keys.
  ///
  /// With a value [FieldRename.none] (the default), the name of the field is
  /// used without modification.
  ///
  /// See [FieldRename] for details on the other options.
  ///
  /// Note: the value for [PgSqlKey.name] takes precedence over this option for
  /// fields annotated with [PgSqlKey].
  final FieldRename fieldRename;

  /// When `true` on classes with type parameters (generic types), extra
  /// "helper" parameters will be generated for `FromPgSql` and/or `ToPgSql` to
  /// support serializing values of those types.
  ///
  /// For example, the generated code for
  ///
  /// ```dart
  /// @pgsqlSerializable(genericArgumentFactories: true)
  /// class Response<T> {
  ///   int status;
  ///   T value;
  /// }
  /// ```
  ///
  /// Looks like
  ///
  /// ```dart
  /// Response<T> _$ResponseFromPgSql<T>(
  ///   Map<String, dynamic> pgsql,
  ///   T Function(Object pgsql) FromPgSqlT,
  /// ) {
  ///   return Response<T>()
  ///     ..status = pgsql['status'] as int
  ///     ..value = FromPgSqlT(pgsql['value']);
  /// }
  ///
  /// Map<String, dynamic> _$ResponseToPgSql<T>(
  ///   Response<T> instance,
  ///   Object Function(T value) ToPgSqlT,
  /// ) =>
  ///     <String, dynamic>{
  ///       'status': instance.status,
  ///       'value': ToPgSqlT(instance.value),
  ///     };
  /// ```
  ///
  /// Notes:
  ///
  /// 1. This option has no effect on classes without type parameters.
  ///    If used on such a class, a warning is echoed in the build log.
  /// 1. If this option is set for all classes in a package via `build.yaml`
  ///    it is only applied to classes with type parameters – so no warning is
  ///    echoed.
  final bool genericArgumentFactories;

  /// When `true`, only fields annotated with [PgSqlKey] will have code
  /// generated.
  ///
  /// It will have the same effect as if those fields had been annotated with
  /// `@pgsqlKey(ignore: true)`.
  final bool ignoreUnannotated;

  /// Whether the generator should include fields with `null` values in the
  /// serialized output.
  ///
  /// If `true` (the default), all fields are written to pgsql, even if they are
  /// `null`.
  ///
  /// If a field is annotated with `pgsqlKey` with a non-`null` value for
  /// `includeIfNull`, that value takes precedent.
  final bool includeIfNull;

  /// When `true` (the default), `null` fields are handled gracefully when
  /// encoding to pgsql and when decoding `null` and nonexistent values from
  /// pgsql.
  ///
  /// Setting to `false` eliminates `null` verification in the generated code,
  /// which reduces the code size. Errors may be thrown at runtime if `null`
  /// values are encountered, but the original class should also implement
  /// `null` runtime validation if it's critical.
  final bool nullable;

  /// Creates a new [PgSqlSerializable] instance.
  const PgSqlSerializable({
    this.anyMap,
    this.checked,
    this.createFactory,
    this.createToPgSql,
    this.disallowUnrecognizedKeys,
    this.explicitToPgSql,
    this.fieldRename,
    this.ignoreUnannotated,
    this.includeIfNull,
    this.nullable,
    this.genericArgumentFactories,
  });

  factory PgSqlSerializable.fromPgSql(Map<String, dynamic> pgsql) =>
      _$PgSqlSerializableFromPgSql(pgsql);

  /// An instance of [PgSqlSerializable] with all fields set to their default
  /// values.
  static const defaults = PgSqlSerializable(
    anyMap: false,
    checked: false,
    createFactory: true,
    createToPgSql: true,
    disallowUnrecognizedKeys: false,
    explicitToPgSql: false,
    fieldRename: FieldRename.none,
    ignoreUnannotated: false,
    includeIfNull: true,
    nullable: true,
    genericArgumentFactories: false,
  );

  /// Returns a new [PgSqlSerializable] instance with fields equal to the
  /// corresponding values in `this`, if not `null`.
  ///
  /// Otherwise, the returned value has the default value as defined in
  /// [defaults].
  PgSqlSerializable withDefaults() => PgSqlSerializable(
        anyMap: anyMap ?? defaults.anyMap,
        checked: checked ?? defaults.checked,
        createFactory: createFactory ?? defaults.createFactory,
        createToPgSql: createToPgSql ?? defaults.createToPgSql,
        disallowUnrecognizedKeys:
            disallowUnrecognizedKeys ?? defaults.disallowUnrecognizedKeys,
        explicitToPgSql: explicitToPgSql ?? defaults.explicitToPgSql,
        fieldRename: fieldRename ?? defaults.fieldRename,
        ignoreUnannotated: ignoreUnannotated ?? defaults.ignoreUnannotated,
        includeIfNull: includeIfNull ?? defaults.includeIfNull,
        nullable: nullable ?? defaults.nullable,
        genericArgumentFactories:
            genericArgumentFactories ?? defaults.genericArgumentFactories,
      );

  Map<String, dynamic> toPgSql() => _$PgSqlSerializableToPgSql(this);
}
