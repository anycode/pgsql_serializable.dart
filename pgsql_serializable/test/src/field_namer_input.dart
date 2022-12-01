part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerNoneToPgSql(FieldNamerNone instance) =>
    <String, dynamic>{
      'theField': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@PgSqlSerializable(fieldRename: FieldRename.none, createFactory: false)
class FieldNamerNone {
  late String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerKebabToPgSql(FieldNamerKebab instance) =>
    <String, dynamic>{
      'the-field': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@PgSqlSerializable(fieldRename: FieldRename.kebab, createFactory: false)
class FieldNamerKebab {
  late String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerPascalToPgSql(FieldNamerPascal instance) =>
    <String, dynamic>{
      'TheField': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@PgSqlSerializable(fieldRename: FieldRename.pascal, createFactory: false)
class FieldNamerPascal {
  late String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerSnakeToPgSql(FieldNamerSnake instance) =>
    <String, dynamic>{
      'the_field': instance.theField,
      'NAME_OVERRIDE': instance.nameOverride,
    };
''')
@PgSqlSerializable(fieldRename: FieldRename.snake, createFactory: false)
class FieldNamerSnake {
  late String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  late String nameOverride;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$FieldNamerScreamingSnakeToPgSql(
        FieldNamerScreamingSnake instance) =>
    <String, dynamic>{
      'THE_FIELD': instance.theField,
      'nameOverride': instance.nameOverride,
    };
''')
@PgSqlSerializable(fieldRename: FieldRename.screamingSnake, createFactory: false)
class FieldNamerScreamingSnake {
  late String theField;

  @PgSqlKey(name: 'nameOverride')
  late String nameOverride;
}
