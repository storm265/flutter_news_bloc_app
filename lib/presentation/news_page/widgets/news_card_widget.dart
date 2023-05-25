import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';
import 'package:todo_bloc_practice/services/route_service/route_service.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

class NewsCardWidget extends StatelessWidget {
  final ArticleDTO articleModel;
  const NewsCardWidget({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => await AutoRouter.of(context).push(
        DetailedNewsRoute(articleModel: articleModel),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(12.0),
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
              Text(
                articleModel.description ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  articleModel.publishedAt != null
                      ? DateFormat('dd.MM')
                          .add_jm()
                          .format(DateTime.parse(articleModel.publishedAt!))
                      : '',
                  style: const TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
