// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// An annotation used to generate a private field containing the contents of a
/// pgsql file.
///
/// The annotation can be applied to any member, but usually it's applied to
/// top-level getter.
///
/// In this example, the pgsql content of `data.pgsql` is populated into a
/// top-level, final field `_$glossaryDatapgsqlLiteral` in the generated file.
///
/// ```dart
/// @pgsqlLiteral('data.pgsql')
/// Map get glossaryData => _$glossaryDatapgsqlLiteral;
/// ```
class PgSqlLiteral {
  /// The relative path from the Dart file with the annotation to the file
  /// containing the source pgsql.
  final String path;

  /// `true` if the pgsql literal should be written as a constant.
  final bool asConst;

  /// Creates a new [PgSqlLiteral] instance.
  const PgSqlLiteral(this.path, {bool asConst = false})
      : asConst = asConst ?? false;
}
