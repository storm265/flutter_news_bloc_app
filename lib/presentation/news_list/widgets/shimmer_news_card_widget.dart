import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

final _rndHeight = [
  100,
  80,
  60,
  140,
  40,
  180,
];

class ShimmerNewsCardWidget extends StatelessWidget {
  const ShimmerNewsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Shimmer.fromColors(
        baseColor: CupertinoColors.systemGrey3,
        highlightColor: CupertinoColors.white,
        child: Container(
          height: _rndHeight[Random().nextInt(_rndHeight.length)].toDouble(),
          padding: const EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: isLightTheme(context: context)
                    ? CupertinoColors.systemGrey4
                    : CupertinoTheme.of(context).primaryColor,
                blurRadius: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
