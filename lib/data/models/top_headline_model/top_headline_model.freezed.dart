// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_headline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopHeadlineModel _$TopHeadlineModelFromJson(Map<String, dynamic> json) {
  return _TopHeadlineModel.fromJson(json);
}

/// @nodoc
mixin _$TopHeadlineModel {
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleModel> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopHeadlineModelCopyWith<TopHeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopHeadlineModelCopyWith<$Res> {
  factory $TopHeadlineModelCopyWith(
          TopHeadlineModel value, $Res Function(TopHeadlineModel) then) =
      _$TopHeadlineModelCopyWithImpl<$Res, TopHeadlineModel>;
  @useResult
  $Res call({int? totalResults, List<ArticleModel> articles});
}

/// @nodoc
class _$TopHeadlineModelCopyWithImpl<$Res, $Val extends TopHeadlineModel>
    implements $TopHeadlineModelCopyWith<$Res> {
  _$TopHeadlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopHeadlineModelCopyWith<$Res>
    implements $TopHeadlineModelCopyWith<$Res> {
  factory _$$_TopHeadlineModelCopyWith(
          _$_TopHeadlineModel value, $Res Function(_$_TopHeadlineModel) then) =
      __$$_TopHeadlineModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalResults, List<ArticleModel> articles});
}

/// @nodoc
class __$$_TopHeadlineModelCopyWithImpl<$Res>
    extends _$TopHeadlineModelCopyWithImpl<$Res, _$_TopHeadlineModel>
    implements _$$_TopHeadlineModelCopyWith<$Res> {
  __$$_TopHeadlineModelCopyWithImpl(
      _$_TopHeadlineModel _value, $Res Function(_$_TopHeadlineModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_$_TopHeadlineModel(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopHeadlineModel implements _TopHeadlineModel {
  _$_TopHeadlineModel(
      {required this.totalResults, required final List<ArticleModel> articles})
      : _articles = articles;

  factory _$_TopHeadlineModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopHeadlineModelFromJson(json);

  @override
  final int? totalResults;
  final List<ArticleModel> _articles;
  @override
  List<ArticleModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'TopHeadlineModel(totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopHeadlineModel &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults,
      const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopHeadlineModelCopyWith<_$_TopHeadlineModel> get copyWith =>
      __$$_TopHeadlineModelCopyWithImpl<_$_TopHeadlineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopHeadlineModelToJson(
      this,
    );
  }
}

abstract class _TopHeadlineModel implements TopHeadlineModel {
  factory _TopHeadlineModel(
      {required final int? totalResults,
      required final List<ArticleModel> articles}) = _$_TopHeadlineModel;

  factory _TopHeadlineModel.fromJson(Map<String, dynamic> json) =
      _$_TopHeadlineModel.fromJson;

  @override
  int? get totalResults;
  @override
  List<ArticleModel> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_TopHeadlineModelCopyWith<_$_TopHeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}
