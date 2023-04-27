import 'package:flutter/cupertino.dart';
import 'package:dash_flags/dash_flags.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/settings/state/theme/theme_cubit.dart';
import 'package:todo_bloc_practice/presentation/settings/state/theme/theme_state.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

import 'state/region/region_cubit.dart';

class RegionsListWidget extends StatelessWidget {
  const RegionsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CupertinoListSection(
            children: [
              CupertinoListTile(
                onTap: () async =>
                    await context.read<RegionCubit>().showRegionDialog(context),
                title: const Text('News region'),
                trailing: BlocBuilder<RegionCubit, RegionState>(
                  builder: (context, state) {
                    return CountryFlag(
                      height: 25,
                      country: state.country,
                    );
                  },
                ),
              ),
              CupertinoListTile(
                title: const Text('Dark/Light theme'),
                trailing: BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    return CupertinoSwitch(
                      value: isLightTheme(context: context) ? true : false,
                      onChanged: (_) =>
                          context.read<ThemeCubit>().updateTheme(),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
