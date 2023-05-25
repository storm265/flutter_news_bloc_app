// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_headline_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopHeadlineDTO _$$_TopHeadlineDTOFromJson(Map<String, dynamic> json) =>
    _$_TopHeadlineDTO(
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => ArticleDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TopHeadlineDTOToJson(_$_TopHeadlineDTO instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
