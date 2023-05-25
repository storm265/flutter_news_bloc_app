import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';
import 'package:todo_bloc_practice/data/models/everything_dto/everything_dto.dart';

class EverythingEntity {
  final int? totalResults;
  List<ArticleDTO>? articles;

  EverythingEntity({
    this.totalResults,
    this.articles,
  });

  static EverythingEntity toEntity({required EverythingDTO topHeadlineModel}) =>
      EverythingEntity(
        articles: topHeadlineModel.articles,
        totalResults: topHeadlineModel.totalResults,
      );
}
