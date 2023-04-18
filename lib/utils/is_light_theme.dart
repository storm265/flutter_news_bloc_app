import 'package:flutter/cupertino.dart';

bool isLightTheme({required BuildContext context}) =>
    CupertinoTheme.of(context).brightness == Brightness.light;
