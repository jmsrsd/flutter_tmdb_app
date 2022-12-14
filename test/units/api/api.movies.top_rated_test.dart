import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/api.dart';
import 'package:flutter_tmdb_app/env.dart';
import 'package:flutter_tmdb_app/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/types/movie/movie.region.dart';
import 'package:flutter_tmdb_app/types/movies.top_rated/params/get/movies.top_rated.get.params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/describe.dart';

void main() {
  late final API api;
  setUpAll(() async {
    await Env.initialize();
    api = API(
      env: Env.get(),
    );
  });
  describe({
    'API': {
      'Top rated movies': {
        'GET': () async {
          final params = TopRatedMoviesGetParams();

          expect(params.language.runtimeType, equals(String));
          expect(params.language.length, greaterThanOrEqualTo(2));
          expect(params.language, equals('en-US'));

          expect(params.page.runtimeType, equals(int));
          expect(params.page, equals(1));

          expect(params.region.runtimeType, equals(MovieRegion));
          expect(params.region, equals(MovieRegion.US));

          expect(
            params.toJson(),
            equals({
              'language': 'en-US',
              'page': 1,
              'region': 'US',
            }),
          );

          final data = await api.getTopRatedMovies(params);

          expect(
            data.params,
            equals(params),
          );
          expect(
            data.totalPages,
            greaterThan(0),
          );
          expect(
            data.totalResults,
            greaterThan(0),
          );
          expect(
            data.page,
            equals(1),
          );
          expect(
            data.results.runtimeType,
            equals(EqualUnmodifiableListView<MovieModel>),
          );
          expect(
            data.results.length,
            greaterThan(0),
          );
        },
      },
    },
  });
}
