import 'package:flutter/cupertino.dart';

class AppThemes {
  static const lightIOS = CupertinoThemeData(
    brightness: Brightness.light,
    primaryColor: CupertinoColors.destructiveRed,
  );

  static const darkIOS = CupertinoThemeData(
    brightness: Brightness.dark,
    primaryColor: CupertinoColors.destructiveRed,
  );
}
