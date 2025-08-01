import 'dart:convert';

import 'package:stack_trace/stack_trace.dart';
import 'package:test/test.dart';

final throwsTypeError = throwsA(isTypeError);

final isTypeError = isA<TypeError>();

/// Prints out nested causes before throwing `JsonUnsupportedObjectError`.
String loudEncode(Object? object) {
  try {
    return const JsonEncoder.withIndent(' ').convert(object);
  } catch (e) {
    if (e is JsonUnsupportedObjectError) {
      Object? error = e;

      var count = 1;

      while (error is JsonUnsupportedObjectError) {
        print(
          '(${count++}) $error ${error.unsupportedObject} '
          '(${error.unsupportedObject.runtimeType}) !!!',
        );
        print(Trace.from(error.stackTrace!).terse);
        error = error.cause;
      }

      if (error != null) {
        print('(${count++}) $error ???');
        if (error is Error) {
          print(Trace.from(error.stackTrace!).terse);
        }
      }
    }
    rethrow;
  }
}

T roundTripObject<T>(
  T object,
  T Function(Map<String, dynamic> pgsql) factory, {
  bool skipObjectEquals = false,
}) {
  final data = loudEncode(object);

  final object2 = factory(json.decode(data) as Map<String, dynamic>);

  if (!skipObjectEquals) {
    expect(object2, equals(object));
  }

  final pgsql2 = loudEncode(object2);

  expect(pgsql2, equals(data));
  return object2;
}
