import 'dart:ui';

import 'package:flutter/cupertino.dart';

class BlurWidget extends StatelessWidget {
  final double sigmaX;
  final double sigmaY;
  final double? width;
  final Widget child;
  const BlurWidget({
    Key? key,
    this.sigmaX = 5.0,
    this.sigmaY = 5.0,
    this.width,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusDirectional.circular(12),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: SizedBox(
          width: width,
          child: child,
        ),
      ),
    );
  }
}
