import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:todo_bloc_practice/presentation/search_page/widgets/search_bar_widget.dart';

@RoutePage()
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: SafeArea(
        child: SearchBarWidget(),
      ),
    );
  }
}
