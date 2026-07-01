// @dart=3.8

part of '_pgsql_serializable_test_input.dart';

sealed class PatchValue<T> {
  const PatchValue();

  const factory PatchValue.present(T value) = PatchValuePresent;
  const factory PatchValue.none() = PatchValueNone;

  factory PatchValue.fromPgSql(
    Object? pgsql,
    T Function(Object? pgsql) fromPgSqlT,
  ) => pgsql == null
      ? const PatchValue.none()
      : PatchValue.present(fromPgSqlT(pgsql));

  Object? toPgSql(Object? Function(T value) toPgSqlT);
}

final class PatchValuePresent<T> extends PatchValue<T> {
  const PatchValuePresent(this.value);

  final T value;

  @override
  Object? toPgSql(Object? Function(T value) toPgSqlT) => toPgSqlT(value);
}

final class PatchValueNone<T> extends PatchValue<T> {
  const PatchValueNone();

  @override
  Object? toPgSql(Object? Function(T value) toPgSqlT) => null;
}

@PgSqlSerializable()
class PatchInner {
  const PatchInner(this.id);

  factory PatchInner.fromPgSql(Map<String, dynamic> pgsql) =>
      PatchInner(pgsql['id'] as int);

  final int id;

  Map<String, dynamic> toPgSql() => {'id': id};
}

@ShouldGenerate(r'''
PatchEntity _$PatchEntityFromPgSql(Map<String, dynamic> pgsql) => PatchEntity(
  name: pgsql['name'] as String,
  inner: !pgsql.containsKey('inner')
      ? null
      : PatchValue<PatchInner>.fromPgSql(
          pgsql['inner'],
          (value) => PatchInner.fromPgSql(value as Map<String, dynamic>),
        ),
);

Map<String, dynamic> _$PatchEntityToPgSql(
  PatchEntity instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.inner case final value?) 'inner': value.toPgSql((value) => value),
};
''')
@PgSqlSerializable()
class PatchEntity {
  const PatchEntity({required this.name, this.inner});

  final String name;

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true)
  final PatchValue<PatchInner>? inner;
}

@ShouldThrow(
  'Fields with `explicitPgSqlNullWhenNonNullField` cannot deserialize '
  'explicit PgSQL `null` through `BadPatchInner.fromPgSql` because its first '
  'parameter is non-nullable `Map<String, dynamic>`. Use a nullable parameter '
  '(for example `Object?`) or provide a custom `@PgSqlKey(fromPgSql: ...)` that '
  'accepts nullable input.',
)
@PgSqlSerializable()
class BadPatchEntity {
  const BadPatchEntity({this.inner});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true)
  final BadPatchInner? inner;
}

class BadPatchInner {
  const BadPatchInner(this.id);

  factory BadPatchInner.fromPgSql(Map<String, dynamic> pgsql) =>
      BadPatchInner(pgsql['id'] as int);

  final int id;
}

PatchValue<PatchInner>? _patchValueFromPgSql(Object? pgsql) =>
    PatchValue.fromPgSql(
      pgsql,
      (value) => PatchInner.fromPgSql(value as Map<String, dynamic>),
    );

Object? _patchValueToPgSql(PatchValue<PatchInner>? value) =>
    value?.toPgSql((v) => v.toPgSql());

@ShouldGenerate(r'''
PatchEntityChecked _$PatchEntityCheckedFromPgSql(Map<String, dynamic> pgsql) =>
    $checkedCreate('PatchEntityChecked', pgsql, ($checkedConvert) {
      final val = PatchEntityChecked(
        name: $checkedConvert('name', (v) => v as String),
        inner: $checkedConvert(
          'inner',
          (v) => !pgsql.containsKey('inner')
              ? null
              : PatchValue<PatchInner>.fromPgSql(
                  v,
                  (value) => PatchInner.fromPgSql(value as Map<String, dynamic>),
                ),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PatchEntityCheckedToPgSql(
  PatchEntityChecked instance,
) => <String, dynamic>{
  'name': instance.name,
  if (instance.inner case final value?) 'inner': value.toPgSql((value) => value),
};
''')
@PgSqlSerializable(checked: true)
class PatchEntityChecked {
  const PatchEntityChecked({required this.name, this.inner});

  final String name;

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true)
  final PatchValue<PatchInner>? inner;
}

