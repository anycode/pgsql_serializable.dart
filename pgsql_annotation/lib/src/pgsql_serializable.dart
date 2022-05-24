// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta_meta.dart';

import 'allowed_keys_helpers.dart';
import 'checked_helpers.dart';
import 'pgsql_converter.dart';
import 'pgsql_key.dart';

part 'pgsql_serializable.g.dart';

/// Values for the automatic field renaming behavior for [PgSqlSerializable].
enum FieldRename {
  /// Use the field name without changes.
  none,

  /// Encodes a field named `kebabCase` with a PgSQL key `kebab-case`.
  kebab,

  /// Encodes a field named `snakeCase` with a PgSQL key `snake_case`.
  snake,

  /// Encodes a field named `pascalCase` with a PgSQL key `PascalCase`.
  pascal,

  /// Encodes a field named `screamingSnakeCase` with a PgSQL key
  /// `SCREAMING_SNAKE_CASE`
  screamingSnake,
}

/// An annotation used to specify a class to generate code for.
@PgSqlSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
  fieldRename: FieldRename.snake,
)
@Target({TargetKind.classType})
class PgSqlSerializable {
  /// If `true`, [Map] types are *not* assumed to be [Map<String, dynamic>]
  /// – which is the default type of [Map] instances return by PgSQL decode in
  /// `dart:convert`.
  ///
  /// This will increase the code size, but allows [Map] types returned
  /// from other sources, such as `package:yaml`.
  ///
  /// *Note: in many cases the key values are still assumed to be [String]*.
  final bool? anyMap;

  /// If `true`, generated `fromPgSql` functions include extra checks to validate
  /// proper deserialization of types.
  ///
  /// If an exception is thrown during deserialization, a
  /// [CheckedFromPgSqlException] is thrown.
  final bool? checked;

  /// Specifies a named constructor to target when creating the `fromPgSql`
  /// function.
  ///
  /// If the value is not set or an empty [String], the default constructor
  /// is used.
  ///
  /// This setting has no effect if [createFactory] is `false`.
  final String? constructor;

  /// If `true` (the default), a private, static `_$ExampleFromPgSql` method
  /// is created in the generated part file.
  ///
  /// Call this method from a factory constructor added to the source class:
  ///
  /// ```dart
  /// @PgSqlSerializable()
  /// class Example {
  ///   // ...
  ///   factory Example.fromPgSql(Map<String, dynamic> pgsql) =>
  ///     _$ExampleFromPgSql(pgsql);
  /// }
  /// ```
  final bool? createFactory;

  /// If `true` (the default), A top-level function is created that you can
  /// reference from your class.
  ///
  /// ```dart
  /// @PgSqlSerializable()
  /// class Example {
  ///   Map<String, dynamic> toPgSql() => _$ExampleToPgSql(this);
  /// }
  /// ```
  final bool? createToPgSql;

  /// If `false` (the default), then the generated `FromPgSql` function will
  /// ignore unrecognized keys in the provided PgSQL [Map].
  ///
  /// If `true`, unrecognized keys will cause an [UnrecognizedKeysException] to
  /// be thrown.
  final bool? disallowUnrecognizedKeys;

  /// If `true`, generated `toPgSql` methods will explicitly call `toPgSql` on
  /// nested objects.
  ///
  /// When using PgSQL encoding support in `dart:convert`, `toPgSql` is
  /// automatically called on objects, so the default behavior
  /// (`explicitToPgSql: false`) is to omit the `toPgSql` call.
  ///
  /// Example of `explicitToPgSql: false` (default)
  ///
  /// ```dart
  /// Map<String, dynamic> toPgSql() => {'child': child};
  /// ```
  ///
  /// Example of `explicitToPgSql: true`
  ///
  /// ```dart
  /// Map<String, dynamic> toPgSql() => {'child': child?.toPgSql()};
  /// ```
  final bool? explicitToPgSql;

  /// Defines the automatic naming strategy when converting class field names
  /// into PgSQL map keys.
  ///
  /// With a value [FieldRename.none] (the default), the name of the field is
  /// used without modification.
  ///
  /// See [FieldRename] for details on the other options.
  ///
  /// Note: the value for [PgSqlKey.name] takes precedence over this option for
  /// fields annotated with [PgSqlKey].
  final FieldRename? fieldRename;

