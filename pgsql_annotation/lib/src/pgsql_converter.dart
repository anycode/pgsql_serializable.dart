// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Implement this class to provide custom converters for a specific [Type].
///
/// [T] is the data type you'd like to convert to and from.
///
/// [S] is the type of the value stored in PgSQL. It must be a valid PgSQL type
/// such as [String], [int], or [Map<String, dynamic>].
///
///
/// [PgSqlConverter]s can be placed either on the class:
///
/// ```dart
/// class MyPgSqlConverter extends PgSqlConverter<Value, PgSQL> {
///   // TODO
/// }
///
/// @PgSqlSerializable()
/// @MyPgSqlConverter()
/// class Example {
///   final Value property;
/// }
/// ```
///
/// or on a property:
///
/// ```dart
/// @PgSqlSerializable()
/// class Example {
///   @MyPgSqlConverter()
///   final Value property;
/// }
/// ```
///
/// Or finally, passed to the `@PgSqlSerializable` annotation:
///
/// ```dart
/// @PgSqlSerializable(converters: [MyPgSqlConverter()])
/// class Example {
///   final Value property;
/// }
/// ```
abstract class PgSqlConverter<T, S> {
  const PgSqlConverter();

  T fromPgSql(S pgsql);
  S toPgSql(T object);
}
