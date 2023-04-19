import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_card_widget.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_container_widget.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/search_bar_widget.dart';
import 'cubit/news_categories_cubit.dart';
import 'package:auto_route/annotations.dart';

import 'widgets/shimmer_news_card_widget.dart';

// TODO refactor current cubit. Shouls be 2 cubits
@RoutePage()
class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: SizedBox(),
        middle: Text(
          'News',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            BlocBuilder<NewsCategoriesCubit, NewsCategoriesState>(
              builder: (context, newsCategoriesState) {
                return Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: context
                            .read<NewsCategoriesCubit>()
                            .newsCategories
                            .length,
                        itemBuilder: (context, index) => NewsContainerWidget(
                          callback: () {
                            context
                                .read<NewsCategoriesCubit>()
                                .updateSelectedNewsIndex(index);
                          },
                          isSelected:
                              newsCategoriesState.selectedCategoryIndex == index
                                  ? true
                                  : false,
                          title: context
                              .read<NewsCategoriesCubit>()
                              .newsCategories[index],
                        ),
                      ),
                    ),
                    Expanded(
                      child: FutureBuilder(
                        future: context
                            .read<NewsCategoriesCubit>()
                            .getTopTitles(
                                category: context
                                        .read<NewsCategoriesCubit>()
                                        .newsCategories[
                                    newsCategoriesState.selectedCategoryIndex]),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Center(
                              child: Text('We got error ${snapshot.error}'),
                            );
                          }

                          if (snapshot.hasData) {
                            final topHeadlineModel = snapshot.data!;

                            return ListView.builder(
                                itemCount: topHeadlineModel.articles.length,
                                itemBuilder: (context, index) {
                                  final article =
                                      topHeadlineModel.articles[index];

                                  //   return ShimmerNewsCardWidget();
                                  return NewsCardWidget(
                                    articleModel: article,
                                  );
                                });
                          } else {
                            return const Center(
                              child: CircularProgressIndicator.adaptive(),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                );
              },
            ),
            const SearchBarWidget(),
          ],
        ),
      ),
    );
  }
}
