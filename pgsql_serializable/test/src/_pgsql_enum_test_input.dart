// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:source_gen_test/annotations.dart';

@ShouldThrow('`@PgSqlEnum` can only be used on enum elements.')
@PgSqlEnum() // ignore: invalid_annotation_target
class UnsupportedClass {}
