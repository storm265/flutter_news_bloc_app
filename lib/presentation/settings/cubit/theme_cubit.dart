import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/app_themes.dart';

class ThemeCubit extends Cubit<CupertinoThemeData> {
  ThemeCubit() : super(AppThemes.lightIOS);

  bool isLightTheme = true;

  void updateTheme() {
    isLightTheme = !isLightTheme;
    emit(isLightTheme ? AppThemes.lightIOS : AppThemes.darkIOS);
  }
}
