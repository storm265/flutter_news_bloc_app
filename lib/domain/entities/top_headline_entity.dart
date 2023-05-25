import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';
import 'package:todo_bloc_practice/data/models/top_headline_dto/top_headline_dto.dart';

class TopHeadlineEntity {
  int? totalResults;
  List<ArticleDTO> articles;

  TopHeadlineEntity({
    this.totalResults,
    required this.articles,
  });

  static TopHeadlineEntity toEntity(
          {required TopHeadlineDTO topHeadlineModel}) =>
      TopHeadlineEntity(
        articles: topHeadlineModel.articles,
        totalResults: topHeadlineModel.totalResults,
      );
}
