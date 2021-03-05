import 'package:checked_yaml/checked_yaml.dart';
import 'package:pgsql_annotation/pgsql_annotation.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  test('bob', () {
    expect(
      () => checkedYamlDecode(
        '{"innerMap": {}}',
        (m) {
          throw CheckedFromPgSqlException(
            m!['innerMap'] as YamlMap,
            null,
            'nothing',
            null,
          );
        },
      ),
      throwsA(
        isA<ParsedYamlException>()
            .having(
              (e) => e.message,
              'message',
              'There was an error parsing the map.',
            )
            .having((e) => e.yamlNode, 'yamlNode', isA<YamlMap>())
            .having(
              (e) => e.innerError,
              'innerError',
              isA<CheckedFromPgSqlException>(),
            )
            .having((e) => e.formattedMessage, 'formattedMessage', '''
line 1, column 14: There was an error parsing the map.
  ╷
1 │ {"innerMap": {}}
  │              ^^
  ╵'''),
      ),
    );
  });
}
