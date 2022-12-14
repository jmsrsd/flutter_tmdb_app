// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tvs.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TVsModel _$TVsModelFromJson(Map<String, dynamic> json) {
  return _TVsModel.fromJson(json);
}

/// @nodoc
mixin _$TVsModel {
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<TVModel> get results => throw _privateConstructorUsedError;
  TVsGetParams get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TVsModelCopyWith<TVsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVsModelCopyWith<$Res> {
  factory $TVsModelCopyWith(TVsModel value, $Res Function(TVsModel) then) =
      _$TVsModelCopyWithImpl<$Res, TVsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<TVModel> results,
      TVsGetParams params});

  $TVsGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$TVsModelCopyWithImpl<$Res, $Val extends TVsModel>
    implements $TVsModelCopyWith<$Res> {
  _$TVsModelCopyWithImpl(this._value, this._then);

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
              as List<TVModel>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TVsGetParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TVsGetParamsCopyWith<$Res> get params {
    return $TVsGetParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TVsModelCopyWith<$Res> implements $TVsModelCopyWith<$Res> {
  factory _$$_TVsModelCopyWith(
          _$_TVsModel value, $Res Function(_$_TVsModel) then) =
      __$$_TVsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<TVModel> results,
      TVsGetParams params});

  @override
  $TVsGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$_TVsModelCopyWithImpl<$Res>
    extends _$TVsModelCopyWithImpl<$Res, _$_TVsModel>
    implements _$$_TVsModelCopyWith<$Res> {
  __$$_TVsModelCopyWithImpl(
      _$_TVsModel _value, $Res Function(_$_TVsModel) _then)
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
    return _then(_$_TVsModel(
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
              as List<TVModel>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as TVsGetParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TVsModel with DiagnosticableTreeMixin implements _TVsModel {
  _$_TVsModel(
      {@JsonKey(name: 'total_pages') this.totalPages = -1,
      @JsonKey(name: 'total_results') this.totalResults = -1,
      this.page = -1,
      final List<TVModel> results = const <TVModel>[],
      required this.params})
      : _results = results;

  factory _$_TVsModel.fromJson(Map<String, dynamic> json) =>
      _$$_TVsModelFromJson(json);

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey()
  final int page;
  final List<TVModel> _results;
  @override
  @JsonKey()
  List<TVModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final TVsGetParams params;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TVsModel(totalPages: $totalPages, totalResults: $totalResults, page: $page, results: $results, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TVsModel'))
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
            other is _$_TVsModel &&
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
  _$$_TVsModelCopyWith<_$_TVsModel> get copyWith =>
      __$$_TVsModelCopyWithImpl<_$_TVsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TVsModelToJson(
      this,
    );
  }
}

abstract class _TVsModel implements TVsModel {
  factory _TVsModel(
      {@JsonKey(name: 'total_pages') final int totalPages,
      @JsonKey(name: 'total_results') final int totalResults,
      final int page,
      final List<TVModel> results,
      required final TVsGetParams params}) = _$_TVsModel;

  factory _TVsModel.fromJson(Map<String, dynamic> json) = _$_TVsModel.fromJson;

  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  int get page;
  @override
  List<TVModel> get results;
  @override
  TVsGetParams get params;
  @override
  @JsonKey(ignore: true)
  _$$_TVsModelCopyWith<_$_TVsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
