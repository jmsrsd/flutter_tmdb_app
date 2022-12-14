import 'package:flutter/foundation.dart';
import 'package:flutter_tmdb_app/types/movie/movie.region.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.top_rated.get.params.freezed.dart';
part 'movies.top_rated.get.params.g.dart';

@freezed
class TopRatedMoviesGetParams with _$TopRatedMoviesGetParams {
  factory TopRatedMoviesGetParams({
    @Default('en-US') String language,
    @Default(1) int page,
    @Default(MovieRegion.US) MovieRegion region,
  }) = _TopRatedMoviesGetParams;

  factory TopRatedMoviesGetParams.fromJson(Map<String, dynamic> json) =>
      _$TopRatedMoviesGetParamsFromJson(json);
}
