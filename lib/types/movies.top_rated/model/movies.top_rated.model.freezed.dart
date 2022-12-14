// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.top_rated.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopRatedMoviesModel _$TopRatedMoviesModelFromJson(Map<String, dynamic> json) {
  return _TopRatedMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$TopRatedMoviesModel {
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<MovieModel> get results => throw _privateConstructorUsedError;
  TopRatedMoviesGetParams get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopRatedMoviesModelCopyWith<TopRatedMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedMoviesModelCopyWith<$Res> {
  factory $TopRatedMoviesModelCopyWith(
          TopRatedMoviesModel value, $Res Function(TopRatedMoviesModel) then) =
      _$TopRatedMoviesModelCopyWithImpl<$Res, TopRatedMoviesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<MovieModel> results,
      TopRatedMoviesGetParams params});

  $TopRatedMoviesGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$TopRatedMoviesModelCopyWithImpl<$Res, $Val extends TopRatedMoviesModel>
    implements $TopRatedMoviesModelCopyWith<$Res> {
  _$TopRatedMoviesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalResults = null,
    Object? page = null,
    Object? results = null,
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TopRatedMoviesGetParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TopRatedMoviesGetParamsCopyWith<$Res> get params {
    return $TopRatedMoviesGetParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TopRatedMoviesModelCopyWith<$Res>
    implements $TopRatedMoviesModelCopyWith<$Res> {
  factory _$$_TopRatedMoviesModelCopyWith(_$_TopRatedMoviesModel value,
          $Res Function(_$_TopRatedMoviesModel) then) =
      __$$_TopRatedMoviesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<MovieModel> results,
      TopRatedMoviesGetParams params});

  @override
  $TopRatedMoviesGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$_TopRatedMoviesModelCopyWithImpl<$Res>
    extends _$TopRatedMoviesModelCopyWithImpl<$Res, _$_TopRatedMoviesModel>
    implements _$$_TopRatedMoviesModelCopyWith<$Res> {
  __$$_TopRatedMoviesModelCopyWithImpl(_$_TopRatedMoviesModel _value,
      $Res Function(_$_TopRatedMoviesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPages = null,
    Object? totalResults = null,
    Object? page = null,
    Object? results = null,
    Object? params = null,
  }) {
    return _then(_$_TopRatedMoviesModel(
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TopRatedMoviesGetParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopRatedMoviesModel
    with DiagnosticableTreeMixin
    implements _TopRatedMoviesModel {
  _$_TopRatedMoviesModel(
      {@JsonKey(name: 'total_pages') this.totalPages = -1,
      @JsonKey(name: 'total_results') this.totalResults = -1,
      this.page = -1,
      final List<MovieModel> results = const <MovieModel>[],
      required this.params})
      : _results = results;

  factory _$_TopRatedMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopRatedMoviesModelFromJson(json);

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey()
  final int page;
  final List<MovieModel> _results;
  @override
  @JsonKey()
  List<MovieModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final TopRatedMoviesGetParams params;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TopRatedMoviesModel(totalPages: $totalPages, totalResults: $totalResults, page: $page, results: $results, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TopRatedMoviesModel'))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('totalResults', totalResults))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('params', params));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopRatedMoviesModel &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.params, params) || other.params == params));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPages, totalResults, page,
      const DeepCollectionEquality().hash(_results), params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopRatedMoviesModelCopyWith<_$_TopRatedMoviesModel> get copyWith =>
      __$$_TopRatedMoviesModelCopyWithImpl<_$_TopRatedMoviesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopRatedMoviesModelToJson(
      this,
    );
  }
}

abstract class _TopRatedMoviesModel implements TopRatedMoviesModel {
  factory _TopRatedMoviesModel(
      {@JsonKey(name: 'total_pages') final int totalPages,
      @JsonKey(name: 'total_results') final int totalResults,
      final int page,
      final List<MovieModel> results,
      required final TopRatedMoviesGetParams params}) = _$_TopRatedMoviesModel;

  factory _TopRatedMoviesModel.fromJson(Map<String, dynamic> json) =
      _$_TopRatedMoviesModel.fromJson;

  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  int get page;
  @override
  List<MovieModel> get results;
  @override
  TopRatedMoviesGetParams get params;
  @override
  @JsonKey(ignore: true)
  _$$_TopRatedMoviesModelCopyWith<_$_TopRatedMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
