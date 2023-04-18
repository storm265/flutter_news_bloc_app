import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_bloc_practice/data/models/article_model/article_model.dart';

part 'everything_model.freezed.dart';
part 'everything_model.g.dart';

@freezed
class EverythingModel with _$EverythingModel {
  factory EverythingModel({
    required int? totalResults,
    required List<ArticleModel>? articles,
    required String? username,
    required String? email,
  }) = _EverythingModel;

  factory EverythingModel.fromJson(Map<String, Object?> json) =>
      _$EverythingModelFromJson(json);
}
