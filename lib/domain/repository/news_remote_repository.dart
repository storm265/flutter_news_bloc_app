import 'package:todo_bloc_practice/domain/entities/everything_entity.dart';
import 'package:todo_bloc_practice/domain/entities/top_headline_entity.dart';

abstract class NewsRemoteRepository {
  Future<EverythingEntity> getEverything({
    required String title,
    String language = 'en',
  });

  Future<TopHeadlineEntity> getTopHeadlines({
    String countryCode = 'us',
    String category = 'general',
  });
}
