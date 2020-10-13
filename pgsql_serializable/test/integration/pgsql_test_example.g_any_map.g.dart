// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgsql_test_example.g_any_map.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map pgsql) {
  return Person(
    pgsql['firstName'] as String,
    pgsql['lastName'] as String,
    _$enumDecodeNullable(_$CategoryEnumMap, pgsql[r'$house']),
    middleName: pgsql['middleName'] as String,
    dateOfBirth: pgsql['dateOfBirth'] == null
        ? null
        : DateTime.parse(pgsql['dateOfBirth'] as String),
  )
    ..order = pgsql['order'] == null
        ? null
        : Order.fromPgSql((pgsql['order'] as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          ))
    ..customOrders = pgsql['customOrders'] == null
        ? null
        : MyList.fromPgSql((pgsql['customOrders'] as List)
            ?.map((e) => e == null
                ? null
                : Order.fromPgSql((e as Map)?.map(
                    (k, e) => MapEntry(k as String, e),
                  )))
            ?.toList())
    ..houseMap = (pgsql['houseMap'] as Map)?.map(
      (k, e) =>
          MapEntry(k as String, _$enumDecodeNullable(_$CategoryEnumMap, e)),
    )
    ..categoryCounts = (pgsql['categoryCounts'] as Map)?.map(
      (k, e) => MapEntry(_$enumDecodeNullable(_$CategoryEnumMap, k), e as int),
    );
}

