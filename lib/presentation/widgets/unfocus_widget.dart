import 'package:flutter/cupertino.dart';

class UnfocusWidget extends StatelessWidget {
  final Widget child;
  final VoidCallback? callback;
  const UnfocusWidget({
    Key? key,
    this.callback,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callback;
        FocusScope.of(context).unfocus();
      },
      child: child,
    );
  }
}
