import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_bloc_practice/data/models/article_model/article_model.dart';
part 'top_headline_model.freezed.dart';
part 'top_headline_model.g.dart';

@freezed
class TopHeadlineModel with _$TopHeadlineModel {
  factory TopHeadlineModel({
    required int? totalResults,
    required List<ArticleModel> articles,
  }) = _TopHeadlineModel;

  factory TopHeadlineModel.fromJson(Map<String, Object?> json) =>
      _$TopHeadlineModelFromJson(json);
}
