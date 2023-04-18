import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todo_bloc_practice/data/datasources/news/news_remote_datasource_impl.dart';
import 'package:todo_bloc_practice/data/repository/news_remote_repository_impl.dart';
import 'package:todo_bloc_practice/presentation/home_page/cubit/navigation_cubit.dart';
import 'package:todo_bloc_practice/presentation/home_page/home_screen.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_cubit.dart';
import 'package:todo_bloc_practice/services/network_source.dart';
import 'presentation/news_list/cubit/news_categories_cubit.dart';

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
        BlocProvider<NewsCategoriesCubit>(
          create: (_) => NewsCategoriesCubit(
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, CupertinoThemeData>(
      builder: (_, theme) {
        return CupertinoApp(
          theme: theme,
          home: const MyHomePage(),
        );
      },
    );
  }
}
