part of 'news_categories_cubit.dart';

abstract class NewsCategoriesState extends Equatable {
  final int selectedCategoryIndex;
  const NewsCategoriesState({required this.selectedCategoryIndex});

  @override
  List<Object> get props => [selectedCategoryIndex];
}

class NewsCategoriesInitialState extends NewsCategoriesState {
  const NewsCategoriesInitialState({required super.selectedCategoryIndex});
}

class NewsCategoriesUpdatedState extends NewsCategoriesState {
  const NewsCategoriesUpdatedState({required super.selectedCategoryIndex});
}