@ShouldGenerate(r'''
PatchNullableStringEntity _$PatchNullableStringEntityFromPgSql(
  Map<String, dynamic> pgsql,
) => PatchNullableStringEntity(
  note: !pgsql.containsKey('note') ? null : pgsql['note'] as String?,
);

Map<String, dynamic> _$PatchNullableStringEntityToPgSql(
  PatchNullableStringEntity instance,
) => <String, dynamic>{if (instance.note case final value?) 'note': value};
''')
@PgSqlSerializable()
class PatchNullableStringEntity {
  const PatchNullableStringEntity({this.note});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true)
  final String? note;
}

@ShouldGenerate(r'''
PatchWithCustomFromPgSql _$PatchWithCustomFromPgSqlFromPgSql(
  Map<String, dynamic> pgsql,
) => PatchWithCustomFromPgSql(
  value: !pgsql.containsKey('value') ? null : _patchValueFromPgSql(pgsql['value']),
);

Map<String, dynamic> _$PatchWithCustomFromPgSqlToPgSql(
  PatchWithCustomFromPgSql instance,
) => <String, dynamic>{
  if (instance.value case final value?) 'value': _patchValueToPgSql(value),
};
''')
@PgSqlSerializable()
class PatchWithCustomFromPgSql {
  const PatchWithCustomFromPgSql({this.value});

  @PgSqlKey(
    explicitPgSqlNullWhenNonNullField: true,
    fromPgSql: _patchValueFromPgSql,
    toPgSql: _patchValueToPgSql,
  )
  final PatchValue<PatchInner>? value;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `inner` field. Fields with '
  '`explicitPgSqlNullWhenNonNullField` must be nullable so a missing PgSQL key '
  'can be represented as Dart `null`.',
  element: 'inner',
)
@PgSqlSerializable()
class PatchNonNullableField {
  const PatchNonNullableField({required this.inner});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true)
  final PatchValue<PatchInner> inner;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `inner` field. Cannot set both '
  '`explicitPgSqlNullWhenNonNullField` and `disallowNullValue` to `true`.',
  element: 'inner',
)
@PgSqlSerializable()
class PatchDisallowNullWithExplicit {
  const PatchDisallowNullWithExplicit({this.inner});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true, disallowNullValue: true)
  final PatchValue<PatchInner>? inner;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `inner` field. Cannot set both '
  '`explicitPgSqlNullWhenNonNullField` and `required` to `true`.',
  element: 'inner',
)
@PgSqlSerializable()
class PatchRequiredWithExplicit {
  const PatchRequiredWithExplicit({this.inner});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true, required: true)
  final PatchValue<PatchInner>? inner;
}

@ShouldThrow(
  'Error with `@PgSqlKey` on the `note` field. Cannot set `defaultValue` when '
  '`explicitPgSqlNullWhenNonNullField` is `true`.',
  element: 'note',
)
@PgSqlSerializable()
class PatchDefaultValueWithExplicit {
  const PatchDefaultValueWithExplicit({this.note});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true, defaultValue: '')
  final String? note;
}

String _nonNullableStringFromPgSql(String value) => value;

@ShouldThrow(
  'Error with `@PgSqlKey` on the `note` field. Fields with '
  '`explicitPgSqlNullWhenNonNullField` require `fromPgSql` to accept a nullable '
  'PgSQL input (for example `Object?`), but `_nonNullableStringFromPgSql` has a '
  'non-nullable parameter type `String`.',
  element: 'note',
)
@PgSqlSerializable()
class PatchBadCustomFromPgSql {
  const PatchBadCustomFromPgSql({this.note});

  @PgSqlKey(
    explicitPgSqlNullWhenNonNullField: true,
    fromPgSql: _nonNullableStringFromPgSql,
  )
  final String? note;
}

Object? _dummyReadValue(Map pgsql, String key) => pgsql[key];

@ShouldThrow(
  'Error with `@PgSqlKey` on the `note` field. Cannot set `readValue` when '
  '`explicitPgSqlNullWhenNonNullField` is `true`.',
  element: 'note',
)
@PgSqlSerializable()
class PatchReadValueWithExplicit {
  const PatchReadValueWithExplicit({this.note});

  @PgSqlKey(explicitPgSqlNullWhenNonNullField: true, readValue: _dummyReadValue)
  final String? note;
}
