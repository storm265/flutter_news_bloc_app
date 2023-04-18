import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource.dart';
import 'package:todo_bloc_practice/data/models/top_headline_model/top_headline_model.dart';
import 'package:todo_bloc_practice/data/models/everything_model/everything_model.dart';
import 'package:todo_bloc_practice/domain/repository/news_remote_repository.dart';

class NewsRemoteRepositoryImpl implements NewsRemoteRepository {
  final NewsRemoteDataSource _newsRemoteDataSource;

  NewsRemoteRepositoryImpl({required NewsRemoteDataSource newsRemoteDataSource})
      : _newsRemoteDataSource = newsRemoteDataSource;

  @override
  Future<EverythingModel> getEverything({required String title}) async {
    final result = await _newsRemoteDataSource.getEverything(title: title);
    return EverythingModel.fromJson(result);
  }

  @override
  Future<TopHeadlineModel> getTopHeadlines({
    String countryCode = 'us',
    String category = 'general',
  }) async {
    final result = await _newsRemoteDataSource.getTopHeadlines(
      category: category,
      countryCode: countryCode,
    );
    final model = TopHeadlineModel.fromJson(result);

    return model;
  }
}
