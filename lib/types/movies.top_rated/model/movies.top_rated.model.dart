import 'package:flutter/foundation.dart';
import 'package:flutter_tmdb_app/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/types/movies.top_rated/params/get/movies.top_rated.get.params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.top_rated.model.freezed.dart';
part 'movies.top_rated.model.g.dart';

@freezed
class TopRatedMoviesModel with _$TopRatedMoviesModel {
  factory TopRatedMoviesModel({
    @JsonKey(name: 'total_pages') @Default(-1) int totalPages,
    @JsonKey(name: 'total_results') @Default(-1) int totalResults,
    @Default(-1) int page,
    @Default(<MovieModel>[]) List<MovieModel> results,
    required TopRatedMoviesGetParams params,
  }) = _TopRatedMoviesModel;

  factory TopRatedMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$TopRatedMoviesModelFromJson(json);
}
