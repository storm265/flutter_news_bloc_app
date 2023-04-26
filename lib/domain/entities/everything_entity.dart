// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_bloc_practice/data/models/article_model/article_model.dart';
import 'package:todo_bloc_practice/data/models/everything_model/everything_model.dart';

class EverythingEntity {
  final int? totalResults;
  List<ArticleModel>? articles;

  EverythingEntity({
    this.totalResults,
    this.articles,
  });

  static EverythingEntity toEntity(
          {required EverythingModel topHeadlineModel}) =>
      EverythingEntity(
        articles: topHeadlineModel.articles,
        totalResults: topHeadlineModel.totalResults,
      );
}
