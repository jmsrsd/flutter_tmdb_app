import 'package:flutter/foundation.dart';
import '../../movies.group.dart';
import '../../../movie/movie.region.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.params.get.freezed.dart';
part 'movies.params.get.g.dart';

@freezed
class MoviesGetParams with _$MoviesGetParams {
  factory MoviesGetParams({
    @Default(MoviesGroup.topRated) MoviesGroup group,
    @Default('en-US') String language,
    @Default(1) int page,
    @Default(MovieRegion.US) MovieRegion region,
  }) = _MoviesGetParams;

  factory MoviesGetParams.fromJson(Map<String, dynamic> json) =>
      _$MoviesGetParamsFromJson(json);
}
