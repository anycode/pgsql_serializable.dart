// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal, inference_failure_on_function_invocation, inference_failure_on_collection_literal

part of 'create_per_field_to_pgsql_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Model _$ModelFromPgSql(Map<String, dynamic> pgsql) => Model(
  firstName: pgsql['firstName'] as String,
  lastName: pgsql['lastName'] as String,
  enumValue: $enumDecodeNullable(_$EnumValueEnumMap, pgsql['enumValue']),
  nested: pgsql['nested'] == null
      ? null
      : Nested.fromPgSql(pgsql['nested'] as Map<String, dynamic>),
  nestedExcludeIfNull: pgsql['nestedExcludeIfNull'] == null
      ? null
      : Nested.fromPgSql(pgsql['nestedExcludeIfNull'] as Map<String, dynamic>),
  nestedGeneric: pgsql['nestedGeneric'] == null
      ? null
      : GenericFactory<int>.fromPgSql(
          pgsql['nestedGeneric'] as Map<String, dynamic>,
          (value) => (value as num).toInt(),
        ),
);

// ignore: unused_element
abstract class _$ModelPerFieldToPgSql {
  // ignore: unused_element
  static Object? firstName(String instance) => instance;
  // ignore: unused_element
  static Object? lastName(String instance) => instance;
  // ignore: unused_element
  static Object? enumValue(EnumValue? instance) => _$EnumValueEnumMap[instance];
  // ignore: unused_element
  static Object? nested(Nested? instance) => instance?.toPgSql();
  // ignore: unused_element
  static Object? nestedGeneric(GenericFactory<int>? instance) =>
      instance?.toPgSql((value) => value);
  // ignore: unused_element
  static Object? nestedExcludeIfNull(Nested? instance) => instance?.toPgSql();
}

Map<String, dynamic> _$ModelToPgSql(Model instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'enumValue': _$EnumValueEnumMap[instance.enumValue],
  'nested': instance.nested?.toPgSql(),
  'nestedGeneric': instance.nestedGeneric?.toPgSql((value) => value),
  'nestedExcludeIfNull': ?instance.nestedExcludeIfNull?.toPgSql(),
};

const _$EnumValueEnumMap = {EnumValue.first: '1', EnumValue.second: 'second'};

Nested _$NestedFromPgSql(Map<String, dynamic> pgsql) =>
    Nested(pgsql['value'] as String);

Map<String, dynamic> _$NestedToPgSql(Nested instance) => <String, dynamic>{
  'value': instance.value,
};

GenericFactory<T> _$GenericFactoryFromPgSql<T>(
  Map<String, dynamic> pgsql,
  T Function(Object? pgsql) fromPgSqlT,
) => GenericFactory<T>(
  fromPgSqlT(pgsql['value']),
  (pgsql['map'] as Map<String, dynamic>).map(
    (k, e) => MapEntry(k, fromPgSqlT(e)),
  ),
);

// ignore: unused_element
abstract class _$GenericFactoryPerFieldToPgSql {
  // ignore: unused_element
  static Object? value<T>(T instance, Object? Function(T value) toPgSqlT) =>
      toPgSqlT(instance);
  // ignore: unused_element
  static Object? map<T>(
    Map<String, T> instance,
    Object? Function(T value) toPgSqlT,
  ) => instance.map((k, e) => MapEntry(k, toPgSqlT(e)));
}

Map<String, dynamic> _$GenericFactoryToPgSql<T>(
  GenericFactory<T> instance,
  Object? Function(T value) toPgSqlT,
) => <String, dynamic>{
  'value': toPgSqlT(instance.value),
  'map': instance.map.map((k, e) => MapEntry(k, toPgSqlT(e))),
};

// ignore: unused_element
abstract class _$PrivateModelPerFieldToPgSql {
  // ignore: unused_element
  static Object? fullName(String instance) => instance;
}

Map<String, dynamic> _$PrivateModelToPgSql(_PrivateModel instance) =>
    <String, dynamic>{'full-name': instance.fullName};
