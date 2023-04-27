import 'package:flutter/cupertino.dart';
import 'package:auto_route/annotations.dart';
import 'package:todo_bloc_practice/presentation/settings/regions_list.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: SizedBox(),
        middle: Text('Settings'),
      ),
      child: SafeArea(
        child: RegionsListWidget(),
      ),
    );
  }
}
