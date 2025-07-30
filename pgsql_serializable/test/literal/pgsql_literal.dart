// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
part 'pgsql_literal.g.dart';

@PgSqlLiteral('pgsql_literal.pgsql')
List get data => _$dataPgSqlLiteral;

@PgSqlLiteral('pgsql_literal.pgsql', asConst: true)
List get asConst => _$asConstPgSqlLiteral;

/// From https://github.com/minimaxir/big-list-of-naughty-strings
/// blns.pgsql @ 96f50492b278aeb2bfa40c4acbdbf6311312bf30
@PgSqlLiteral('big-list-of-naughty-strings.pgsql', asConst: true)
List get naughtyStrings => _$naughtyStringsPgSqlLiteral;
