// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldGenerate(r'''
SubType _$SubTypeFromPgSql(Map<String, dynamic> pgsql) =>
    SubType(
        (pgsql['subTypeViaCtor'] as num).toInt(),
        (pgsql['super-final-field'] as num).toInt(),
      )
      ..superReadWriteField = (pgsql['superReadWriteField'] as num?)?.toInt()
      ..subTypeReadWrite = (pgsql['subTypeReadWrite'] as num).toInt();

Map<String, dynamic> _$SubTypeToPgSql(SubType instance) => <String, dynamic>{
  'super-final-field': instance.superFinalField,
  'superReadWriteField': ?instance.superReadWriteField,
  'subTypeViaCtor': instance.subTypeViaCtor,
  'subTypeReadWrite': instance.subTypeReadWrite,
};
''')
@PgSqlSerializable()
class SubType extends SuperType {
  late final int subTypeViaCtor;
  late int subTypeReadWrite;

  SubType(this.subTypeViaCtor, int superFinalField) : super(superFinalField);
}

// NOTE: `SuperType` is intentionally after `SubType` in the source file to
// validate field ordering semantics.
class SuperType {
  @PgSqlKey(name: 'super-final-field')
  final int? superFinalField;

  @PgSqlKey(includeIfNull: false)
  int? superReadWriteField;

  SuperType(this.superFinalField);

  /// Add a property to try to throw-off the generator
  /// Since `priceHalf` is final and not in the constructor, it will be excluded
  int get priceHalf => priceFraction(2);

  /// Add a method to try to throw-off the generator
  int priceFraction(int other) => superFinalField! ~/ other;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$SubTypeWithAnnotatedFieldOverrideExtendsToPgSql(
  SubTypeWithAnnotatedFieldOverrideExtends instance,
) => <String, dynamic>{
  'super-final-field': instance.superFinalField,
  'superReadWriteField': ?instance.superReadWriteField,
  'priceHalf': instance.priceHalf,
};
''')
@PgSqlSerializable(createFactory: false)
class SubTypeWithAnnotatedFieldOverrideExtends extends SuperType {
  SubTypeWithAnnotatedFieldOverrideExtends(int super.superTypeViaCtor);
}

@ShouldGenerate(r'''
Map<String, dynamic>
_$SubTypeWithAnnotatedFieldOverrideExtendsWithOverridesToPgSql(
  SubTypeWithAnnotatedFieldOverrideExtendsWithOverrides instance,
) => <String, dynamic>{
  'priceHalf': instance.priceHalf,
  'superReadWriteField': instance.superReadWriteField,
  'super-final-field': instance.superFinalField,
};
''')
@PgSqlSerializable(createFactory: false)
class SubTypeWithAnnotatedFieldOverrideExtendsWithOverrides extends SuperType {
  SubTypeWithAnnotatedFieldOverrideExtendsWithOverrides(
    int super.superTypeViaCtor,
  );

  /// The annotation applied here overrides the annotation in [SuperType].
  @PgSqlKey(includeIfNull: true)
  @override
  int? get superReadWriteField => super.superReadWriteField;

  @override
  set superReadWriteField(int? value) {
    super.superReadWriteField = value;
  }

  /// The order is picked up by this override, but the annotation is still
  /// applied from [SuperType].
  @override
  int? get superFinalField => super.superFinalField;
}

@ShouldGenerate(r'''
Map<String, dynamic> _$SubTypeWithAnnotatedFieldOverrideImplementsToPgSql(
  SubTypeWithAnnotatedFieldOverrideImplements instance,
) => <String, dynamic>{
  'superReadWriteField': instance.superReadWriteField,
  'superFinalField': instance.superFinalField,
};
''')
@PgSqlSerializable(createFactory: false)
class SubTypeWithAnnotatedFieldOverrideImplements implements SuperType {
  // Note the order of fields in the output is determined by this class
  @override
  int? superReadWriteField;

  @PgSqlKey(includeToPgSql: false, includeFromPgSql: false)
  @override
  int get priceHalf => 42;

  /// Since the relationship is `implements` no [PgSqlKey] values from
  /// [SuperType] are honored.
  @override
  int get superFinalField => 42;

  @override
  int priceFraction(int other) => other;
}
