// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'everything_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EverythingDTO _$EverythingDTOFromJson(Map<String, dynamic> json) {
  return _EverythingDTO.fromJson(json);
}

/// @nodoc
mixin _$EverythingDTO {
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleDTO>? get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythingDTOCopyWith<EverythingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythingDTOCopyWith<$Res> {
  factory $EverythingDTOCopyWith(
          EverythingDTO value, $Res Function(EverythingDTO) then) =
      _$EverythingDTOCopyWithImpl<$Res, EverythingDTO>;
  @useResult
  $Res call({int? totalResults, List<ArticleDTO>? articles});
}

/// @nodoc
class _$EverythingDTOCopyWithImpl<$Res, $Val extends EverythingDTO>
    implements $EverythingDTOCopyWith<$Res> {
  _$EverythingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EverythingDTOCopyWith<$Res>
    implements $EverythingDTOCopyWith<$Res> {
  factory _$$_EverythingDTOCopyWith(
          _$_EverythingDTO value, $Res Function(_$_EverythingDTO) then) =
      __$$_EverythingDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? totalResults, List<ArticleDTO>? articles});
}

/// @nodoc
class __$$_EverythingDTOCopyWithImpl<$Res>
    extends _$EverythingDTOCopyWithImpl<$Res, _$_EverythingDTO>
    implements _$$_EverythingDTOCopyWith<$Res> {
  __$$_EverythingDTOCopyWithImpl(
      _$_EverythingDTO _value, $Res Function(_$_EverythingDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_$_EverythingDTO(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EverythingDTO implements _EverythingDTO {
  _$_EverythingDTO(
      {required this.totalResults, required final List<ArticleDTO>? articles})
      : _articles = articles;

  factory _$_EverythingDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EverythingDTOFromJson(json);

  @override
  final int? totalResults;
  final List<ArticleDTO>? _articles;
  @override
  List<ArticleDTO>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EverythingDTO(totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EverythingDTO &&
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
  _$$_EverythingDTOCopyWith<_$_EverythingDTO> get copyWith =>
      __$$_EverythingDTOCopyWithImpl<_$_EverythingDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EverythingDTOToJson(
      this,
    );
  }
}

abstract class _EverythingDTO implements EverythingDTO {
  factory _EverythingDTO(
      {required final int? totalResults,
      required final List<ArticleDTO>? articles}) = _$_EverythingDTO;

  factory _EverythingDTO.fromJson(Map<String, dynamic> json) =
      _$_EverythingDTO.fromJson;

  @override
  int? get totalResults;
  @override
  List<ArticleDTO>? get articles;
  @override
  @JsonKey(ignore: true)
  _$$_EverythingDTOCopyWith<_$_EverythingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
