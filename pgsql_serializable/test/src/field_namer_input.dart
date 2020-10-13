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
  String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  String nameOverride;
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
  String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  String nameOverride;
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
  String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  String nameOverride;
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
  String theField;

  @PgSqlKey(name: 'NAME_OVERRIDE')
  String nameOverride;
}
