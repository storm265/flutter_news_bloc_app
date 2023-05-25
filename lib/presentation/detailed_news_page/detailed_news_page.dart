import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:todo_bloc_practice/data/models/article_dto/article_dto.dart';
import 'package:todo_bloc_practice/presentation/widgets/blur_widget.dart';
import 'package:todo_bloc_practice/utils/is_light_theme.dart';

@RoutePage()
class DetailedNewsPage extends StatelessWidget {
  final ArticleDTO articleModel;
  const DetailedNewsPage({
    super.key,
    required this.articleModel,
  });

  @override
  Widget build(BuildContext context) {
    log('usrl ${articleModel.urlToImage}');
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                articleModel.urlToImage ?? '',
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) => const SizedBox(),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: BlurWidget(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      articleModel.title ?? '',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 15,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () async => await AutoRouter.of(context).pop(),
                    child: const BlurWidget(
                      child: Icon(
                        CupertinoIcons.back,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: isLightTheme(context: context)
                  ? CupertinoColors.white
                  : CupertinoColors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Text(articleModel.content!),
          ),
          Text(
            articleModel.publishedAt != null
                ? DateFormat('dd.MM')
                    .add_jm()
                    .format(DateTime.parse(articleModel.publishedAt!))
                : '',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
          articleModel.author == null
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Written by: ${articleModel.author!}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
