// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonsModel _$PersonsModelFromJson(Map<String, dynamic> json) {
  return _PersonsModel.fromJson(json);
}

/// @nodoc
mixin _$PersonsModel {
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<PersonModel> get results => throw _privateConstructorUsedError;
  PersonsGetParams get params => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsModelCopyWith<PersonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsModelCopyWith<$Res> {
  factory $PersonsModelCopyWith(
          PersonsModel value, $Res Function(PersonsModel) then) =
      _$PersonsModelCopyWithImpl<$Res, PersonsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<PersonModel> results,
      PersonsGetParams params});

  $PersonsGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$PersonsModelCopyWithImpl<$Res, $Val extends PersonsModel>
    implements $PersonsModelCopyWith<$Res> {
  _$PersonsModelCopyWithImpl(this._value, this._then);

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
              as List<PersonModel>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PersonsGetParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PersonsGetParamsCopyWith<$Res> get params {
    return $PersonsGetParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PersonsModelCopyWith<$Res>
    implements $PersonsModelCopyWith<$Res> {
  factory _$$_PersonsModelCopyWith(
          _$_PersonsModel value, $Res Function(_$_PersonsModel) then) =
      __$$_PersonsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults,
      int page,
      List<PersonModel> results,
      PersonsGetParams params});

  @override
  $PersonsGetParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$_PersonsModelCopyWithImpl<$Res>
    extends _$PersonsModelCopyWithImpl<$Res, _$_PersonsModel>
    implements _$$_PersonsModelCopyWith<$Res> {
  __$$_PersonsModelCopyWithImpl(
      _$_PersonsModel _value, $Res Function(_$_PersonsModel) _then)
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
    return _then(_$_PersonsModel(
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
              as List<PersonModel>,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as PersonsGetParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonsModel with DiagnosticableTreeMixin implements _PersonsModel {
  _$_PersonsModel(
      {@JsonKey(name: 'total_pages') this.totalPages = -1,
      @JsonKey(name: 'total_results') this.totalResults = -1,
      this.page = -1,
      final List<PersonModel> results = const <PersonModel>[],
      required this.params})
      : _results = results;

  factory _$_PersonsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonsModelFromJson(json);

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;
  @override
  @JsonKey()
  final int page;
  final List<PersonModel> _results;
  @override
  @JsonKey()
  List<PersonModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final PersonsGetParams params;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonsModel(totalPages: $totalPages, totalResults: $totalResults, page: $page, results: $results, params: $params)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonsModel'))
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
            other is _$_PersonsModel &&
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
  _$$_PersonsModelCopyWith<_$_PersonsModel> get copyWith =>
      __$$_PersonsModelCopyWithImpl<_$_PersonsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonsModelToJson(
      this,
    );
  }
}

abstract class _PersonsModel implements PersonsModel {
  factory _PersonsModel(
      {@JsonKey(name: 'total_pages') final int totalPages,
      @JsonKey(name: 'total_results') final int totalResults,
      final int page,
      final List<PersonModel> results,
      required final PersonsGetParams params}) = _$_PersonsModel;

  factory _PersonsModel.fromJson(Map<String, dynamic> json) =
      _$_PersonsModel.fromJson;

  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  int get page;
  @override
  List<PersonModel> get results;
  @override
  PersonsGetParams get params;
  @override
  @JsonKey(ignore: true)
  _$$_PersonsModelCopyWith<_$_PersonsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
