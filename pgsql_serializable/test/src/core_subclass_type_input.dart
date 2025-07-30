// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

@ShouldThrow('''
Could not generate `fromPgSql` code for `mapView`.
To support the type `MapView` you can:
$converterOrKeyInstructions''', element: 'mapView')
@PgSqlSerializable(createToPgSql: false)
class UnsupportedMapField {
  late MapView mapView;
}

@ShouldThrow('''
Could not generate `fromPgSql` code for `listView`.
To support the type `UnmodifiableListView` you can:
$converterOrKeyInstructions''', element: 'listView')
@PgSqlSerializable(createToPgSql: false)
class UnsupportedListField {
  late UnmodifiableListView listView;
}

@ShouldThrow('''
Could not generate `fromPgSql` code for `customSet`.
To support the type `CustomSet` you can:
$converterOrKeyInstructions''', element: 'customSet')
@PgSqlSerializable(createToPgSql: false)
class UnsupportedSetField {
  late CustomSet customSet;
}

abstract class CustomSet implements Set {}

@ShouldThrow('''
Could not generate `fromPgSql` code for `customDuration`.
To support the type `CustomDuration` you can:
$converterOrKeyInstructions''', element: 'customDuration')
@PgSqlSerializable(createToPgSql: false)
class UnsupportedDurationField {
  late CustomDuration customDuration;
}

abstract class CustomDuration implements Duration {}

@ShouldThrow('''
Could not generate `fromPgSql` code for `customUri`.
To support the type `CustomUri` you can:
$converterOrKeyInstructions''', element: 'customUri')
@PgSqlSerializable(createToPgSql: false)
class UnsupportedUriField {
  CustomUri? customUri;
}

abstract class CustomUri implements Uri {}

@ShouldThrow('''
Could not generate `fromPgSql` code for `customDateTime`.
To support the type `CustomDateTime` you can:
$converterOrKeyInstructions''', element: 'customDateTime')
@PgSqlSerializable(createToPgSql: false)
class UnsupportedDateTimeField {
  late CustomDateTime customDateTime;
}

abstract class CustomDateTime implements DateTime {}
