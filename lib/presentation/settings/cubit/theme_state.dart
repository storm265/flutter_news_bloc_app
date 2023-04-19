import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class ThemeState extends Equatable {
  final CupertinoThemeData theme;
  const ThemeState({required this.theme});

  @override
  List<Object> get props => [theme];
}

class ThemeInitialState extends ThemeState {
  const ThemeInitialState({required super.theme});
}

class UpdatedThemeState extends ThemeState {
  const UpdatedThemeState({required super.theme});
}
