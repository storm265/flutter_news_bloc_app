import 'package:flutter/services.dart';

class SystemChromeProvider {
  static Future<void> setSystemChrome() async {
    await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft]);
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }
}
