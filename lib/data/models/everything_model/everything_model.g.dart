// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everything_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EverythingModel _$$_EverythingModelFromJson(Map<String, dynamic> json) =>
    _$_EverythingModel(
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EverythingModelToJson(_$_EverythingModel instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
