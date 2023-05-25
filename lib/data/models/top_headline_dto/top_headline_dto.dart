import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';

part 'top_headline_dto.freezed.dart';
part 'top_headline_dto.g.dart';

@freezed
class TopHeadlineDTO with _$TopHeadlineDTO {
  factory TopHeadlineDTO({
    required int? totalResults,
    required List<ArticleDTO> articles,
  }) = _TopHeadlineDTO;

  factory TopHeadlineDTO.fromJson(Map<String, Object?> json) =>
      _$TopHeadlineDTOFromJson(json);
}
