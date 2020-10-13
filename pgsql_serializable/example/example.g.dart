// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map<String, dynamic> pgsql) {
  return Person(
    firstName: pgsql['firstName'] as String,
    lastName: pgsql['lastName'] as String,
    dateOfBirth: DateTime.parse(pgsql['dateOfBirth'] as String),
  );
}

Map<String, dynamic> _$PersonToPgSql(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
    };
