// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars

part of 'example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map<String, dynamic> pgsql) => Person(
      firstName: pgsql['firstName'] as String,
      lastName: pgsql['lastName'] as String,
      dateOfBirth: pgsql['dateOfBirth'] == null
          ? null
          : DateTime.parse(pgsql['dateOfBirth'] as String),
    );

Map<String, dynamic> _$PersonToPgSql(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
    };
