// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

// https://github.com/anycode/pgsql_serializable.dart/issues/1437
@ShouldGenerate(
  r'''
CtorParamPgSqlKey _$CtorParamPgSqlKeyFromPgSql(Map<String, dynamic> pgsql) =>
    CtorParamPgSqlKey(
      attributeOne: pgsql['first'] as String,
      attributeTwo: pgsql['second'] as String,
    );

Map<String, dynamic> _$CtorParamPgSqlKeyToPgSql(CtorParamPgSqlKey instance) =>
    <String, dynamic>{
      'first': instance.attributeOne,
      'second': instance.attributeTwo,
    };
''',
  expectedLogItems: [
    'Field `attributeOne` has conflicting `PgSqlKey.name` annotations: both '
        'constructor parameter and class field have this annotation. Using '
        'constructor parameter value.',
  ],
)
@PgSqlSerializable()
class CtorParamPgSqlKey {
  CtorParamPgSqlKey({
    @PgSqlKey(name: 'first') required this.attributeOne,
    @PgSqlKey(name: 'second') required this.attributeTwo,
  });

  @PgSqlKey(name: 'fake_first')
  final String attributeOne;

  // Duplicate annotation with exact same value does not give a warning.
  @PgSqlKey(name: 'second')
  final String attributeTwo;
}

@ShouldGenerate(
  r'''
CtorParamPgSqlKeyWithExtends _$CtorParamPgSqlKeyWithExtendsFromPgSql(
  Map<String, dynamic> pgsql,
) => CtorParamPgSqlKeyWithExtends(
  attributeOne: pgsql['fake_first'] as String,
  attributeTwo: pgsql['two'] as String,
);

Map<String, dynamic> _$CtorParamPgSqlKeyWithExtendsToPgSql(
  CtorParamPgSqlKeyWithExtends instance,
) => <String, dynamic>{
  'fake_first': instance.attributeOne,
  'two': instance.attributeTwo,
};
''',
  expectedLogItems: [
    'Field `attributeTwo` has conflicting `PgSqlKey.name` annotations: both '
        'constructor parameter and class field have this annotation. Using '
        'constructor parameter value.',
  ],
)
@PgSqlSerializable()
class CtorParamPgSqlKeyWithExtends extends CtorParamPgSqlKey {
  CtorParamPgSqlKeyWithExtends({
    required super.attributeOne,
    @PgSqlKey(name: 'two') required super.attributeTwo,
  });
}
