import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.model.freezed.dart';
part 'movie.model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  factory MovieModel({
    @Default(false) bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') @Default(<int>[]) List<int> genreIds,
    @Default(-1) int id,
    @JsonKey(name: 'original_language') @Default('') String originalLanguage,
    @JsonKey(name: 'original_title') @Default('') String originalTitle,
    @Default('') String overview,
    @Default(-1.0) double popularity,
    @JsonKey(name: 'poster_path') String? posterPath,
    @JsonKey(name: 'release_date') @Default('') String releaseDate,
    @Default('') String title,
    @Default(false) bool video,
    @JsonKey(name: 'vote_average') @Default(-1.0) double voteAverage,
    @JsonKey(name: 'vote_count') @Default(-1) int voteCount,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
