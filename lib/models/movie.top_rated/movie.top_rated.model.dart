import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.top_rated.model.freezed.dart';
part 'movie.top_rated.model.g.dart';

@freezed
class TopRatedMoviesModel with _$TopRatedMoviesModel {
  factory TopRatedMoviesModel({
    @JsonKey(name: 'backdrop_path') @Default('') String backdropPath,
  }) = _TopRatedMoviesModel;

  factory TopRatedMoviesModel.fromJson(Map<String, dynamic> json) =>
      _$TopRatedMoviesModelFromJson(json);
}
