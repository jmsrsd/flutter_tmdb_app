// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persons.params.get.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonsGetParams _$PersonsGetParamsFromJson(Map<String, dynamic> json) {
  return _PersonsGetParams.fromJson(json);
}

/// @nodoc
mixin _$PersonsGetParams {
  PersonsGroup get group => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonsGetParamsCopyWith<PersonsGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonsGetParamsCopyWith<$Res> {
  factory $PersonsGetParamsCopyWith(
          PersonsGetParams value, $Res Function(PersonsGetParams) then) =
      _$PersonsGetParamsCopyWithImpl<$Res, PersonsGetParams>;
  @useResult
  $Res call({PersonsGroup group, String language, int page});
}

/// @nodoc
class _$PersonsGetParamsCopyWithImpl<$Res, $Val extends PersonsGetParams>
    implements $PersonsGetParamsCopyWith<$Res> {
  _$PersonsGetParamsCopyWithImpl(this._value, this._then);

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
              as PersonsGroup,
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
abstract class _$$_PersonsGetParamsCopyWith<$Res>
    implements $PersonsGetParamsCopyWith<$Res> {
  factory _$$_PersonsGetParamsCopyWith(
          _$_PersonsGetParams value, $Res Function(_$_PersonsGetParams) then) =
      __$$_PersonsGetParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PersonsGroup group, String language, int page});
}

/// @nodoc
class __$$_PersonsGetParamsCopyWithImpl<$Res>
    extends _$PersonsGetParamsCopyWithImpl<$Res, _$_PersonsGetParams>
    implements _$$_PersonsGetParamsCopyWith<$Res> {
  __$$_PersonsGetParamsCopyWithImpl(
      _$_PersonsGetParams _value, $Res Function(_$_PersonsGetParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group = null,
    Object? language = null,
    Object? page = null,
  }) {
    return _then(_$_PersonsGetParams(
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as PersonsGroup,
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
class _$_PersonsGetParams
    with DiagnosticableTreeMixin
    implements _PersonsGetParams {
  _$_PersonsGetParams(
      {this.group = PersonsGroup.popular,
      this.language = 'en-US',
      this.page = 1});

  factory _$_PersonsGetParams.fromJson(Map<String, dynamic> json) =>
      _$$_PersonsGetParamsFromJson(json);

  @override
  @JsonKey()
  final PersonsGroup group;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final int page;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonsGetParams(group: $group, language: $language, page: $page)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonsGetParams'))
      ..add(DiagnosticsProperty('group', group))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonsGetParams &&
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
  _$$_PersonsGetParamsCopyWith<_$_PersonsGetParams> get copyWith =>
      __$$_PersonsGetParamsCopyWithImpl<_$_PersonsGetParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonsGetParamsToJson(
      this,
    );
  }
}

abstract class _PersonsGetParams implements PersonsGetParams {
  factory _PersonsGetParams(
      {final PersonsGroup group,
      final String language,
      final int page}) = _$_PersonsGetParams;

  factory _PersonsGetParams.fromJson(Map<String, dynamic> json) =
      _$_PersonsGetParams.fromJson;

  @override
  PersonsGroup get group;
  @override
  String get language;
  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_PersonsGetParamsCopyWith<_$_PersonsGetParams> get copyWith =>
      throw _privateConstructorUsedError;
}
