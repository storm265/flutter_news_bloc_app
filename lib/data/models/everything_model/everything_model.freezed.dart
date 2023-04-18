// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'everything_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EverythingModel _$EverythingModelFromJson(Map<String, dynamic> json) {
  return _EverythingModel.fromJson(json);
}

/// @nodoc
mixin _$EverythingModel {
  int? get totalResults => throw _privateConstructorUsedError;
  List<ArticleModel>? get articles => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EverythingModelCopyWith<EverythingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EverythingModelCopyWith<$Res> {
  factory $EverythingModelCopyWith(
          EverythingModel value, $Res Function(EverythingModel) then) =
      _$EverythingModelCopyWithImpl<$Res, EverythingModel>;
  @useResult
  $Res call(
      {int? totalResults,
      List<ArticleModel>? articles,
      String? username,
      String? email});
}

/// @nodoc
class _$EverythingModelCopyWithImpl<$Res, $Val extends EverythingModel>
    implements $EverythingModelCopyWith<$Res> {
  _$EverythingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EverythingModelCopyWith<$Res>
    implements $EverythingModelCopyWith<$Res> {
  factory _$$_EverythingModelCopyWith(
          _$_EverythingModel value, $Res Function(_$_EverythingModel) then) =
      __$$_EverythingModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalResults,
      List<ArticleModel>? articles,
      String? username,
      String? email});
}

/// @nodoc
class __$$_EverythingModelCopyWithImpl<$Res>
    extends _$EverythingModelCopyWithImpl<$Res, _$_EverythingModel>
    implements _$$_EverythingModelCopyWith<$Res> {
  __$$_EverythingModelCopyWithImpl(
      _$_EverythingModel _value, $Res Function(_$_EverythingModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
    Object? articles = freezed,
    Object? username = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_EverythingModel(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleModel>?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EverythingModel implements _EverythingModel {
  _$_EverythingModel(
      {required this.totalResults,
      required final List<ArticleModel>? articles,
      required this.username,
      required this.email})
      : _articles = articles;

  factory _$_EverythingModel.fromJson(Map<String, dynamic> json) =>
      _$$_EverythingModelFromJson(json);

  @override
  final int? totalResults;
  final List<ArticleModel>? _articles;
  @override
  List<ArticleModel>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? username;
  @override
  final String? email;

  @override
  String toString() {
    return 'EverythingModel(totalResults: $totalResults, articles: $articles, username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EverythingModel &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults,
      const DeepCollectionEquality().hash(_articles), username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EverythingModelCopyWith<_$_EverythingModel> get copyWith =>
      __$$_EverythingModelCopyWithImpl<_$_EverythingModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EverythingModelToJson(
      this,
    );
  }
}

abstract class _EverythingModel implements EverythingModel {
  factory _EverythingModel(
      {required final int? totalResults,
      required final List<ArticleModel>? articles,
      required final String? username,
      required final String? email}) = _$_EverythingModel;

  factory _EverythingModel.fromJson(Map<String, dynamic> json) =
      _$_EverythingModel.fromJson;

  @override
  int? get totalResults;
  @override
  List<ArticleModel>? get articles;
  @override
  String? get username;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_EverythingModelCopyWith<_$_EverythingModel> get copyWith =>
      throw _privateConstructorUsedError;
}
