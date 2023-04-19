import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_bloc_practice/data/models/article_model/article_model.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

class NewsCardWidget extends StatelessWidget {
  final ArticleModel articleModel;
  const NewsCardWidget({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
          color: isLightTheme(context: context) ? Colors.white : Colors.black,
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
        child: Column(
          children: [
            Text(
              articleModel.title ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            Text(articleModel.description ?? ''),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.more_horiz),
                Text(articleModel.publishedAt != null
                    ? DateFormat('dd.MM')
                        .add_jm()
                        .format(DateTime.parse(articleModel.publishedAt!))
                    : '')
              ],
            )
          ],
        ),
      ),
    );
  }
}
