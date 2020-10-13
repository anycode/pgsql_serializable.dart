// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pgsql_test_example.g_non_nullable.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map<String, dynamic> pgsql) {
  return Person(
    pgsql['firstName'] as String,
    pgsql['lastName'] as String,
    _$enumDecode(_$CategoryEnumMap, pgsql[r'$house']),
    middleName: pgsql['middleName'] as String,
    dateOfBirth: DateTime.parse(pgsql['dateOfBirth'] as String),
  )
    ..order = Order.fromPgSql(pgsql['order'] as Map<String, dynamic>)
    ..customOrders = MyList.fromPgSql((pgsql['customOrders'] as List)
        .map((e) => Order.fromPgSql(e as Map<String, dynamic>))
        .toList())
    ..houseMap = (pgsql['houseMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, _$enumDecode(_$CategoryEnumMap, e)),
    )
    ..categoryCounts = (pgsql['categoryCounts'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(_$enumDecode(_$CategoryEnumMap, k), e as int),
    );
}

Map<String, dynamic> _$PersonToPgSql(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'middleName': instance.middleName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      r'$house': _$CategoryEnumMap[instance.house],
      'order': instance.order,
      'customOrders': instance.customOrders,
      'houseMap':
          instance.houseMap.map((k, e) => MapEntry(k, _$CategoryEnumMap[e])),
      'categoryCounts': instance.categoryCounts
          .map((k, e) => MapEntry(_$CategoryEnumMap[k], e)),
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

const _$CategoryEnumMap = {
  Category.top: 'top',
  Category.bottom: 'bottom',
  Category.strange: 'strange',
  Category.charmed: 'charmed',
  Category.up: 'up',
  Category.down: 'down',
  Category.notDiscoveredYet: 'not_discovered_yet',
};

Order _$OrderFromPgSql(Map<String, dynamic> pgsql) {
  $checkKeys(pgsql, disallowNullValues: const ['count']);
  return Order(
    _$enumDecode(_$CategoryEnumMap, pgsql['category']),
    (pgsql['items'] as List)
        .map((e) => Item.fromPgSql(e as Map<String, dynamic>)),
  )
    ..count = pgsql['count'] as int
    ..isRushed = pgsql['isRushed'] as bool
    ..duration = Duration(microseconds: pgsql['duration'] as int)
    ..platform = Platform.fromPgSql(pgsql['platform'] as String)
    ..altPlatforms = (pgsql['altPlatforms'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, Platform.fromPgSql(e as String)),
    )
    ..homepage = Uri.parse(pgsql['homepage'] as String)
    ..statusCode = _$enumDecodeNullable(
            _$StatusCodeEnumMap, pgsql['status_code'],
            unknownValue: StatusCode.unknown) ??
        StatusCode.success;
}

Map<String, dynamic> _$OrderToPgSql(Order instance) => <String, dynamic>{
      'count': instance.count,
      'isRushed': instance.isRushed,
      'duration': instance.duration.inMicroseconds,
      'category': _$CategoryEnumMap[instance.category],
      'items': instance.items,
      'platform': instance.platform,
      'altPlatforms': instance.altPlatforms,
      'homepage': instance.homepage.toString(),
      'status_code': _$StatusCodeEnumMap[instance.statusCode],
    };

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

const _$StatusCodeEnumMap = {
  StatusCode.success: 200,
  StatusCode.notFound: 404,
  StatusCode.weird: '500',
  StatusCode.unknown: 'unknown',
};

Item _$ItemFromPgSql(Map<String, dynamic> pgsql) {
  return Item(
    pgsql['price'] as int,
  )
    ..itemNumber = pgsql['item-number'] as int
    ..saleDates = (pgsql['saleDates'] as List)
        .map((e) => DateTime.parse(e as String))
        .toList()
    ..rates = (pgsql['rates'] as List).map((e) => e as int).toList();
}

Map<String, dynamic> _$ItemToPgSql(Item instance) => <String, dynamic>{
      'price': instance.price,
      'item-number': instance.itemNumber,
      'saleDates': instance.saleDates.map((e) => e.toIso8601String()).toList(),
      'rates': instance.rates,
    };

Numbers _$NumbersFromPgSql(Map<String, dynamic> pgsql) {
  return Numbers()
    ..ints = (pgsql['ints'] as List).map((e) => e as int).toList()
    ..nums = (pgsql['nums'] as List).map((e) => e as num).toList()
    ..doubles =
        (pgsql['doubles'] as List).map((e) => (e as num).toDouble()).toList()
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

MapKeyVariety _$MapKeyVarietyFromPgSql(Map<String, dynamic> pgsql) {
  return MapKeyVariety()
    ..intIntMap = (pgsql['intIntMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(int.parse(k), e as int),
    )
    ..uriIntMap = (pgsql['uriIntMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(Uri.parse(k), e as int),
    )
    ..dateTimeIntMap = (pgsql['dateTimeIntMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(DateTime.parse(k), e as int),
    )
    ..bigIntMap = (pgsql['bigIntMap'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(BigInt.parse(k), e as int),
    );
}

Map<String, dynamic> _$MapKeyVarietyToPgSql(MapKeyVariety instance) =>
    <String, dynamic>{
      'intIntMap': instance.intIntMap.map((k, e) => MapEntry(k.toString(), e)),
      'uriIntMap': instance.uriIntMap.map((k, e) => MapEntry(k.toString(), e)),
      'dateTimeIntMap': instance.dateTimeIntMap
          .map((k, e) => MapEntry(k.toIso8601String(), e)),
      'bigIntMap': instance.bigIntMap.map((k, e) => MapEntry(k.toString(), e)),
    };

UnknownEnumValue _$UnknownEnumValueFromPgSql(Map<String, dynamic> pgsql) {
  return UnknownEnumValue()
    ..enumValue = _$enumDecode(_$CategoryEnumMap, pgsql['enumValue'],
        unknownValue: Category.notDiscoveredYet)
    ..enumIterable = (pgsql['enumIterable'] as List).map((e) => _$enumDecode(
        _$CategoryEnumMap, e, unknownValue: Category.notDiscoveredYet))
    ..enumList = (pgsql['enumList'] as List)
        .map((e) => _$enumDecode(_$CategoryEnumMap, e,
            unknownValue: Category.notDiscoveredYet))
        .toList()
    ..enumSet = (pgsql['enumSet'] as List)
        .map((e) => _$enumDecode(_$CategoryEnumMap, e,
            unknownValue: Category.notDiscoveredYet))
        .toSet();
}
