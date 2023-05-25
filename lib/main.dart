import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource_impl.dart';
import 'package:todo_bloc_practice/data/repository/news_remote_repository_impl.dart';
import 'package:todo_bloc_practice/presentation/home_page/state/navigation/navigation_cubit.dart';
import 'package:todo_bloc_practice/presentation/initial_page/cubit/initial_cubit.dart';
import 'package:todo_bloc_practice/presentation/news_page/state/news_categories_cubit/news_categories_cubit.dart';
import 'package:todo_bloc_practice/presentation/search_page/bloc/search_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/state/region/region_cubit.dart';
import 'package:todo_bloc_practice/presentation/settings/state/theme/theme_cubit.dart';
import 'package:todo_bloc_practice/services/network_source.dart';
import 'package:todo_bloc_practice/services/route_service/route_service.dart';
import 'package:todo_bloc_practice/services/storage_service.dart';

import 'presentation/news_page/state/news/news_cubit.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  await dotenv.load(fileName: '.env');
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<NavigationCubit>(
          create: (_) => NavigationCubit(),
        ),
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<InitialCubit>(
          create: (_) => InitialCubit(),
        ),
        BlocProvider<NewsCategoriesCubit>(
          create: (_) => NewsCategoriesCubit(),
        ),
        BlocProvider<NewsCubit>(
          create: (_) => NewsCubit(
            storageService: StorageService(),
            newsRemoteRepository: NewsRemoteRepositoryImpl(
              newsRemoteDataSource: NewsRemoteDataSourceImpl(
                network: NetworkSource(),
              ),
            ),
          )..getNews(currentCategory: 'general'),
        ),
        BlocProvider<RegionCubit>(
          create: (_) => RegionCubit(storageService: StorageService()),
        ),
        BlocProvider<SearchBloc>(
          create: (_) => SearchBloc(
            storageService: StorageService(),
            newsRemoteRepository: NewsRemoteRepositoryImpl(
              newsRemoteDataSource: NewsRemoteDataSourceImpl(
                network: NetworkSource(),
              ),
            ),
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _routeService = RouteService();
  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routerConfig:
          _routeService.config(initialRoutes: [const InititialRoute()]),
      theme: context.watch<ThemeCubit>().state.theme,
    );
  }
}
