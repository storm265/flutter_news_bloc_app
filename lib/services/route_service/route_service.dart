import 'package:auto_route/auto_route.dart';
import 'package:todo_bloc_practice/presentation/home_page/home_page.dart';
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
        AutoRoute(page: HomeRoute.page),
      ];
}
