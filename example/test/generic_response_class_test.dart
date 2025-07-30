// Copyright (c) 2020, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:example/generic_response_class_example.dart';
import 'package:test/test.dart';

const _pgsqlUser = {
  'status': 200,
  'msg': 'success',
  'data': {'id': 1, 'email': 'test@test.com'},
};

final _pgsqlArticle = {
  'status': 200,
  'msg': 'success',
  'data': {
    'id': 2,
    'title': 'title1',
    'author': _pgsqlUser['data'],
    'comments': [
      {'content': 'comment context', 'id': 1},
      {'content': 'comment context', 'id': 2},
    ],
  },
};

final _pgsqlArticleList = {
  'status': 200,
  'msg': 'success',
  'data': [
    {'id': 1, 'title': 'title1'},
    _pgsqlArticle['data'],
  ],
};

void _testResponse<T>(BaseResponse response, void Function(T) testFunction) {
  expect(response.status, 200);
  expect(response.msg, 'success');
  testFunction(response.data as T);
}

void _testUser(User user) {
  expect(user.email, 'test@test.com');
  expect(user.id, 1);
}

void _testArticle(Article article) {
  expect(article.id, 2);
  expect(article.title, 'title1');
  _testUser(article.author!);
  expect(article.comments, hasLength(2));
}

void _testArticleList(List<Article> articles) {
  expect(articles, hasLength(2));
  _testArticle(articles[1]);
}

void main() {
  test('user', () {
    _testResponse(BaseResponse<User>.fromPgSql(_pgsqlUser), _testUser);
    // without generic
    _testResponse(BaseResponse.fromPgSql(_pgsqlUser), _testUser);
  });

  test('article', () {
    _testResponse(BaseResponse<Article>.fromPgSql(_pgsqlArticle), _testArticle);
    // without generic
    _testResponse(BaseResponse.fromPgSql(_pgsqlArticle), _testArticle);
  });

  test('article list', () {
    _testResponse(
      BaseResponse<List<Article>>.fromPgSql(_pgsqlArticleList),
      _testArticleList,
    );

    // without generic
    _testResponse(BaseResponse.fromPgSql(_pgsqlArticleList), _testArticleList);
  });
}
