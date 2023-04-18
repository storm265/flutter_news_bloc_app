import 'dart:developer';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource_impl.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/news_container_widget.dart';
import 'package:todo_bloc_practice/presentation/news_list/widgets/search_bar_widget.dart';
import 'package:todo_bloc_practice/schemas/api_scheme.dart';
import 'package:todo_bloc_practice/services/network_source.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

import 'cubit/news_categories_cubit.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
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
              builder: (context, state) {
                return Column(
                  children: [
                    // CupertinoButton.filled(
                    //   child: Text('fetcgh'),
                    //   onPressed: () async {
                    //     final data = await NewsRemoteDataSourceImpl(
                    //             network: NetworkSource())
                    //         .getTopHeadlines();
                    //     log('data ${data?.articles}');
                    //   },
                    // ),
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
                          isSelected: state.selectedCategoryIndex == index
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
                                    state.selectedCategoryIndex]),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return Center(
                              child: Text('We got error ${snapshot.error}'),
                            );
                          }

                          if (snapshot.hasData) {
                            final data = snapshot.data!;
                            return ListView.builder(
                              itemCount: data.articles.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: const EdgeInsets.all(4.0),
                                  decoration: BoxDecoration(
                                    color: isLightTheme(context: context)
                                        ? Colors.white
                                        : Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: isLightTheme(context: context)
                                            ? CupertinoColors.systemGrey4
                                            : CupertinoTheme.of(context)
                                                .primaryColor,
                                        blurRadius: 3,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        data.articles[index].title ?? '',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(data.articles[index].description ??
                                          ''),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const Icon(Icons.more_horiz),
                                          Text(data.articles[index]
                                                      .publishedAt !=
                                                  null
                                              ? DateFormat('dd.MM')
                                                  .add_jm()
                                                  .format(DateTime.parse(data
                                                      .articles[index]
                                                      .publishedAt!))
                                              : '')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return const CircularProgressIndicator.adaptive();
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