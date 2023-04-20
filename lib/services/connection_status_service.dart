import 'package:internet_connection_checker/internet_connection_checker.dart';

mixin ConnectionStatusMixin {
  final _internetConnectionChecker = InternetConnectionChecker();

  Future<bool> isConnected() async =>
      await _internetConnectionChecker.hasConnection;
}