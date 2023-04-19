import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/app_themes.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitialState(theme: AppThemes.lightIOS));



  void updateTheme() {
    final newTheme = state.theme == AppThemes.lightIOS
        ? AppThemes.darkIOS
        : AppThemes.lightIOS;
    emit(UpdatedThemeState(theme: newTheme));
  }
}
