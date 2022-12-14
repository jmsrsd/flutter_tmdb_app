// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.get.params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesGetParams _$MoviesGetParamsFromJson(Map<String, dynamic> json) {
  return _MoviesGetParams.fromJson(json);
}

/// @nodoc
mixin _$MoviesGetParams {
  MoviesGroup get group => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  MovieRegion get region => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesGetParamsCopyWith<MoviesGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesGetParamsCopyWith<$Res> {
  factory $MoviesGetParamsCopyWith(
          MoviesGetParams value, $Res Function(MoviesGetParams) then) =
      _$MoviesGetParamsCopyWithImpl<$Res, MoviesGetParams>;
  @useResult
  $Res call({MoviesGroup group, String language, int page, MovieRegion region});
}

/// @nodoc
class _$MoviesGetParamsCopyWithImpl<$Res, $Val extends MoviesGetParams>
    implements $MoviesGetParamsCopyWith<$Res> {
  _$MoviesGetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? language = null,
    Object? page = null,
    Object? region = null,
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as MoviesGroup,
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
abstract class _$$_MoviesGetParamsCopyWith<$Res>
    implements $MoviesGetParamsCopyWith<$Res> {
  factory _$$_MoviesGetParamsCopyWith(
          _$_MoviesGetParams value, $Res Function(_$_MoviesGetParams) then) =
      __$$_MoviesGetParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoviesGroup group, String language, int page, MovieRegion region});
}

/// @nodoc
class __$$_MoviesGetParamsCopyWithImpl<$Res>
    extends _$MoviesGetParamsCopyWithImpl<$Res, _$_MoviesGetParams>
    implements _$$_MoviesGetParamsCopyWith<$Res> {
  __$$_MoviesGetParamsCopyWithImpl(
      _$_MoviesGetParams _value, $Res Function(_$_MoviesGetParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? language = null,
    Object? page = null,
    Object? region = null,
  }) {
    return _then(_$_MoviesGetParams(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as MoviesGroup,
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
class _$_MoviesGetParams
    with DiagnosticableTreeMixin
    implements _MoviesGetParams {
  _$_MoviesGetParams(
      {this.group = MoviesGroup.topRated,
      this.language = 'en-US',
      this.page = 1,
      this.region = MovieRegion.US});

  factory _$_MoviesGetParams.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesGetParamsFromJson(json);

  @override
  @JsonKey()
  final MoviesGroup group;
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
    return 'MoviesGetParams(group: $group, language: $language, page: $page, region: $region)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesGetParams'))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('region', region));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesGetParams &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.region, region) || other.region == region));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group, language, page, region);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesGetParamsCopyWith<_$_MoviesGetParams> get copyWith =>
      __$$_MoviesGetParamsCopyWithImpl<_$_MoviesGetParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesGetParamsToJson(
      this,
    );
  }
}

abstract class _MoviesGetParams implements MoviesGetParams {
  factory _MoviesGetParams(
      {final MoviesGroup group,
      final String language,
      final int page,
      final MovieRegion region}) = _$_MoviesGetParams;

  factory _MoviesGetParams.fromJson(Map<String, dynamic> json) =
      _$_MoviesGetParams.fromJson;

  @override
  MoviesGroup get group;
  @override
  String get language;
  @override
  int get page;
  @override
  MovieRegion get region;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesGetParamsCopyWith<_$_MoviesGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}
