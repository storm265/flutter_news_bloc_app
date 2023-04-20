import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/annotations.dart';
import 'state/navigation/navigation_cubit.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
