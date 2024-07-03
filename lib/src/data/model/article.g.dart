// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      id: json['id'] as String,
      updatedAt: json['updated_at'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
