import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_cubit.dart';
import 'package:auto_route/annotations.dart';
import 'package:todo_bloc_practice/presentation/settings/cubit/theme_state.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

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
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: SizedBox(),
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
