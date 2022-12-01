// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: lines_longer_than_80_chars, text_direction_code_point_in_literal

part of 'pgsql_test_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map<String, dynamic> pgsql) => Person(
      pgsql['firstName'] as String,
      pgsql['lastName'] as String,
      $enumDecode(_$CategoryEnumMap, pgsql[r'$house']),
      middleName: pgsql['middleName'] as String?,
      dateOfBirth: pgsql['dateOfBirth'] == null
          ? null
          : DateTime.parse(pgsql['dateOfBirth'] as String),
    )
      ..order = pgsql['order'] == null
          ? null
          : Order.fromPgSql(pgsql['order'] as Map<String, dynamic>)
      ..customOrders = pgsql['customOrders'] == null
          ? null
          : MyList<Order>.fromPgSql((pgsql['customOrders'] as List<dynamic>)
              .map((e) => Order.fromPgSql(e as Map<String, dynamic>))
              .toList())
      ..houseMap = (pgsql['houseMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$CategoryEnumMap, e)),
      )
      ..categoryCounts = (pgsql['categoryCounts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$CategoryEnumMap, k), e as int),
      );

Map<String, dynamic> _$PersonToPgSql(Person instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'middleName': instance.middleName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      r'$house': _$CategoryEnumMap[instance.house]!,
      'order': instance.order,
      'customOrders': instance.customOrders,
      'houseMap':
          instance.houseMap?.map((k, e) => MapEntry(k, _$CategoryEnumMap[e]!)),
      'categoryCounts': instance.categoryCounts
          ?.map((k, e) => MapEntry(_$CategoryEnumMap[k]!, e)),
    };

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
  $checkKeys(
    pgsql,
    disallowNullValues: const ['count'],
  );
  return Order.custom(
    $enumDecodeNullable(_$CategoryEnumMap, pgsql['category']),
    (pgsql['items'] as List<dynamic>?)
        ?.map((e) => Item.fromPgSql(e as Map<String, dynamic>)),
  )
    ..count = pgsql['count'] as int?
    ..isRushed = pgsql['isRushed'] as bool?
    ..duration = pgsql['duration'] == null
        ? null
        : Duration(microseconds: pgsql['duration'] as int)
    ..platform = pgsql['platform'] == null
        ? null
        : Platform.fromPgSql(pgsql['platform'] as String)
    ..altPlatforms = (pgsql['altPlatforms'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Platform.fromPgSql(e as String)),
    )
    ..homepage =
        pgsql['homepage'] == null ? null : Uri.parse(pgsql['homepage'] as String)
    ..statusCode = $enumDecodeNullable(_$StatusCodeEnumMap, pgsql['status_code'],
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

Item _$ItemFromPgSql(Map<String, dynamic> pgsql) => Item(
      pgsql['price'] as int?,
    )
      ..itemNumber = pgsql['item-number'] as int?
      ..saleDates = (pgsql['saleDates'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList()
      ..rates = (pgsql['rates'] as List<dynamic>?)?.map((e) => e as int).toList()
      ..geoPoint = _fromPgSqlGeoPoint(pgsql['geoPoint'] as Map<String, dynamic>?);

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
      instance.saleDates?.map((e) => e.toIso8601String()).toList();
  val['rates'] = instance.rates;
  val['geoPoint'] = _toPgSqlGeoPoint(instance.geoPoint);
  return val;
}

Numbers _$NumbersFromPgSql(Map<String, dynamic> pgsql) => Numbers()
  ..ints = (pgsql['ints'] as List<dynamic>?)?.map((e) => e as int).toList()
  ..nums = (pgsql['nums'] as List<dynamic>?)?.map((e) => e as num).toList()
  ..doubles = (pgsql['doubles'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList()
  ..nnDoubles = (pgsql['nnDoubles'] as List<dynamic>?)
      ?.map((e) => (e as num).toDouble())
      .toList()
  ..duration = durationFromInt(pgsql['duration'] as int?)
  ..date = dateTimeFromEpochUs(pgsql['date'] as int?);

Map<String, dynamic> _$NumbersToPgSql(Numbers instance) => <String, dynamic>{
      'ints': instance.ints,
      'nums': instance.nums,
      'doubles': instance.doubles,
      'nnDoubles': instance.nnDoubles,
      'duration': durationToInt(instance.duration),
      'date': dateTimeToEpochUs(instance.date),
    };

MapKeyVariety _$MapKeyVarietyFromPgSql(Map<String, dynamic> pgsql) =>
    MapKeyVariety()
      ..intIntMap = (pgsql['intIntMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as int),
      )
      ..uriIntMap = (pgsql['uriIntMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(Uri.parse(k), e as int),
      )
      ..dateTimeIntMap = (pgsql['dateTimeIntMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(DateTime.parse(k), e as int),
      )
      ..bigIntMap = (pgsql['bigIntMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(BigInt.parse(k), e as int),
      );

Map<String, dynamic> _$MapKeyVarietyToPgSql(MapKeyVariety instance) =>
    <String, dynamic>{
      'intIntMap': instance.intIntMap?.map((k, e) => MapEntry(k.toString(), e)),
      'uriIntMap': instance.uriIntMap?.map((k, e) => MapEntry(k.toString(), e)),
      'dateTimeIntMap': instance.dateTimeIntMap
          ?.map((k, e) => MapEntry(k.toIso8601String(), e)),
      'bigIntMap': instance.bigIntMap?.map((k, e) => MapEntry(k.toString(), e)),
    };

UnknownEnumValue _$UnknownEnumValueFromPgSql(Map<String, dynamic> pgsql) =>
    UnknownEnumValue()
      ..enumValue = $enumDecode(_$CategoryEnumMap, pgsql['enumValue'],
          unknownValue: Category.notDiscoveredYet)
      ..enumIterable = (pgsql['enumIterable'] as List<dynamic>).map((e) =>
          $enumDecode(_$CategoryEnumMap, e,
              unknownValue: Category.notDiscoveredYet))
      ..enumList = (pgsql['enumList'] as List<dynamic>)
          .map((e) => $enumDecode(_$CategoryEnumMap, e,
              unknownValue: Category.notDiscoveredYet))
          .toList()
      ..enumSet = (pgsql['enumSet'] as List<dynamic>)
          .map((e) => $enumDecode(_$CategoryEnumMap, e,
              unknownValue: Category.notDiscoveredYet))
          .toSet();

PrivateConstructor _$PrivateConstructorFromPgSql(Map<String, dynamic> pgsql) =>
    PrivateConstructor._(
      pgsql['id'] as int,
      pgsql['value'] as String,
    );

Map<String, dynamic> _$PrivateConstructorToPgSql(PrivateConstructor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };

RegressionTestIssue1210 _$RegressionTestIssue1210FromPgSql(
        Map<String, dynamic> pgsql) =>
    RegressionTestIssue1210(
      pgsql['field'] as String,
    );

Map<String, dynamic> _$RegressionTestIssue1210ToPgSql(
        RegressionTestIssue1210 instance) =>
    <String, dynamic>{
      'field': instance.field,
    };
