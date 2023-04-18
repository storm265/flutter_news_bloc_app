import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_cubit.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('ToDo list'),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CupertinoIcons.moon),
            CupertinoSwitch(
              value: context.watch<ThemeCubit>().isLightTheme,
              onChanged: (_) => context.read<ThemeCubit>().updateTheme(),
            ),
            const Icon(CupertinoIcons.sun_max),
          ],
        ),
      ),
    );
  }
}
