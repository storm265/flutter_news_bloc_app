import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/news_list/news_screen.dart';
import 'package:todo_bloc_practice/presentation/settings/settings_screen.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationInitialState());

  final _screens = [
    const NewsScreen(),
    const SettingsScreen(),
  ];

  get getScreens => _screens;

  int currentIndex = 0;

  void changeBottomNavBar(int index) {
    currentIndex = index;
    emit(const UpdateNavigationState());
  }
}
