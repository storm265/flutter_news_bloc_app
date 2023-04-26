// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_bloc_practice/data/models/article_model/article_model.dart';
import 'package:todo_bloc_practice/data/models/top_headline_model/top_headline_model.dart';

class TopHeadlineEntity {
  int? totalResults;

  List<ArticleModel> articles;
  TopHeadlineEntity({
    this.totalResults,
    required this.articles,
  });

  static TopHeadlineEntity toEntity(
          {required TopHeadlineModel topHeadlineModel}) =>
      TopHeadlineEntity(
        articles: topHeadlineModel.articles,
        totalResults: topHeadlineModel.totalResults,
      );
}
