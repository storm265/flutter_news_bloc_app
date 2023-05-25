// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'everything_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EverythingDTO _$$_EverythingDTOFromJson(Map<String, dynamic> json) =>
    _$_EverythingDTO(
      totalResults: json['totalResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => ArticleDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EverythingDTOToJson(_$_EverythingDTO instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
