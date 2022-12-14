import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tv.model.freezed.dart';
part 'tv.model.g.dart';

@freezed
class TVModel with _$TVModel {
  factory TVModel({
    @JsonKey(name: 'poster_path') String? posterPath,
    @Default(-1.0) double popularity,
    @Default(-1) int id,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'vote_average') @Default(-1.0) double voteAverage,
    @Default('') String overview,
    @JsonKey(name: 'first_air_date') @Default('') String firstAirDate,
    @JsonKey(name: 'origin_country')
    @Default(<String>[])
        List<String> originCountry,
    @JsonKey(name: 'genre_ids') @Default(<int>[]) List<int> genreIds,
    @JsonKey(name: 'original_language') @Default('') String originalLanguage,
    @JsonKey(name: 'vote_count') @Default(-1) int voteCount,
    @Default('') String name,
    @JsonKey(name: 'original_name') @Default('') String originalName,
  }) = _TVModel;

  factory TVModel.fromJson(Map<String, dynamic> json) =>
      _$TVModelFromJson(json);
}
