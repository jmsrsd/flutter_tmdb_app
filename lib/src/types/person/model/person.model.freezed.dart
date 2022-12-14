// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'person.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return _PersonModel.fromJson(json);
}

/// @nodoc
mixin _$PersonModel {
  @JsonKey(name: 'profile_path')
  String? get profilePath => throw _privateConstructorUsedError;
  bool? get adult => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  List<MovieModel> get knownForMovies => throw _privateConstructorUsedError;
  List<TVModel> get knownForTVs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(
          PersonModel value, $Res Function(PersonModel) then) =
      _$PersonModelCopyWithImpl<$Res, PersonModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_path') String? profilePath,
      bool? adult,
      int id,
      String name,
      double popularity,
      List<MovieModel> knownForMovies,
      List<TVModel> knownForTVs});
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res, $Val extends PersonModel>
    implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePath = freezed,
    Object? adult = freezed,
    Object? id = null,
    Object? name = null,
    Object? popularity = null,
    Object? knownForMovies = null,
    Object? knownForTVs = null,
  }) {
    return _then(_value.copyWith(
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      knownForMovies: null == knownForMovies
          ? _value.knownForMovies
          : knownForMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      knownForTVs: null == knownForTVs
          ? _value.knownForTVs
          : knownForTVs // ignore: cast_nullable_to_non_nullable
              as List<TVModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonModelCopyWith<$Res>
    implements $PersonModelCopyWith<$Res> {
  factory _$$_PersonModelCopyWith(
          _$_PersonModel value, $Res Function(_$_PersonModel) then) =
      __$$_PersonModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'profile_path') String? profilePath,
      bool? adult,
      int id,
      String name,
      double popularity,
      List<MovieModel> knownForMovies,
      List<TVModel> knownForTVs});
}

/// @nodoc
class __$$_PersonModelCopyWithImpl<$Res>
    extends _$PersonModelCopyWithImpl<$Res, _$_PersonModel>
    implements _$$_PersonModelCopyWith<$Res> {
  __$$_PersonModelCopyWithImpl(
      _$_PersonModel _value, $Res Function(_$_PersonModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePath = freezed,
    Object? adult = freezed,
    Object? id = null,
    Object? name = null,
    Object? popularity = null,
    Object? knownForMovies = null,
    Object? knownForTVs = null,
  }) {
    return _then(_$_PersonModel(
      profilePath: freezed == profilePath
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      adult: freezed == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      knownForMovies: null == knownForMovies
          ? _value._knownForMovies
          : knownForMovies // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      knownForTVs: null == knownForTVs
          ? _value._knownForTVs
          : knownForTVs // ignore: cast_nullable_to_non_nullable
              as List<TVModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonModel with DiagnosticableTreeMixin implements _PersonModel {
  _$_PersonModel(
      {@JsonKey(name: 'profile_path') this.profilePath,
      this.adult,
      this.id = -1,
      this.name = '',
      this.popularity = -1.0,
      final List<MovieModel> knownForMovies = const <MovieModel>[],
      final List<TVModel> knownForTVs = const <TVModel>[]})
      : _knownForMovies = knownForMovies,
        _knownForTVs = knownForTVs;

  factory _$_PersonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonModelFromJson(json);

  @override
  @JsonKey(name: 'profile_path')
  final String? profilePath;
  @override
  final bool? adult;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final double popularity;
  final List<MovieModel> _knownForMovies;
  @override
  @JsonKey()
  List<MovieModel> get knownForMovies {
    if (_knownForMovies is EqualUnmodifiableListView) return _knownForMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knownForMovies);
  }

  final List<TVModel> _knownForTVs;
  @override
  @JsonKey()
  List<TVModel> get knownForTVs {
    if (_knownForTVs is EqualUnmodifiableListView) return _knownForTVs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_knownForTVs);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonModel(profilePath: $profilePath, adult: $adult, id: $id, name: $name, popularity: $popularity, knownForMovies: $knownForMovies, knownForTVs: $knownForTVs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonModel'))
      ..add(DiagnosticsProperty('profilePath', profilePath))
      ..add(DiagnosticsProperty('adult', adult))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('popularity', popularity))
      ..add(DiagnosticsProperty('knownForMovies', knownForMovies))
      ..add(DiagnosticsProperty('knownForTVs', knownForTVs));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonModel &&
            (identical(other.profilePath, profilePath) ||
                other.profilePath == profilePath) &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            const DeepCollectionEquality()
                .equals(other._knownForMovies, _knownForMovies) &&
            const DeepCollectionEquality()
                .equals(other._knownForTVs, _knownForTVs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profilePath,
      adult,
      id,
      name,
      popularity,
      const DeepCollectionEquality().hash(_knownForMovies),
      const DeepCollectionEquality().hash(_knownForTVs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      __$$_PersonModelCopyWithImpl<_$_PersonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonModelToJson(
      this,
    );
  }
}

abstract class _PersonModel implements PersonModel {
  factory _PersonModel(
      {@JsonKey(name: 'profile_path') final String? profilePath,
      final bool? adult,
      final int id,
      final String name,
      final double popularity,
      final List<MovieModel> knownForMovies,
      final List<TVModel> knownForTVs}) = _$_PersonModel;

  factory _PersonModel.fromJson(Map<String, dynamic> json) =
      _$_PersonModel.fromJson;

  @override
  @JsonKey(name: 'profile_path')
  String? get profilePath;
  @override
  bool? get adult;
  @override
  int get id;
  @override
  String get name;
  @override
  double get popularity;
  @override
  List<MovieModel> get knownForMovies;
  @override
  List<TVModel> get knownForTVs;
  @override
  @JsonKey(ignore: true)
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}
