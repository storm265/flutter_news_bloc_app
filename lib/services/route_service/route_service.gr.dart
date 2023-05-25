// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'route_service.dart';

abstract class _$RouteService extends RootStackRouter {
  // ignore: unused_element
  _$RouteService({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    DetailedNewsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedNewsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailedNewsPage(
          key: args.key,
          articleModel: args.articleModel,
        ),
      );
    },
    NavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationPage(),
      );
    },
    InititialRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InititialPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SearchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
  };
}

/// generated route for
/// [DetailedNewsPage]
class DetailedNewsRoute extends PageRouteInfo<DetailedNewsRouteArgs> {
  DetailedNewsRoute({
    Key? key,
    required ArticleDTO articleModel,
    List<PageRouteInfo>? children,
  }) : super(
          DetailedNewsRoute.name,
          args: DetailedNewsRouteArgs(
            key: key,
            articleModel: articleModel,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedNewsRoute';

  static const PageInfo<DetailedNewsRouteArgs> page =
      PageInfo<DetailedNewsRouteArgs>(name);
}

class DetailedNewsRouteArgs {
  const DetailedNewsRouteArgs({
    this.key,
    required this.articleModel,
  });

  final Key? key;

  final ArticleDTO articleModel;

  @override
  String toString() {
    return 'DetailedNewsRouteArgs{key: $key, articleModel: $articleModel}';
  }
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InititialPage]
class InititialRoute extends PageRouteInfo<void> {
  const InititialRoute({List<PageRouteInfo>? children})
      : super(
          InititialRoute.name,
          initialChildren: children,
        );

  static const String name = 'InititialRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsPage]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
