import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';

import 'shared.dart';

const customEnumType = 'EnumType';

const recordType = 'Record';

const _annotationImport =
    "import 'package:pgsql_annotation/pgsql_annotation.dart';";

class TestTypeData {
  final bool stringParseType;
  final String? defaultExpression;
  final String? pgsqlExpression;
  final String? altPgSqlExpression;
  final Set<String> genericArgs;

  const TestTypeData({
    this.defaultExpression,
    String? pgsqlExpression,
    required String? altPgSqlExpression,
    this.genericArgs = const {},
  }) : pgsqlExpression = pgsqlExpression ?? defaultExpression,
       altPgSqlExpression =
           altPgSqlExpression ?? pgsqlExpression ?? defaultExpression,
       stringParseType = false;

  const TestTypeData.defaultFunc({
    this.pgsqlExpression,
    required String? altPgSqlExpression,
  }) : altPgSqlExpression = altPgSqlExpression ?? pgsqlExpression,
       genericArgs = const {},
       defaultExpression = null,
       stringParseType = true;

  String libContent(String source, String type) {
    const classAnnotationSplit = '@PgSqlSerializable()';

    final split = source.split(classAnnotationSplit);

    assert(split.length == 2);

    final newPart = toTypeExtension(type, includeDotDart: false);

    final headerReplacements = [
      if (type == customEnumType ||
          genericArgs.any((element) => element.contains(customEnumType)))
        const Replacement(
          _annotationImport,
          '$_annotationImport'
          "import 'enum_type.dart';",
        ),
      Replacement("part 'input.g.dart';", "part 'input$newPart.g.dart';"),
    ];

    final buffer = StringBuffer(
      Replacement.generate(split[0], headerReplacements),
    );

    if (type == recordType) {
      buffer.writeln('typedef RecordTypeDef = ();');
    }

    final simpleClassContent = '$classAnnotationSplit${split[1]}';

    final simpleLiteral = type == recordType ? 'RecordTypeDef' : type;

    buffer
      ..write(
        Replacement.generate(
          simpleClassContent,
          _libReplacements(simpleLiteral),
        ),
      )
      ..write(
        Replacement.generate(
          simpleClassContent.replaceAll('SimpleClass', 'SimpleClassNullable'),
          _libReplacements('$simpleLiteral?'),
        ),
      );

    const sampleRecordDefinition = '(int, String, {bool truth})';

    for (var genericArg in genericArgs) {
      final genericArgClassPart = _genericClassPart(genericArg);

      final theName = 'SimpleClassOf$genericArgClassPart';

      var genericArgFixed = genericArg;

      if (genericArgFixed == recordType) {
        genericArgFixed = sampleRecordDefinition;
      }

      genericArgFixed = genericArgFixed.replaceFirst(
        ',$recordType',
        ',$sampleRecordDefinition',
      );

      final genericType = type == recordType
          ? '${theName}TypeDef'
          : '$type<$genericArgFixed>';

      if (type == recordType) {
        buffer.writeln(
          'typedef $genericType = '
          '($genericArgFixed, {$genericArgFixed named});',
        );
      }

      buffer
        ..write(
          Replacement.generate(
            simpleClassContent.replaceAll('SimpleClass', theName),
            _libReplacements(genericType),
          ),
        )
        ..write(
          Replacement.generate(
            simpleClassContent.replaceAll(
              'SimpleClass',
              'SimpleClassNullableOf$genericArgClassPart',
            ),
            _libReplacements('$genericType?'),
          ),
        );
    }

    final defaultValueFuncBody = _defaultValueFuncBody(type);

    if (defaultValueFuncBody != null) {
      buffer.write(defaultValueFuncBody);
    }

    return buffer.toString();
  }

  String? _defaultValueFuncBody(String type) {
    if (stringParseType) {
      return '$type _defaultValueFunc() => $type.parse($pgsqlExpression);';
    }

    return null;
  }

  String? get _annotationDefaultValue {
    if (stringParseType) {
      return '_defaultValueFunc';
    }

    return defaultExpression;
  }

  Iterable<Replacement> _libReplacements(String type) sync* {
    yield Replacement('final dynamic value;', 'final $type value;');

    final defaultNotSupported =
        _annotationDefaultValue ==
            null // no default provided
            ||
        type.contains('<') // no support for default values and generic args
        ;

    final defaultReplacement = defaultNotSupported
        ? ''
        : _defaultSource
              .replaceFirst('42', _annotationDefaultValue!)
              .replaceFirst('dynamic', type);

    yield Replacement(_defaultSource, defaultReplacement);

    if (defaultNotSupported) {
      yield const Replacement('this.withDefault', '');
    }
  }

  String testContent(String sourceContent, String type) {
    const groupStart = "\n  group('non-nullable', () {";
    const groupEnd = '}); // end non-nullable group\n';

    final startIndex = sourceContent.indexOf(groupStart);
    final endIndex = sourceContent.indexOf(groupEnd) + groupEnd.length;

    final groupContent = sourceContent.substring(startIndex, endIndex);

    final nullableGroupContent = groupContent
        .replaceAll('non-nullable', 'nullable')
        .replaceAll('SimpleClass', 'SimpleClassNullable');

    final thrownError = type == customEnumType
        ? 'throwsArgumentError'
        : 'throwsTypeError';

    final newGroupContent = groupContent.replaceAll(
      r'''
      final object = SimpleClass.fromPgSql({});
      final encoded = loudEncode(object);

      expect(encoded, loudEncode(_nullableDefaultOutput));
      final object2 = SimpleClass.fromPgSql(
        jsonDecode(encoded) as Map<String, Object?>,
      );
      expect(loudEncode(object2), encoded);''',
      '''
      expect(
        () => loudEncode(SimpleClass.fromPgSql({})),
        $thrownError,
      );''',
    );

    final updatedSourceContent = [
      sourceContent.substring(0, startIndex),
      newGroupContent,
      nullableGroupContent,
      sourceContent.substring(endIndex),
    ].join();

    final value = Replacement.generate(
      updatedSourceContent,
      _testReplacements(type),
    );

    return _formatter.format(value);
  }

  Iterable<Replacement> _testReplacements(String type) sync* {
    yield Replacement(
      "import 'input.dart';",
      "import 'input.type_${typeToPathPart(type)}.dart';",
    );

    yield Replacement(
      '''
const _defaultValue = 42;
const _altValue = 43;
''',
      '''
const _defaultValue = $pgsqlExpression;
const _altValue = $altPgSqlExpression;
''',
    );

    if (defaultExpression == null && !stringParseType) {
      yield const Replacement("'withDefault': _defaultValue", '');
      yield const Replacement("'withDefault': _altValue", '');
    }
  }

  static const _defaultSource = r'''
  @PgSqlKey(defaultValue: 42)
  dynamic withDefault;

''';
}

final _formatter = DartFormatter(
  languageVersion:
      // Using parse here so searching for the version string is easier!
      Version.parse('3.8.0'),
);

String _genericClassPart(String genericArg) => genericArg
    .replaceAll('?', 'Nullable')
    .split(',')
    .map((e) => [e.substring(0, 1).toUpperCase(), e.substring(1)].join())
    .join('To');

String toTypeExtension(String e, {bool includeDotDart = true}) =>
    '.type_${typeToPathPart(e)}${includeDotDart ? '.dart' : ''}';

String typeToPathPart(String type) => type.toLowerCase();
