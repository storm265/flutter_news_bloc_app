import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/search_page/widgets/search_bar_widget.dart';
import 'package:todo_bloc_practice/presentation/widgets/unfocus_widget.dart';
import 'package:todo_bloc_practice/services/route_service/route_service.dart';

import 'bloc/search_bloc.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: UnfocusWidget(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SearchBarWidget(),
                BlocBuilder<SearchBloc, SearchState>(
                  builder: (context, state) {
                    if (state is SearchErrorState) {
                      return Center(
                        child: Text('We got error ${state.errorMessage}'),
                      );
                    }
                    if (state is SearchNoNetworkState) {
                      return Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              CupertinoIcons.wifi,
                              size: 35,
                            ),
                            Text(state.errorMessage),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () => context
                                  .read<SearchBloc>()
                                  .add(const GetEverythingEvent()),
                              child: const Icon(CupertinoIcons.refresh),
                            ),
                          ],
                        ),
                      );
                    }

                    if (state is SearchLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }
                    if (state is SearchFetchedState) {
                      final topHeadlineModel = state.everythingEntity;
                      return topHeadlineModel.totalResults == 0
                          ? const Center(
                              child: Text('Not Found'),
                            )
                          : Column(
                              children: [
                                Text('Found: ${topHeadlineModel.totalResults}'),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: topHeadlineModel.articles!.length,
                                  itemBuilder: (_, index) {
                                    final article =
                                        topHeadlineModel.articles![index];

                                    return CupertinoListTile(
                                      onTap: () => AutoRouter.of(context).push(
                                        DetailedNewsRoute(
                                            articleModel: article),
                                      ),
                                      title: Text(article.title!),
                                      leading: article.urlToImage == null
                                          ? const SizedBox()
                                          : ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.network(
                                                article.urlToImage!,
                                                width: 50,
                                                height: 30,
                                              ),
                                            ),
                                    );
                                  },
                                ),
                              ],
                            );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
