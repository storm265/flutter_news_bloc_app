import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource.dart';
import 'package:todo_bloc_practice/data/models/article_model/article_model.dart';
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

    //  return _fakeTopHeadlines;
    return model;
  }
}

@Deprecated('its fake data')
final _fakeTopHeadlines = TopHeadlineModel(
  totalResults: 35,
  articles: [
    ArticleModel(
        author: 'author1',
        title: 'title dfuioghuidfhguihdfuihgidfuihgihdfihgihdfiuhgdfg',
        description:
            'description fsdioFHPODSHFOSDHFUISDHFHSDUFHS(FIHFUDHIFSDF)',
        url: 'url',
        urlToImage:
            "https://image.cnbcfm.com/api/v1/image/107226886-16818191732023-04-18t070526z_180960544_rc2vg0aph3kv_rtrmadp_0_ukraine-crisis-putin-kherson.jpeg?v=1681821298&w=1920&h=1080",
        publishedAt: '2023-04-18T12:11:00Z',
        content: 'content dsahuidhisuahdsadsa'),
    ArticleModel(
        author: 'author2222',
        title: 'title dfuioghuidfhguihdfuihgidfuihgihdfihgihdfiuhgdfg',
        description:
            'description gdiogjodjgijidorjgijzdrojgoidfjgodfghzidofhgiodfhogzdfuioghodghfduigoghduigdfgdfgd',
        url: 'url',
        urlToImage:
            "https://image.cnbcfm.com/api/v1/image/107226886-16818191732023-04-18t070526z_180960544_rc2vg0aph3kv_rtrmadp_0_ukraine-crisis-putin-kherson.jpeg?v=1681821298&w=1920&h=1080",
        publishedAt: '2023-04-18T12:11:00Z',
        content: 'content dsahuidhisuahdsadsa'),
    ArticleModel(
        author: 'author3333333333333',
        title: 'title dfuioghuidfhguihdfuihgidfuihgihdfihgihdfiuhgdfg',
        description:
            'description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333description 333333',
        url: 'url',
        urlToImage:
            "https://image.cnbcfm.com/api/v1/image/107226886-16818191732023-04-18t070526z_180960544_rc2vg0aph3kv_rtrmadp_0_ukraine-crisis-putin-kherson.jpeg?v=1681821298&w=1920&h=1080",
        publishedAt: '2023-04-18T12:11:00Z',
        content: 'content dsahuidhisuahdsadsa'),
    ArticleModel(
        author: 'author4',
        title: 'title dfuioghuidfhguihdfuihgidfuihgihdfihgihdfiuhgdfg',
        description: 'description 444444444444444',
        url: 'url',
        urlToImage:
            "https://image.cnbcfm.com/api/v1/image/107226886-16818191732023-04-18t070526z_180960544_rc2vg0aph3kv_rtrmadp_0_ukraine-crisis-putin-kherson.jpeg?v=1681821298&w=1920&h=1080",
        publishedAt: '2023-04-18T12:11:00Z',
        content: 'content dsahuidhisuahdsadsa'),
  ],
);
