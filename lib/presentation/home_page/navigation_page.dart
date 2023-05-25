import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'state/navigation/navigation_cubit.dart';
import 'package:auto_route/annotations.dart';
@RoutePage()
class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (__, state) {
        return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            onTap: (newIndex) =>
                context.read<NavigationCubit>().changeBottomNavBar(newIndex),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.news),
                label: 'News',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings),
                label: 'Settings',
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) =>
              context.read<NavigationCubit>().getScreens[state.pageIndex],
        );
      },
    );
  }
}
