import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/navigation_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (__, _) {
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
          tabBuilder: (BuildContext context, int index) => context
              .read<NavigationCubit>()
              .getScreens[context.watch<NavigationCubit>().currentIndex],
        );
      },
    );
  }
}
