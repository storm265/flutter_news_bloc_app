import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/annotations.dart';
import 'package:todo_bloc_practice/presentation/news_page/state/news/news_cubit.dart';
import 'package:todo_bloc_practice/presentation/news_page/widgets/news_card_widget.dart';
import 'state/news_categories_cubit/news_categories_cubit.dart';
import 'widgets/news_categories_widgets/new_categories_widget.dart';
import 'widgets/shimmer_news_card_widget.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

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
        child: Column(
          children: [
            BlocConsumer<NewsCategoriesCubit, NewsCategoriesState>(
              listener: (context, state) async {
                if (state is NewsCategoriesUpdatedState) {
                  await context.read<NewsCubit>().getNews(
                      currentCategory: context
                          .read<NewsCategoriesCubit>()
                          .getCurrentCategory);
                }
              },
              builder: (context, state) => const NewsCategoriesWidget(),
            ),
            Expanded(
              child: BlocBuilder<NewsCubit, NewsState>(
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
                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () async => await context
                                .read<NewsCubit>()
                                .getNews(
                                    currentCategory: context
                                        .read<NewsCategoriesCubit>()
                                        .getCurrentCategory),
                            child: const Icon(CupertinoIcons.refresh),
                          ),
                        ],
                      ),
                    );
                  }

                  if (state is GetNewsState) {
                    return ListView.builder(
                      itemCount: 11,
                      itemBuilder: (_, __) => const ShimmerNewsCardWidget(),
                    );
                  }
                  if (state is NewsLoadedState) {
                    final topHeadlineModel = state.topHeadlineEntity;

                    return ListView.builder(
                      itemCount: topHeadlineModel.articles.length,
                      itemBuilder: (_, index) {
                        final article = topHeadlineModel.articles[index];

                        return NewsCardWidget(articleModel: article);
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
      ),
    );
  }
}
