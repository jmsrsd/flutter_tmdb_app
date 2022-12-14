// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tvs.params.get.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TVsGetParams _$TVsGetParamsFromJson(Map<String, dynamic> json) {
  return _TVsGetParams.fromJson(json);
}

/// @nodoc
mixin _$TVsGetParams {
  TVsGroup get group => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TVsGetParamsCopyWith<TVsGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TVsGetParamsCopyWith<$Res> {
  factory $TVsGetParamsCopyWith(
          TVsGetParams value, $Res Function(TVsGetParams) then) =
      _$TVsGetParamsCopyWithImpl<$Res, TVsGetParams>;
  @useResult
  $Res call({TVsGroup group, String language, int page});
}

/// @nodoc
class _$TVsGetParamsCopyWithImpl<$Res, $Val extends TVsGetParams>
    implements $TVsGetParamsCopyWith<$Res> {
  _$TVsGetParamsCopyWithImpl(this._value, this._then);

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
  }) {
    return _then(_value.copyWith(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as TVsGroup,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TVsGetParamsCopyWith<$Res>
    implements $TVsGetParamsCopyWith<$Res> {
  factory _$$_TVsGetParamsCopyWith(
          _$_TVsGetParams value, $Res Function(_$_TVsGetParams) then) =
      __$$_TVsGetParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TVsGroup group, String language, int page});
}

/// @nodoc
class __$$_TVsGetParamsCopyWithImpl<$Res>
    extends _$TVsGetParamsCopyWithImpl<$Res, _$_TVsGetParams>
    implements _$$_TVsGetParamsCopyWith<$Res> {
  __$$_TVsGetParamsCopyWithImpl(
      _$_TVsGetParams _value, $Res Function(_$_TVsGetParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? language = null,
    Object? page = null,
  }) {
    return _then(_$_TVsGetParams(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as TVsGroup,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TVsGetParams with DiagnosticableTreeMixin implements _TVsGetParams {
  _$_TVsGetParams(
      {this.group = TVsGroup.topRated, this.language = 'en-US', this.page = 1});

  factory _$_TVsGetParams.fromJson(Map<String, dynamic> json) =>
      _$$_TVsGetParamsFromJson(json);

  @override
  @JsonKey()
  final TVsGroup group;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TVsGetParams(group: $group, language: $language, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TVsGetParams'))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TVsGetParams &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group, language, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TVsGetParamsCopyWith<_$_TVsGetParams> get copyWith =>
      __$$_TVsGetParamsCopyWithImpl<_$_TVsGetParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TVsGetParamsToJson(
      this,
    );
  }
}

abstract class _TVsGetParams implements TVsGetParams {
  factory _TVsGetParams(
      {final TVsGroup group,
      final String language,
      final int page}) = _$_TVsGetParams;

  factory _TVsGetParams.fromJson(Map<String, dynamic> json) =
      _$_TVsGetParams.fromJson;

  @override
  TVsGroup get group;
  @override
  String get language;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_TVsGetParamsCopyWith<_$_TVsGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}
