import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_card_widget.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_categories_widgets/new_categories_widget.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_categories_widgets/news_container_widget.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/search_bar_widget.dart';
import 'package:auto_route/annotations.dart';
import 'state/news_bloc/news_bloc.dart';
import 'state/news_categories_cubit/news_categories_cubit.dart';
import 'widgets/shimmer_news_card_widget.dart';

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
            Column(
              children: [
                BlocConsumer<NewsCategoriesCubit, NewsCategoriesState>(
                  listener: (context, state) {
                    if (state is NewsCategoriesUpdatedState) {
                      context.read<NewsBloc>().add(const GetNewsEvent());
                    }
                  },
                  builder: (context, state) => const NewsCategoriesWidget(),
                ),
                Expanded(
                  child: BlocBuilder<NewsBloc, NewsState>(
                    builder: (context, state) {
                      if (state is NewsErrorState) {
                        return Center(
                          child: Text('We got error ${state.error}'),
                        );
                      }
                      if (state is NewsNoNetworkState) {
                        return Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                CupertinoIcons.wifi,
                                size: 35,
                              ),
                              Text(state.error),
                            ],
                          ),
                        );
                      }

                      if (state is NewsLoadingState) {
                        return ListView.builder(
                          itemCount: 11,
                          itemBuilder: (_, __) => const ShimmerNewsCardWidget(),
                        );
                      }
                      if (state is NewsLoadedState) {
                        final topHeadlineModel = state.topHeadlineModel;

                        return ListView.builder(
                          itemCount: topHeadlineModel.articles.length,
                          itemBuilder: (_, index) {
                            final article = topHeadlineModel.articles[index];

                            return NewsCardWidget(
                              articleModel: article,
                            );
                          },
                        );
                      }
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SearchBarWidget(),
          ],
        ),
      ),
    );
  }
}
