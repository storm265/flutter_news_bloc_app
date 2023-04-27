import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_bloc_practice/presentation/settings/app_themes.dart';
import 'package:todo_bloc_practice/presentation/settings/state/theme/theme_state.dart';
import 'package:todo_bloc_practice/schemas/storage_scheme.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeInitialState(theme: AppThemes.lightIOS)) {
    _setUpTheme();
  }

  Future<void> updateTheme() async {
    final newTheme = state.theme == AppThemes.lightIOS
        ? AppThemes.darkIOS
        : AppThemes.lightIOS;
    await _saveTheme(
        isLightMode: state.theme == AppThemes.lightIOS ? false : true);
    emit(UpdatedThemeState(theme: newTheme));
  }

  Future<void> _setUpTheme() async {
    final isLightMode = await _getCurrentTheme();

    isLightMode == null || isLightMode == true
        ? emit(const UpdatedThemeState(theme: AppThemes.lightIOS))
        : emit(const UpdatedThemeState(theme: AppThemes.darkIOS));
  }

  Future<bool?> _getCurrentTheme() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(StorageScheme.isLightMode);
  }

  Future<void> _saveTheme({required bool isLightMode}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(StorageScheme.isLightMode, isLightMode);
  }
}
