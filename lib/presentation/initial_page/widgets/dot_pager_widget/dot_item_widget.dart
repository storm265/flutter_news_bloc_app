import 'package:flutter/material.dart';

class DotItemWidget extends StatelessWidget {
  final int pageIndex;
  final int index;
  const DotItemWidget({
    Key? key,
    required this.index,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: CircleAvatar(
        backgroundColor: (index == pageIndex) ? Colors.black : Colors.grey,
        radius: 5,
      ),
    );
  }
}