Map<String, dynamic> _$PersonToPgSql(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      r'$house': _$CategoryEnumMap[instance.house],
      'order': instance.order,
      'customOrders': instance.customOrders,
      'houseMap':
          instance.houseMap?.map((k, e) => MapEntry(k, _$CategoryEnumMap[e])),
      'categoryCounts': instance.categoryCounts
          ?.map((k, e) => MapEntry(_$CategoryEnumMap[k], e)),
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$CategoryEnumMap = {
  Category.top: 'top',
  Category.bottom: 'bottom',
  Category.strange: 'strange',
  Category.charmed: 'charmed',
  Category.up: 'up',
  Category.down: 'down',
  Category.notDiscoveredYet: 'not_discovered_yet',
};

Order _$OrderFromPgSql(Map pgsql) {
  $checkKeys(pgsql, disallowNullValues: const ['count']);
  return Order(
    _$enumDecode(_$CategoryEnumMap, pgsql['category']),
    (pgsql['items'] as List)?.map((e) => e == null
        ? null
        : Item.fromPgSql((e as Map)?.map(
            (k, e) => MapEntry(k as String, e),
          ))),
  )
    ..count = pgsql['count'] as int
    ..isRushed = pgsql['isRushed'] as bool
    ..duration = pgsql['duration'] == null
        ? null
        : Duration(microseconds: pgsql['duration'] as int)
    ..platform = pgsql['platform'] == null
        ? null
        : Platform.fromPgSql(pgsql['platform'] as String)
    ..altPlatforms = (pgsql['altPlatforms'] as Map)?.map(
      (k, e) => MapEntry(
          k as String, e == null ? null : Platform.fromPgSql(e as String)),
    )
    ..homepage =
        pgsql['homepage'] == null ? null : Uri.parse(pgsql['homepage'] as String)
    ..statusCode = _$enumDecodeNullable(
            _$StatusCodeEnumMap, pgsql['status_code'],
            unknownValue: StatusCode.unknown) ??
        StatusCode.success;
}

Map<String, dynamic> _$OrderToPgSql(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  val['isRushed'] = instance.isRushed;
  val['duration'] = instance.duration?.inMicroseconds;
  val['category'] = _$CategoryEnumMap[instance.category];
  val['items'] = instance.items;
  val['platform'] = instance.platform;
  val['altPlatforms'] = instance.altPlatforms;
  val['homepage'] = instance.homepage?.toString();
  val['status_code'] = _$StatusCodeEnumMap[instance.statusCode];
  return val;
}

const _$StatusCodeEnumMap = {
  StatusCode.success: 200,
  StatusCode.notFound: 404,
  StatusCode.weird: '500',
  StatusCode.unknown: 'unknown',
};

Item _$ItemFromPgSql(Map pgsql) {
  return Item(
    pgsql['price'] as int,
  )
    ..itemNumber = pgsql['item-number'] as int
    ..saleDates = (pgsql['saleDates'] as List)
        ?.map((e) => e == null ? null : DateTime.parse(e as String))
        ?.toList()
    ..rates = (pgsql['rates'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$ItemToPgSql(Item instance) {
  final val = <String, dynamic>{
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item-number', instance.itemNumber);
  val['saleDates'] =
      instance.saleDates?.map((e) => e?.toIso8601String())?.toList();
  val['rates'] = instance.rates;
  return val;
}

Numbers _$NumbersFromPgSql(Map pgsql) {
  return Numbers()
    ..ints = (pgsql['ints'] as List)?.map((e) => e as int)?.toList()
    ..nums = (pgsql['nums'] as List)?.map((e) => e as num)?.toList()
    ..doubles =
        (pgsql['doubles'] as List)?.map((e) => (e as num)?.toDouble())?.toList()
    ..nnDoubles =
        (pgsql['nnDoubles'] as List).map((e) => (e as num).toDouble()).toList()
    ..duration = durationFromInt(pgsql['duration'] as int)
    ..date = dateTimeFromEpochUs(pgsql['date'] as int);
}

Map<String, dynamic> _$NumbersToPgSql(Numbers instance) => <String, dynamic>{
      'ints': instance.ints,
      'nums': instance.nums,
      'doubles': instance.doubles,
      'nnDoubles': instance.nnDoubles,
      'duration': durationToInt(instance.duration),
      'date': dateTimeToEpochUs(instance.date),
    };

MapKeyVariety _$MapKeyVarietyFromPgSql(Map pgsql) {
  return MapKeyVariety()
    ..intIntMap = (pgsql['intIntMap'] as Map)?.map(
      (k, e) => MapEntry(int.parse(k as String), e as int),
    )
    ..uriIntMap = (pgsql['uriIntMap'] as Map)?.map(
      (k, e) => MapEntry(Uri.parse(k as String), e as int),
    )
    ..dateTimeIntMap = (pgsql['dateTimeIntMap'] as Map)?.map(
      (k, e) => MapEntry(DateTime.parse(k as String), e as int),
    )
    ..bigIntMap = (pgsql['bigIntMap'] as Map)?.map(
      (k, e) => MapEntry(BigInt.parse(k as String), e as int),
    );
}

Map<String, dynamic> _$MapKeyVarietyToPgSql(MapKeyVariety instance) =>
    <String, dynamic>{
      'intIntMap': instance.intIntMap?.map((k, e) => MapEntry(k.toString(), e)),
      'uriIntMap': instance.uriIntMap?.map((k, e) => MapEntry(k.toString(), e)),
      'dateTimeIntMap': instance.dateTimeIntMap
          ?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'bigIntMap': instance.bigIntMap?.map((k, e) => MapEntry(k.toString(), e)),
    };

UnknownEnumValue _$UnknownEnumValueFromPgSql(Map pgsql) {
  return UnknownEnumValue()
    ..enumValue = _$enumDecodeNullable(_$CategoryEnumMap, pgsql['enumValue'],
        unknownValue: Category.notDiscoveredYet)
    ..enumIterable = (pgsql['enumIterable'] as List)?.map((e) =>
        _$enumDecodeNullable(_$CategoryEnumMap, e,
            unknownValue: Category.notDiscoveredYet))
    ..enumList = (pgsql['enumList'] as List)
        ?.map((e) => _$enumDecodeNullable(_$CategoryEnumMap, e,
            unknownValue: Category.notDiscoveredYet))
        ?.toList()
    ..enumSet = (pgsql['enumSet'] as List)
        ?.map((e) => _$enumDecodeNullable(_$CategoryEnumMap, e,
            unknownValue: Category.notDiscoveredYet))
        ?.toSet();
}
