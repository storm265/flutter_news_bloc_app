import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'news_categories_state.dart';

class NewsCategoriesCubit extends Cubit<NewsCategoriesState> {
  NewsCategoriesCubit()
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

  String get getCurrentCategory =>
      newsCategories[state.selectedCategoryIndex].toLowerCase();

  void updateSelectedNewsIndex(int newIndex) =>
      emit(NewsCategoriesUpdatedState(selectedCategoryIndex: newIndex));
}
