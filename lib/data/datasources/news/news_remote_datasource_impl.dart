import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource.dart';
import 'package:todo_bloc_practice/services/network_error_service/network_error_service.dart';
import 'package:todo_bloc_practice/services/network_source.dart';

class NewsRemoteDataSourceImpl implements NewsRemoteDataSource {
  final _everything = '/everything?q=';
  final _topHeadlines = '/top-headlines?';

  final NetworkSource _network;

  NewsRemoteDataSourceImpl({
    required NetworkSource network,
  }) : _network = network;

  @override
  Future<Map<String, dynamic>> getEverything(
      {required String title, String language = 'en'}) async {
    final response =
        await _network.get(path: '$_everything$title&language=$language');

    if (NetworkErrorService.isSuccessful(response)) {
      final rawData = await response.data as Map<String, dynamic>;

      return rawData;
    } else {
      throw Exception('Error: Something gone wrong :()');
    }
  }

  @override
  Future<Map<String, dynamic>> getTopHeadlines(
      {String countryCode = 'us', String category = 'general'}) async {
    final response = await _network.get(
        path: '${_topHeadlines}country=$countryCode&category=$category');

    if (NetworkErrorService.isSuccessful(response)) {
      final rawData = await response.data as Map<String, dynamic>;

      return rawData;
    } else {
      throw Exception('Error: Something gone wrong :()');
    }
  }
}
