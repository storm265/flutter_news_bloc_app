import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc_practice/presentation/search_page/bloc/search_bloc.dart';
import 'package:todo_bloc_practice/presentation/widgets/blur_widget.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final searchBlocReader = context.read<SearchBloc>();
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Align(
        alignment: Alignment.topCenter,
        child: BlurWidget(
          width: 300,
          child: CupertinoTextField(
            controller: searchBlocReader.searchTextController,
            onChanged: (value) async {
              await Future.delayed(const Duration(seconds: 1)).then(
                (value) => searchBlocReader.add(
                  const GetEverythingEvent(),
                ),
              );
            },
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
              color: isLightTheme(context: context)
                  ? CupertinoColors.systemGrey.withOpacity(0.4)
                  : CupertinoColors.white.withOpacity(0.4),
            ),
            prefix: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                CupertinoIcons.search,
                color: isLightTheme(context: context)
                    ? CupertinoColors.black
                    : CupertinoColors.white,
                size: 20,
              ),
            ),
            placeholder: "Search:",
          ),
        ),
      ),
    );
  }
}
