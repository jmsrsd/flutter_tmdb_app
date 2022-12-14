import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../movie/model/movie.model.dart';
import '../params/get/movies.params.get.dart';

part 'movies.model.freezed.dart';
part 'movies.model.g.dart';

@freezed
class MoviesModel with _$MoviesModel {
  factory MoviesModel({
    @JsonKey(name: 'total_pages') @Default(-1) int totalPages,
    @JsonKey(name: 'total_results') @Default(-1) int totalResults,
    @Default(-1) int page,
    @Default(<MovieModel>[]) List<MovieModel> results,
    required MoviesGetParams params,
  }) = _MoviesModel;

  factory MoviesModel.fromJson(Map<String, dynamic> json) =>
      _$MoviesModelFromJson(json);
}
