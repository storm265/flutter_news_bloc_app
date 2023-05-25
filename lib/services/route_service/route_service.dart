import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';
import 'package:todo_bloc_practice/presentation/detailed_news_page/detailed_news_page.dart';
import 'package:todo_bloc_practice/presentation/home_page/navigation_page.dart';
import 'package:todo_bloc_practice/presentation/search_page/search_page.dart';
import 'package:todo_bloc_practice/presentation/initial_page/initial_page.dart';
import 'package:todo_bloc_practice/presentation/news_page/news_page.dart';
import 'package:todo_bloc_practice/presentation/settings/settings_page.dart';
part 'route_service.gr.dart';

@AutoRouterConfig()
class RouteService extends _$RouteService {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: InititialRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: NewsRoute.page),
        AutoRoute(page: NavigationRoute.page),
        AutoRoute(page: DetailedNewsRoute.page),
        AutoRoute(page: SearchRoute.page),
      ];
}
