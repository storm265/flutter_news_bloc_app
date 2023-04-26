// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:todo_bloc_practice/presentation/widgets/blur_widget.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: BlurWidget(
          width: 150,
          child: CupertinoTextField(
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
