// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_class_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromPgSql<T>(Map<String, dynamic> pgsql) {
  return BaseResponse<T>(
    status: pgsql['status'] as int?,
    msg: pgsql['msg'] as String?,
    data: BaseResponse._dataFromPgSql(pgsql['data'] as Object),
  );
}

Article _$ArticleFromPgSql(Map<String, dynamic> pgsql) {
  return Article(
    id: pgsql['id'] as int,
    title: pgsql['title'] as String,
    author: pgsql['author'] == null
        ? null
        : User.fromPgSql(pgsql['author'] as Map<String, dynamic>),
    comments: (pgsql['comments'] as List<dynamic>?)
        ?.map((e) => Comment.fromPgSql(e as Map<String, dynamic>))
        .toList(),
  );
}

User _$UserFromPgSql(Map<String, dynamic> pgsql) {
  return User(
    id: pgsql['id'] as int?,
    email: pgsql['email'] as String?,
  );
}

Comment _$CommentFromPgSql(Map<String, dynamic> pgsql) {
  return Comment(
    id: pgsql['id'] as int?,
    content: pgsql['content'] as String?,
  );
}
