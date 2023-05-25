import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/news_page/state/news_categories_cubit/news_categories_cubit.dart';
import 'news_container_widget.dart';

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
          callback: () {
            newsCategoriesCubitRead.updateSelectedNewsIndex(index);
          },
          isSelected: context
                      .watch<NewsCategoriesCubit>()
                      .state
                      .selectedCategoryIndex ==
                  index
              ? true
              : false,
          title: newsCategoriesCubitRead.newsCategories[index],
        ),
      ),
    );
  }
}
