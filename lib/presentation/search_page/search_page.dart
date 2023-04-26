import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/search_page/widgets/search_bar_widget.dart';
import 'package:todo_bloc_practice/presentation/widgets/unfocus_widget.dart';

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
                      return topHeadlineModel.articles == null
                          ? const Center(
                              child: Text('Not Found'),
                            )
                          : ListView.builder(
                              shrinkWrap: true,
                              itemCount: topHeadlineModel.articles!.length,
                              itemBuilder: (_, index) {
                                final article =
                                    topHeadlineModel.articles![index];

                                return CupertinoListTile(
                                  title: Text(article.title!),
                                  leading: article.urlToImage == null
                                      ? const SizedBox()
                                      : Image.network(article.urlToImage!),
                                );
                              },
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
