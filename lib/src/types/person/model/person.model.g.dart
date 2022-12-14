// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PersonModel _$$_PersonModelFromJson(Map<String, dynamic> json) =>
    _$_PersonModel(
      profilePath: json['profile_path'] as String?,
      adult: json['adult'] as bool?,
      id: json['id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? -1.0,
      knownForMovies: (json['knownForMovies'] as List<dynamic>?)
              ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieModel>[],
      knownForTVs: (json['knownForTVs'] as List<dynamic>?)
              ?.map((e) => TVModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TVModel>[],
    );

Map<String, dynamic> _$$_PersonModelToJson(_$_PersonModel instance) =>
    <String, dynamic>{
      'profile_path': instance.profilePath,
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'popularity': instance.popularity,
      'knownForMovies': instance.knownForMovies.map((e) => e.toJson()).toList(),
      'knownForTVs': instance.knownForTVs.map((e) => e.toJson()).toList(),
    };
