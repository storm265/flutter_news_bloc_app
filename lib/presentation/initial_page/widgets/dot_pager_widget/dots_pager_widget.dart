import 'package:flutter/material.dart';
import 'package:todo_bloc_practice/presentation/initial_page/widgets/dot_pager_widget/dot_item_widget.dart';

class DotsPagerWidget extends StatelessWidget {
  final int pageIndex;
  final int itemCount;
  const DotsPagerWidget({
    Key? key,
    required this.pageIndex,
    required this.itemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      top: 500,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (_, index) => DotItemWidget(
            index: index,
            pageIndex: pageIndex,
          ),
        ),
      ),
    );
  }
}
