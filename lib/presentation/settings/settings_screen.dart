import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/app_themes.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_cubit.dart';
import 'package:auto_route/annotations.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_state.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

@RoutePage()
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
        middle: Text('Settings'),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CupertinoIcons.moon),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return CupertinoSwitch(
                  value: isLightTheme(context: context) ? false : true,
                  onChanged: (_) => context.read<ThemeCubit>().updateTheme(),
                );
              },
            ),
            const Icon(CupertinoIcons.sun_max),
          ],
        ),
      ),
    );
  }
}
