import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/news_list/state/news_categories_cubit/news_categories_cubit.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_categories_widgets/news_container_widget.dart';

class NewsCategoriesWidget extends StatelessWidget {
  const NewsCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final newsCategoriesCubitRead = context.read<NewsCategoriesCubit>();
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newsCategoriesCubitRead.newsCategories.length,
        itemBuilder: (context, index) => NewsContainerWidget(
          callback: () =>
              newsCategoriesCubitRead.updateSelectedNewsIndex(index),
          isSelected:
              newsCategoriesCubitRead.state.selectedCategoryIndex == index
                  ? true
                  : false,
          title: newsCategoriesCubitRead.newsCategories[index],
        ),
      ),
    );
  }
}
