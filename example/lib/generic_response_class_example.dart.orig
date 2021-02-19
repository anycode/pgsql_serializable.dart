// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:pgsql_annotation/pgsql_annotation.dart';

part 'generic_response_class_example.g.dart';

// An example highlighting the problem outlined in
// https://github.com/google/pgsql_serializable.dart/issues/646
// https://github.com/google/pgsql_serializable.dart/issues/671

@PgSqlSerializable(createToPgSql: false)
class BaseResponse<T> {
  final int? status;
  final String? msg;

  @PgSqlKey(fromPgSql: _dataFromPgSql)
  final T? data;

  const BaseResponse({
    this.status,
    this.msg,
    this.data,
  });

  factory BaseResponse.fromPgSql(Map<String, dynamic> pgsql) =>
      _$BaseResponseFromPgSql(pgsql);

  /// Decodes [pgsql] by "inspecting" its contents.
  static T _dataFromPgSql<T>(Object pgsql) {
    if (pgsql is Map<String, dynamic>) {
      if (pgsql.containsKey('email')) {
        return User.fromPgSql(pgsql) as T;
      }

      if (pgsql.containsKey('title')) {
        return Article.fromPgSql(pgsql) as T;
      }
    } else if (pgsql is List) {
      // NOTE: this logic assumes the ONLY valid value for a `List` in this case
      // is a List<Author>. If that assumption changes, then it will be
      // necessary to "peak" into non-empty lists to determine the type!

      return pgsql
          .map((e) => Article.fromPgSql(e as Map<String, dynamic>))
          .toList() as T;
    }

    throw ArgumentError.value(
      pgsql,
      'pgsql',
      'Cannot convert the provided data.',
    );
  }
}

@PgSqlSerializable(createToPgSql: false)
class Article {
  final int id;
  final String title;

  final User? author;

  final List<Comment>? comments;

  const Article({
    required this.id,
    required this.title,
    this.author,
    this.comments,
  });

  factory Article.fromPgSql(Map<String, dynamic> pgsql) =>
      _$ArticleFromPgSql(pgsql);
}

@PgSqlSerializable(createToPgSql: false)
class User {
  final int? id;
  final String? email;

  const User({
    this.id,
    this.email,
  });

  factory User.fromPgSql(Map<String, dynamic> pgsql) => _$UserFromPgSql(pgsql);
}

@PgSqlSerializable(createToPgSql: false)
class Comment {
  final String? content;
  final int? id;

  const Comment({
    this.id,
    this.content,
  });

  factory Comment.fromPgSql(Map<String, dynamic> pgsql) =>
      _$CommentFromPgSql(pgsql);
}
