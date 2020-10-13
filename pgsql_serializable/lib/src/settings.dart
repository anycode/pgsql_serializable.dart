// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

import 'type_helper.dart';
import 'type_helpers/big_int_helper.dart';
import 'type_helpers/convert_helper.dart';
import 'type_helpers/date_time_helper.dart';
import 'type_helpers/duration_helper.dart';
import 'type_helpers/enum_helper.dart';
import 'type_helpers/generic_factory_helper.dart';
import 'type_helpers/iterable_helper.dart';
import 'type_helpers/pgsql_converter_helper.dart';
import 'type_helpers/pgsql_helper.dart';
import 'type_helpers/map_helper.dart';
import 'type_helpers/uri_helper.dart';
import 'type_helpers/value_helper.dart';

class Settings {
  static const _coreHelpers = <TypeHelper>[
    IterableHelper(),
    MapHelper(),
    EnumHelper(),
    ValueHelper(),
  ];

  static const defaultHelpers = <TypeHelper>[
    BigIntHelper(),
    DateTimeHelper(),
    DurationHelper(),
    PgSqlHelper(),
    UriHelper(),
  ];

  final List<TypeHelper> _typeHelpers;

  Iterable<TypeHelper> get allHelpers => const <TypeHelper>[
        ConvertHelper(),
        PgSqlConverterHelper(),
        GenericFactoryHelper(),
      ].followedBy(_typeHelpers).followedBy(_coreHelpers);

  final PgSqlSerializable _config;

  PgSqlSerializable get config => _config.withDefaults();

  /// Creates an instance of [Settings].
  ///
  /// If [typeHelpers] is not provided, the built-in helpers are used:
  /// [BigIntHelper], [DateTimeHelper], [DurationHelper], [PgSqlHelper], and
  /// [UriHelper].
  const Settings({
    PgSqlSerializable config,
    List<TypeHelper> typeHelpers,
  })  : _config = config ?? PgSqlSerializable.defaults,
        _typeHelpers = typeHelpers ?? defaultHelpers;

  /// Creates an instance of [Settings].
  ///
  /// [typeHelpers] provides a set of [TypeHelper] that will be used along with
  /// the built-in helpers:
  /// [BigIntHelper], [DateTimeHelper], [DurationHelper], [PgSqlHelper], and
  /// [UriHelper].
  factory Settings.withDefaultHelpers(
    Iterable<TypeHelper> typeHelpers, {
    PgSqlSerializable config,
  }) =>
      Settings(
        config: config,
        typeHelpers: List.unmodifiable(typeHelpers.followedBy(defaultHelpers)),
      );
}
