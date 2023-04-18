import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/data/models/top_headline_model/top_headline_model.dart';
import 'package:todo_bloc_practice/domain/repository/news_remote_repository.dart';
part 'news_categories_state.dart';

class NewsCategoriesCubit extends Cubit<NewsCategoriesState> {
  final NewsRemoteRepository newsRemoteRepository;

  NewsCategoriesCubit({required this.newsRemoteRepository})
      : super(const NewsCategoriesInitialState(selectedCategoryIndex: 0));

  final List<String> newsCategories = [
    'General',
    'Business',
    'Entertainment',
    'Health',
    'Science',
    'Sports',
    'Technology,'
  ];

  Future<TopHeadlineModel> getTopTitles({
    String countryCode = 'us',
    String category = 'general',
  }) async {
    try {
      return await newsRemoteRepository.getTopHeadlines(
        category: category,
        countryCode: countryCode,
      );
    } catch (e) {
      rethrow;
    }
  }

  void updateSelectedNewsIndex(int newIndex) =>
      emit(NewsCategoriesUpdatedState(selectedCategoryIndex: newIndex));
}
