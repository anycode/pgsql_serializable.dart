// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic_response_class_example.dart';

// **************************************************************************
// PgSqlSerializableGenerator
// **************************************************************************

BaseResponse<T> _$BaseResponseFromPgSql<T>(Map<String, dynamic> pgsql) =>
    BaseResponse<T>(
      status: (pgsql['status'] as num?)?.toInt(),
      msg: pgsql['msg'] as String?,
      data: BaseResponse._dataFromPgSql(pgsql['data'] as Object),
    );

Article _$ArticleFromPgSql(Map<String, dynamic> pgsql) => Article(
  id: (pgsql['id'] as num).toInt(),
  title: pgsql['title'] as String,
  author: pgsql['author'] == null
      ? null
      : User.fromPgSql(pgsql['author'] as Map<String, dynamic>),
  comments: (pgsql['comments'] as List<dynamic>?)
      ?.map((e) => Comment.fromPgSql(e as Map<String, dynamic>))
      .toList(),
);

User _$UserFromPgSql(Map<String, dynamic> pgsql) =>
    User(id: (pgsql['id'] as num?)?.toInt(), email: pgsql['email'] as String?);

Comment _$CommentFromPgSql(Map<String, dynamic> pgsql) => Comment(
  id: (pgsql['id'] as num?)?.toInt(),
  content: pgsql['content'] as String?,
);
