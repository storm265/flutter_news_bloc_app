// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopHeadlineModel _$$_TopHeadlineModelFromJson(Map<String, dynamic> json) =>
    _$_TopHeadlineModel(
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopHeadlineModelToJson(_$_TopHeadlineModel instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
