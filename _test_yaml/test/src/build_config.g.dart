// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'build_config.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Config _$ConfigFromPgSql(Map pgsql) {
  return $checkedNew('Config', pgsql, () {
    $checkKeys(pgsql, requiredKeys: const ['builders']);
    final val = Config(
      builders: $checkedConvert(
          pgsql,
          'builders',
          (v) => (v as Map).map(
                (k, e) => MapEntry(k as String, Builder.fromPgSql(e as Map)),
              )),
    );
    $checkedConvert(
        pgsql,
        'weights',
        (v) => val.weights = (v as Map?)?.map(
              (k, e) => MapEntry(_$enumDecode(_$AutoApplyEnumMap, k), e as int),
            ));
    return val;
  });
}

Map<String, dynamic> _$ConfigToPgSql(Config instance) => <String, dynamic>{
      'builders': instance.builders,
      'weights':
          instance.weights?.map((k, e) => MapEntry(_$AutoApplyEnumMap[k], e)),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$AutoApplyEnumMap = {
  AutoApply.none: 'none',
  AutoApply.dependents: 'dependents',
  AutoApply.allPackages: 'all_packages',
  AutoApply.rootPackage: 'root_package',
};

Builder _$BuilderFromPgSql(Map pgsql) {
  return $checkedNew('Builder', pgsql, () {
    $checkKeys(pgsql, allowedKeys: const [
      'target',
      'import',
      'is_optional',
      'configLocation',
      'auto_apply',
      'build_to',
      'defaultEnumTest',
      'builder_factories',
      'applies_builders',
      'required_inputs',
      'build_extensions'
    ], disallowNullValues: const [
      'configLocation',
      'auto_apply'
    ]);
    final val = Builder(
      import: $checkedConvert(pgsql, 'import', (v) => v as String),
      target: $checkedConvert(pgsql, 'target', (v) => v as String?),
      isOptional: $checkedConvert(pgsql, 'is_optional', (v) => v as bool?),
      autoApply: $checkedConvert(pgsql, 'auto_apply',
          (v) => _$enumDecodeNullable(_$AutoApplyEnumMap, v)),
      buildTo: $checkedConvert(
          pgsql, 'build_to', (v) => _$enumDecodeNullable(_$BuildToEnumMap, v)),
      defaultEnumTest: $checkedConvert(pgsql, 'defaultEnumTest',
          (v) => _$enumDecodeNullable(_$AutoApplyEnumMap, v)),
      builderFactories: $checkedConvert(pgsql, 'builder_factories',
          (v) => (v as List<dynamic>).map((e) => e as String).toList()),
      appliesBuilders: $checkedConvert(pgsql, 'applies_builders',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
      requiredInputs: $checkedConvert(pgsql, 'required_inputs',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
      buildExtensions: $checkedConvert(
          pgsql,
          'build_extensions',
          (v) => (v as Map?)?.map(
                (k, e) => MapEntry(k as String,
                    (e as List<dynamic>).map((e) => e as String).toList()),
              )),
      configLocation: $checkedConvert(pgsql, 'configLocation',
          (v) => v == null ? null : Uri.parse(v as String)),
    );
    return val;
  }, fieldKeyMap: const {
    'isOptional': 'is_optional',
    'autoApply': 'auto_apply',
    'buildTo': 'build_to',
    'builderFactories': 'builder_factories',
    'appliesBuilders': 'applies_builders',
    'requiredInputs': 'required_inputs',
    'buildExtensions': 'build_extensions'
  });
}

Map<String, dynamic> _$BuilderToPgSql(Builder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('target', instance.target);
  val['import'] = instance.import;
  writeNotNull('is_optional', instance.isOptional);
  writeNotNull('configLocation', instance.configLocation?.toString());
  writeNotNull('auto_apply', _$AutoApplyEnumMap[instance.autoApply]);
  writeNotNull('build_to', _$BuildToEnumMap[instance.buildTo]);
  writeNotNull('defaultEnumTest', _$AutoApplyEnumMap[instance.defaultEnumTest]);
  val['builder_factories'] = instance.builderFactories;
  writeNotNull('applies_builders', instance.appliesBuilders);
  writeNotNull('required_inputs', instance.requiredInputs);
  writeNotNull('build_extensions', instance.buildExtensions);
  return val;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$BuildToEnumMap = {
  BuildTo.cache: 'cache',
  BuildTo.source: 'source',
};
