import 'package:freezed_annotation/freezed_annotation.dart';
part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

@freezed
class ArticleDTO with _$ArticleDTO {
  factory ArticleDTO({
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
  }) = _ArticleDTO;

  factory ArticleDTO.fromJson(Map<String, Object?> json) =>
      _$ArticleDTOFromJson(json);
}
