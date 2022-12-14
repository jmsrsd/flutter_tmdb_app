// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesModel _$MoviesModelFromJson(Map<String, dynamic> json) {
  return _MoviesModel.fromJson(json);
}

/// @nodoc
mixin _$MoviesModel {
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<MovieModel> get results => throw _privateConstructorUsedError;
  MoviesGetParams get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesModelCopyWith<MoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesModelCopyWith<$Res> {
  factory $MoviesModelCopyWith(
          MoviesModel value, $Res Function(MoviesModel) then) =
      _$MoviesModelCopyWithImpl<$Res, MoviesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<MovieModel> results,
      MoviesGetParams params});

  $MoviesGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$MoviesModelCopyWithImpl<$Res, $Val extends MoviesModel>
    implements $MoviesModelCopyWith<$Res> {
  _$MoviesModelCopyWithImpl(this._value, this._then);

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
              as MoviesGetParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoviesGetParamsCopyWith<$Res> get params {
    return $MoviesGetParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoviesModelCopyWith<$Res>
    implements $MoviesModelCopyWith<$Res> {
  factory _$$_MoviesModelCopyWith(
          _$_MoviesModel value, $Res Function(_$_MoviesModel) then) =
      __$$_MoviesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<MovieModel> results,
      MoviesGetParams params});

  @override
  $MoviesGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$_MoviesModelCopyWithImpl<$Res>
    extends _$MoviesModelCopyWithImpl<$Res, _$_MoviesModel>
    implements _$$_MoviesModelCopyWith<$Res> {
  __$$_MoviesModelCopyWithImpl(
      _$_MoviesModel _value, $Res Function(_$_MoviesModel) _then)
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
    return _then(_$_MoviesModel(
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
              as MoviesGetParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesModel with DiagnosticableTreeMixin implements _MoviesModel {
  _$_MoviesModel(
      {@JsonKey(name: 'total_pages') this.totalPages = -1,
      @JsonKey(name: 'total_results') this.totalResults = -1,
      this.page = -1,
      final List<MovieModel> results = const <MovieModel>[],
      required this.params})
      : _results = results;

  factory _$_MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesModelFromJson(json);

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
  final MoviesGetParams params;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MoviesModel(totalPages: $totalPages, totalResults: $totalResults, page: $page, results: $results, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MoviesModel'))
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
            other is _$_MoviesModel &&
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
  _$$_MoviesModelCopyWith<_$_MoviesModel> get copyWith =>
      __$$_MoviesModelCopyWithImpl<_$_MoviesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesModelToJson(
      this,
    );
  }
}

abstract class _MoviesModel implements MoviesModel {
  factory _MoviesModel(
      {@JsonKey(name: 'total_pages') final int totalPages,
      @JsonKey(name: 'total_results') final int totalResults,
      final int page,
      final List<MovieModel> results,
      required final MoviesGetParams params}) = _$_MoviesModel;

  factory _MoviesModel.fromJson(Map<String, dynamic> json) =
      _$_MoviesModel.fromJson;

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
  MoviesGetParams get params;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesModelCopyWith<_$_MoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
