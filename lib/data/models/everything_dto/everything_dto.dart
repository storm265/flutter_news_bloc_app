import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';

part 'everything_dto.freezed.dart';
part 'everything_dto.g.dart';

@freezed
class EverythingDTO with _$EverythingDTO {
  factory EverythingDTO({
    required int? totalResults,
    required List<ArticleDTO>? articles,
  }) = _EverythingDTO;

  factory EverythingDTO.fromJson(Map<String, Object?> json) =>
      _$EverythingDTOFromJson(json);
}
