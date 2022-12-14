// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TVModel _$$_TVModelFromJson(Map<String, dynamic> json) => _$_TVModel(
      mediaType: $enumDecodeNullable(_$MediaTypeEnumMap, json['media_type']) ??
          MediaType.tv,
      posterPath: json['poster_path'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble() ?? -1.0,
      id: json['id'] as int? ?? -1,
      backdropPath: json['backdrop_path'] as String?,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? -1.0,
      overview: json['overview'] as String? ?? '',
      firstAirDate: json['first_air_date'] as String? ?? '',
      originCountry: (json['origin_country'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const <int>[],
      originalLanguage: json['original_language'] as String? ?? '',
      voteCount: json['vote_count'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      originalName: json['original_name'] as String? ?? '',
    );

Map<String, dynamic> _$$_TVModelToJson(_$_TVModel instance) =>
    <String, dynamic>{
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'poster_path': instance.posterPath,
      'popularity': instance.popularity,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'vote_average': instance.voteAverage,
      'overview': instance.overview,
      'first_air_date': instance.firstAirDate,
      'origin_country': instance.originCountry,
      'genre_ids': instance.genreIds,
      'original_language': instance.originalLanguage,
      'vote_count': instance.voteCount,
      'name': instance.name,
      'original_name': instance.originalName,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};
