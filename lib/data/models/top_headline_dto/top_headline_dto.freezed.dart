// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_headline_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopHeadlineDTO _$TopHeadlineDTOFromJson(Map<String, dynamic> json) {
  return _TopHeadlineDTO.fromJson(json);
}

/// @nodoc
mixin _$TopHeadlineDTO {
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleDTO> get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopHeadlineDTOCopyWith<TopHeadlineDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopHeadlineDTOCopyWith<$Res> {
  factory $TopHeadlineDTOCopyWith(
          TopHeadlineDTO value, $Res Function(TopHeadlineDTO) then) =
      _$TopHeadlineDTOCopyWithImpl<$Res, TopHeadlineDTO>;
  @useResult
  $Res call({int? totalResults, List<ArticleDTO> articles});
}

/// @nodoc
class _$TopHeadlineDTOCopyWithImpl<$Res, $Val extends TopHeadlineDTO>
    implements $TopHeadlineDTOCopyWith<$Res> {
  _$TopHeadlineDTOCopyWithImpl(this._value, this._then);

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
              as List<ArticleDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopHeadlineDTOCopyWith<$Res>
    implements $TopHeadlineDTOCopyWith<$Res> {
  factory _$$_TopHeadlineDTOCopyWith(
          _$_TopHeadlineDTO value, $Res Function(_$_TopHeadlineDTO) then) =
      __$$_TopHeadlineDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalResults, List<ArticleDTO> articles});
}

/// @nodoc
class __$$_TopHeadlineDTOCopyWithImpl<$Res>
    extends _$TopHeadlineDTOCopyWithImpl<$Res, _$_TopHeadlineDTO>
    implements _$$_TopHeadlineDTOCopyWith<$Res> {
  __$$_TopHeadlineDTOCopyWithImpl(
      _$_TopHeadlineDTO _value, $Res Function(_$_TopHeadlineDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = null,
  }) {
    return _then(_$_TopHeadlineDTO(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopHeadlineDTO implements _TopHeadlineDTO {
  _$_TopHeadlineDTO(
      {required this.totalResults, required final List<ArticleDTO> articles})
      : _articles = articles;

  factory _$_TopHeadlineDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TopHeadlineDTOFromJson(json);

  @override
  final int? totalResults;
  final List<ArticleDTO> _articles;
  @override
  List<ArticleDTO> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'TopHeadlineDTO(totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopHeadlineDTO &&
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
  _$$_TopHeadlineDTOCopyWith<_$_TopHeadlineDTO> get copyWith =>
      __$$_TopHeadlineDTOCopyWithImpl<_$_TopHeadlineDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopHeadlineDTOToJson(
      this,
    );
  }
}

abstract class _TopHeadlineDTO implements TopHeadlineDTO {
  factory _TopHeadlineDTO(
      {required final int? totalResults,
      required final List<ArticleDTO> articles}) = _$_TopHeadlineDTO;

  factory _TopHeadlineDTO.fromJson(Map<String, dynamic> json) =
      _$_TopHeadlineDTO.fromJson;

  @override
  int? get totalResults;
  @override
  List<ArticleDTO> get articles;
  @override
  @JsonKey(ignore: true)
  _$$_TopHeadlineDTOCopyWith<_$_TopHeadlineDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
