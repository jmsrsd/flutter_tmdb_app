// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      mediaType: $enumDecodeNullable(_$MediaTypeEnumMap, json['media_type']) ??
          MediaType.movie,
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const <int>[],
      id: json['id'] as int? ?? -1,
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? -1.0,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String? ?? '',
      title: json['title'] as String? ?? '',
      video: json['video'] as bool? ?? false,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? -1.0,
      voteCount: json['vote_count'] as int? ?? -1,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'media_type': _$MediaTypeEnumMap[instance.mediaType]!,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };

const _$MediaTypeEnumMap = {
  MediaType.movie: 'movie',
  MediaType.tv: 'tv',
};
