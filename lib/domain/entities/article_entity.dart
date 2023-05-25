import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';

class ArticleEntity {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  ArticleEntity({
    required String? author,
    required String? title,
    required String? description,
    required String? url,
    required String? urlToImage,
    required String? publishedAt,
    required String? content,
  });

  static ArticleEntity toEntity({required ArticleDTO articleModel}) =>
      ArticleEntity(
        author: articleModel.author,
        title: articleModel.title,
        description: articleModel.description,
        url: articleModel.url,
        urlToImage: articleModel.urlToImage,
        publishedAt: articleModel.publishedAt,
        content: articleModel.content,
      );
}
