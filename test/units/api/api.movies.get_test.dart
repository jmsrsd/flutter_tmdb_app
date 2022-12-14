import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/src/api.dart';
import 'package:flutter_tmdb_app/src/env.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/src/types/movie/movie.region.dart';
import 'package:flutter_tmdb_app/src/types/movies/movies.group.dart';
import 'package:flutter_tmdb_app/src/types/movies/params/get/movies.get.params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/describe.dart';

void main() {
  late final API api;

  setUpAll(() async {
    await Env.initialize();
    api = API(env: Env.get());
  });
  describe({
    'API': {
      'Movies': {
        'GET': () async {
          for (final group in MoviesGroup.values) {
            final params = MoviesGetParams(group: group);

            expect(params.group, equals(group));

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
                'group': group.name,
              }),
            );

            final response = await api.getMovies(params);

            expect(
              response.params,
              equals(params),
            );
            expect(
              response.totalPages,
              greaterThan(0),
            );
            expect(
              response.totalResults,
              greaterThan(0),
            );
            expect(
              response.page,
              equals(1),
            );
            expect(
              response.results.runtimeType,
              equals(EqualUnmodifiableListView<MovieModel>),
            );
            expect(
              response.results.length,
              greaterThan(0),
            );
          }
        },
      },
    },
  });
}
