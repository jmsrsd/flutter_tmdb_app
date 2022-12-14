import 'package:flutter/foundation.dart';
import '../../movie/model/movie.model.dart';
import '../../tv/model/tv.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.model.freezed.dart';
part 'person.model.g.dart';

@freezed
class PersonModel with _$PersonModel {
  factory PersonModel({
    @JsonKey(name: 'profile_path') String? profilePath,
    bool? adult,
    @Default(-1) int id,
    @Default('') String name,
    @Default(-1.0) double popularity,
    @JsonKey(name: 'known_for_movies')
    @Default(<MovieModel>[])
        List<MovieModel> knownForMovies,
    @JsonKey(name: 'known_for_tvs')
    @Default(<TVModel>[])
        List<TVModel> knownForTVs,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}
