// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.top_rated.get.params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopRatedMoviesGetParams _$TopRatedMoviesGetParamsFromJson(
    Map<String, dynamic> json) {
  return _TopRatedMoviesGetParams.fromJson(json);
}

/// @nodoc
mixin _$TopRatedMoviesGetParams {
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  MovieRegion get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopRatedMoviesGetParamsCopyWith<TopRatedMoviesGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedMoviesGetParamsCopyWith<$Res> {
  factory $TopRatedMoviesGetParamsCopyWith(TopRatedMoviesGetParams value,
          $Res Function(TopRatedMoviesGetParams) then) =
      _$TopRatedMoviesGetParamsCopyWithImpl<$Res, TopRatedMoviesGetParams>;
  @useResult
  $Res call({String language, int page, MovieRegion region});
}

/// @nodoc
class _$TopRatedMoviesGetParamsCopyWithImpl<$Res,
        $Val extends TopRatedMoviesGetParams>
    implements $TopRatedMoviesGetParamsCopyWith<$Res> {
  _$TopRatedMoviesGetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? page = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as MovieRegion,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopRatedMoviesGetParamsCopyWith<$Res>
    implements $TopRatedMoviesGetParamsCopyWith<$Res> {
  factory _$$_TopRatedMoviesGetParamsCopyWith(_$_TopRatedMoviesGetParams value,
          $Res Function(_$_TopRatedMoviesGetParams) then) =
      __$$_TopRatedMoviesGetParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String language, int page, MovieRegion region});
}

/// @nodoc
class __$$_TopRatedMoviesGetParamsCopyWithImpl<$Res>
    extends _$TopRatedMoviesGetParamsCopyWithImpl<$Res,
        _$_TopRatedMoviesGetParams>
    implements _$$_TopRatedMoviesGetParamsCopyWith<$Res> {
  __$$_TopRatedMoviesGetParamsCopyWithImpl(_$_TopRatedMoviesGetParams _value,
      $Res Function(_$_TopRatedMoviesGetParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? page = null,
    Object? region = null,
  }) {
    return _then(_$_TopRatedMoviesGetParams(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as MovieRegion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopRatedMoviesGetParams
    with DiagnosticableTreeMixin
    implements _TopRatedMoviesGetParams {
  _$_TopRatedMoviesGetParams(
      {this.language = 'en-US', this.page = 1, this.region = MovieRegion.US});

  factory _$_TopRatedMoviesGetParams.fromJson(Map<String, dynamic> json) =>
      _$$_TopRatedMoviesGetParamsFromJson(json);

  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final MovieRegion region;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopRatedMoviesGetParams(language: $language, page: $page, region: $region)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopRatedMoviesGetParams'))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('region', region));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopRatedMoviesGetParams &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, page, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopRatedMoviesGetParamsCopyWith<_$_TopRatedMoviesGetParams>
      get copyWith =>
          __$$_TopRatedMoviesGetParamsCopyWithImpl<_$_TopRatedMoviesGetParams>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopRatedMoviesGetParamsToJson(
      this,
    );
  }
}

abstract class _TopRatedMoviesGetParams implements TopRatedMoviesGetParams {
  factory _TopRatedMoviesGetParams(
      {final String language,
      final int page,
      final MovieRegion region}) = _$_TopRatedMoviesGetParams;

  factory _TopRatedMoviesGetParams.fromJson(Map<String, dynamic> json) =
      _$_TopRatedMoviesGetParams.fromJson;

  @override
  String get language;
  @override
  int get page;
  @override
  MovieRegion get region;
  @override
  @JsonKey(ignore: true)
  _$$_TopRatedMoviesGetParamsCopyWith<_$_TopRatedMoviesGetParams>
      get copyWith => throw _privateConstructorUsedError;
}
