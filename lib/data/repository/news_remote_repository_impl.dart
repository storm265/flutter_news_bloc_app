import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource.dart';
import 'package:todo_bloc_practice/data/models/everything_dto/everything_dto.dart';
import 'package:todo_bloc_practice/data/models/top_headline_dto/top_headline_dto.dart';
import 'package:todo_bloc_practice/domain/entities/everything_entity.dart';
import 'package:todo_bloc_practice/domain/entities/top_headline_entity.dart';
import 'package:todo_bloc_practice/domain/repository/news_remote_repository.dart';

class NewsRemoteRepositoryImpl implements NewsRemoteRepository {
  final NewsRemoteDataSource _newsRemoteDataSource;

  NewsRemoteRepositoryImpl({required NewsRemoteDataSource newsRemoteDataSource})
      : _newsRemoteDataSource = newsRemoteDataSource;

  @override
  Future<EverythingEntity> getEverything({
    required String title,
    String language = 'en',
  }) async {
    final result = await _newsRemoteDataSource.getEverything(
      title: title,
      language: language,
    );
    final model = EverythingDTO.fromJson(result);
    final entity = EverythingEntity.toEntity(topHeadlineModel: model);
    return entity;
  }

  @override
  Future<TopHeadlineEntity> getTopHeadlines({
    String countryCode = 'us',
    String category = 'general',
  }) async {
    final result = await _newsRemoteDataSource.getTopHeadlines(
      category: category,
      countryCode: countryCode,
    );
    final model = TopHeadlineDTO.fromJson(result);
    final entity = TopHeadlineEntity.toEntity(topHeadlineModel: model);
    return entity;
  }
}
