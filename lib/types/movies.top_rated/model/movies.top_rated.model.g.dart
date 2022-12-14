// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.top_rated.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopRatedMoviesModel _$$_TopRatedMoviesModelFromJson(
        Map<String, dynamic> json) =>
    _$_TopRatedMoviesModel(
      totalPages: json['total_pages'] as int? ?? -1,
      totalResults: json['total_results'] as int? ?? -1,
      page: json['page'] as int? ?? -1,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MovieModel>[],
      params: TopRatedMoviesGetParams.fromJson(
          json['params'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TopRatedMoviesModelToJson(
        _$_TopRatedMoviesModel instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
      'page': instance.page,
      'results': instance.results.map((e) => e.toJson()).toList(),
      'params': instance.params.toJson(),
    };
