// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

Person _$PersonFromPgSql(Map<String, dynamic> pgsql) => Person(
      pgsql['firstName'] as String,
      pgsql['lastName'] as String,
      DateTime.parse(pgsql['date-of-birth'] as String),
      middleName: pgsql['middleName'] as String?,
      lastOrder: pgsql['last-order'] == null
          ? null
          : DateTime.parse(pgsql['last-order'] as String),
      orders: (pgsql['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromPgSql(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PersonToPgSql(Person instance) {
  final val = <String, dynamic>{
    'firstName': instance.firstName,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('middleName', instance.middleName);
  val['lastName'] = instance.lastName;
  val['date-of-birth'] = instance.dateOfBirth.toIso8601String();
  val['last-order'] = instance.lastOrder?.toIso8601String();
  val['orders'] = instance.orders;
  return val;
}

Order _$OrderFromPgSql(Map<String, dynamic> pgsql) => Order(
      Order._dateTimeFromEpochUs(pgsql['date'] as int),
    )
      ..count = pgsql['count'] as int?
      ..itemNumber = pgsql['itemNumber'] as int?
      ..isRushed = pgsql['isRushed'] as bool?
      ..item = pgsql['item'] == null
          ? null
          : Item.fromPgSql(pgsql['item'] as Map<String, dynamic>)
      ..prepTime = Order._durationFromMilliseconds(pgsql['prep-time'] as int?);

Map<String, dynamic> _$OrderToPgSql(Order instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('itemNumber', instance.itemNumber);
  writeNotNull('isRushed', instance.isRushed);
  writeNotNull('item', instance.item);
  writeNotNull('prep-time', Order._durationToMilliseconds(instance.prepTime));
  writeNotNull('date', Order._dateTimeToEpochUs(instance.date));
  return val;
}

Item _$ItemFromPgSql(Map<String, dynamic> pgsql) => Item()
  ..count = pgsql['count'] as int?
  ..itemNumber = pgsql['itemNumber'] as int?
  ..isRushed = pgsql['isRushed'] as bool?;

Map<String, dynamic> _$ItemToPgSql(Item instance) => <String, dynamic>{
      'count': instance.count,
      'itemNumber': instance.itemNumber,
      'isRushed': instance.isRushed,
    };

// **************************************************************************
// PgSqlLiteralGenerator
// **************************************************************************

final _$glossaryDataPgSqlLiteral = {
  'glossary': {
    'title': 'example glossary',
    'GlossDiv': {
      'title': 'S',
      'GlossList': {
        'GlossEntry': {
          'ID': 'SGML',
          'SortAs': 'SGML',
          'GlossTerm': 'Standard Generalized Markup Language',
          'Acronym': 'SGML',
          'Abbrev': 'ISO 8879:1986',
          'GlossDef': {
            'para': 'A meta-markup language, used to create markup languages.',
            'GlossSeeAlso': ['GML', 'XML']
          },
          'GlossSee': 'markup'
        }
      }
    }
  }
};
