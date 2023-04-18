import 'package:todo_bloc_practice/data/models/everything_model/everything_model.dart';
import 'package:todo_bloc_practice/data/models/top_headline_model/top_headline_model.dart';

abstract class NewsRemoteRepository {
  Future<EverythingModel> getEverything({required String title});

  Future<TopHeadlineModel> getTopHeadlines(
      {String countryCode = 'us', String category = 'general'});
}
