import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/news_page/news_page.dart';
import 'package:todo_bloc_practice/presentation/search_page/search_page.dart';
import 'package:todo_bloc_practice/presentation/settings/settings_page.dart';
part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationInitialState(pageIndex: 0));

  final _screens = [
    const NewsPage(),
    const SearchPage(),
    const SettingsPage(),
  ];

  get getScreens => _screens;

  void changeBottomNavBar(int index) {
    emit(UpdateNavigationState(pageIndex: index));
  }
}
