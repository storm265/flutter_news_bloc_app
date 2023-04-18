import 'package:flutter/cupertino.dart';

class NewsContainerWidget extends StatelessWidget {
  final VoidCallback? callback;
  final bool? isSelected;
  final String title;
  const NewsContainerWidget({
    super.key,
    required this.title,
    this.callback,
    this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(2.1),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: isSelected == true
                          ? CupertinoTheme.of(context)
                              .primaryColor
                              .withOpacity(0.8)
                          : CupertinoTheme.of(context)
                              .textTheme
                              .textStyle
                              .color,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 100,
                height: 2,
                color: isSelected == true
                    ? CupertinoTheme.of(context).primaryColor.withOpacity(0.8)
                    : CupertinoColors.systemGrey2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
