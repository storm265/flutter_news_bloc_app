import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_bloc_practice/presentation/initial_page/assets_provider.dart';
part 'initial_state.dart';

class InitialCubit extends Cubit<InitialState> {
  InitialCubit() : super(const InitialIndexState(selectedIndex: 0));

  final pageController = PageController();
  final assetsProvider = AssetsProvider();
  static const _isFirstTimeVisitKey = 'isFirstTimeVisit';

  Future<void> saveIsFirstTimeVisitLocally({required bool isFirstVisit}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_isFirstTimeVisitKey, isFirstVisit);
  }

  Future<bool> isFirstUserVisit() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isFirstTimeVisitKey) == null ? true : false;
  }

  Future<void> changePageIndex(int newIndex) async {
    if (newIndex >= 0 && newIndex <= 3) {
      await _animateToPage(newIndex);
      emit(UpdateIndexState(selectedIndex: newIndex));
    }
  }

  Future<void> _animateToPage(int page) async {
    await pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }
}