  /// When `true` on classes with type parameters (generic types), extra
  /// "helper" parameters will be generated for `fromPgSql` and/or `toPgSql` to
  /// support serializing values of those types.
  ///
  /// For example, the generated code for
  ///
  /// ```dart
  /// @PgSqlSerializable(genericArgumentFactories: true)
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
  ///   T Function(Object pgsql) fromPgSqlT,
  /// ) {
  ///   return Response<T>()
  ///     ..status = pgsql['status'] as int
  ///     ..value = fromPgSqlT(pgsql['value']);
  /// }
  ///
  /// Map<String, dynamic> _$ResponseToPgSql<T>(
  ///   Response<T> instance,
  ///   Object Function(T value) toPgSqlT,
  /// ) =>
  ///     <String, dynamic>{
  ///       'status': instance.status,
  ///       'value': toPgSqlT(instance.value),
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
  final bool? genericArgumentFactories;

  /// When `true`, only fields annotated with [PgSqlKey] will have code
  /// generated.
  ///
  /// It will have the same effect as if those fields had been annotated with
  /// `@PgSqlKey(ignore: true)`.
  final bool? ignoreUnannotated;

  /// Whether the generator should include fields with `null` values in the
  /// serialized output.
  ///
  /// If `true` (the default), all fields are written to PgSQL, even if they are
  /// `null`.
  ///
  /// If a field is annotated with `PgSqlKey` with a non-`null` value for
  /// `includeIfNull`, that value takes precedent.
  final bool? includeIfNull;

  /// A list of [PgSqlConverter] to apply to this class.
  ///
  /// Writing:
  ///
  /// ```dart
  /// @PgSqlSerializable(converters: [MyPgSqlConverter()])
  /// class Example {...}
  /// ```
  ///
  /// is equivalent to writing:
  ///
  /// ```dart
  /// @PgSqlSerializable()
  /// @MyPgSqlConverter()
  /// class Example {...}
  /// ```
  ///
  /// The main difference is that this allows reusing a custom
  /// [PgSqlSerializable] over multiple classes:
  ///
  /// ```dart
  /// const myCustomAnnotation = PgSqlSerializable(
  ///   converters: [MyPgSqlConverter()],
  /// );
  ///
  /// @myCustomAnnotation
  /// class Example {...}
  ///
  /// @myCustomAnnotation
  /// class Another {...}
  /// ```
  @PgSqlKey(ignore: true)
  final List<PgSqlConverter>? converters;

  /// Creates a new [PgSqlSerializable] instance.
  const PgSqlSerializable({
    @Deprecated('Has no effect') bool? nullable,
    this.anyMap,
    this.checked,
    this.constructor,
    this.createFactory,
    this.createToPgSql,
    this.disallowUnrecognizedKeys,
    this.explicitToPgSql,
    this.fieldRename,
    this.ignoreUnannotated,
    this.includeIfNull,
    this.converters,
    this.genericArgumentFactories,
  });

  factory PgSqlSerializable.fromPgSql(Map<String, dynamic> pgsql) =>
      _$PgSqlSerializableFromPgSql(pgsql);

  /// An instance of [PgSqlSerializable] with all fields set to their default
  /// values.
  @Deprecated('Was only ever included to support builder infrastructure.')
  static const defaults = PgSqlSerializable(
    anyMap: false,
    checked: false,
    constructor: '',
    createFactory: true,
    createToPgSql: true,
    disallowUnrecognizedKeys: false,
    explicitToPgSql: false,
    fieldRename: FieldRename.none,
    ignoreUnannotated: false,
    includeIfNull: true,
    genericArgumentFactories: false,
  );

  /// Returns a new [PgSqlSerializable] instance with fields equal to the
  /// corresponding values in `this`, if not `null`.
  ///
  /// Otherwise, the returned value has the default value as defined in
  /// [defaults].
  @Deprecated('Was only ever included to support builder infrastructure.')
  PgSqlSerializable withDefaults() => PgSqlSerializable(
        anyMap: anyMap ?? defaults.anyMap,
        checked: checked ?? defaults.checked,
        constructor: constructor ?? defaults.constructor,
        createFactory: createFactory ?? defaults.createFactory,
        createToPgSql: createToPgSql ?? defaults.createToPgSql,
        disallowUnrecognizedKeys:
            disallowUnrecognizedKeys ?? defaults.disallowUnrecognizedKeys,
        explicitToPgSql: explicitToPgSql ?? defaults.explicitToPgSql,
        fieldRename: fieldRename ?? defaults.fieldRename,
        ignoreUnannotated: ignoreUnannotated ?? defaults.ignoreUnannotated,
        includeIfNull: includeIfNull ?? defaults.includeIfNull,
        genericArgumentFactories:
            genericArgumentFactories ?? defaults.genericArgumentFactories,
      );

  Map<String, dynamic> toPgSql() => _$PgSqlSerializableToPgSql(this);
}
