part of '_pgsql_serializable_test_input.dart';

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `mapView`.
To support the type `MapView` you can:
$converterOrKeyInstructions''',
  element: 'mapView',
)
@PgSqlSerializable(createToPgSql: false)
class UnsupportedMapField {
  MapView mapView;
}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `listView`.
To support the type `UnmodifiableListView` you can:
$converterOrKeyInstructions''',
  element: 'listView',
)
@PgSqlSerializable(createToPgSql: false)
class UnsupportedListField {
  UnmodifiableListView listView;
}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `customSet`.
To support the type `_CustomSet` you can:
$converterOrKeyInstructions''',
  element: 'customSet',
)
@PgSqlSerializable(createToPgSql: false)
class UnsupportedSetField {
  _CustomSet customSet;
}

abstract class _CustomSet implements Set {}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `customDuration`.
To support the type `_CustomDuration` you can:
$converterOrKeyInstructions''',
  element: 'customDuration',
)
@PgSqlSerializable(createToPgSql: false)
class UnsupportedDurationField {
  _CustomDuration customDuration;
}

abstract class _CustomDuration implements Duration {}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `customUri`.
To support the type `_CustomUri` you can:
$converterOrKeyInstructions''',
  element: 'customUri',
)
@PgSqlSerializable(createToPgSql: false)
class UnsupportedUriField {
  _CustomUri customUri;
}

abstract class _CustomUri implements Uri {}

@ShouldThrow(
  '''
Could not generate `fromPgSql` code for `customDateTime`.
To support the type `_CustomDateTime` you can:
$converterOrKeyInstructions''',
  element: 'customDateTime',
)
@PgSqlSerializable(createToPgSql: false)
class UnsupportedDateTimeField {
  _CustomDateTime customDateTime;
}

abstract class _CustomDateTime implements DateTime {}
