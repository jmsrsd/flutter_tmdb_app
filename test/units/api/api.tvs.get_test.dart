import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/src/api.dart';
import 'package:flutter_tmdb_app/src/env.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/src/types/movie/movie.region.dart';
import 'package:flutter_tmdb_app/src/types/movies/movies.group.dart';
import 'package:flutter_tmdb_app/src/types/movies/params/get/movies.params.get.dart';
import 'package:flutter_tmdb_app/src/types/tv/model/tv.model.dart';
import 'package:flutter_tmdb_app/src/types/tvs/params/get/tvs.params.get.dart';
import 'package:flutter_tmdb_app/src/types/tvs/tvs.group.dart';
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
      'TVs': {
        'Group': () async {
          const groups = TVsGroup.values;
          final groupNames = List.of(groups.map((e) => e.name));

          expect(groupNames, contains('airingToday'));
          expect(groupNames, contains('onTheAir'));
          expect(groupNames, contains('popular'));
          expect(groupNames, contains('topRated'));
        },
        'GET': Map.fromEntries(
          TVsGroup.values.map((group) {
            return MapEntry(group.endpoint, () async {
              final params = TVsGetParams(group: group);

              expect(params.group, equals(group));

              expect(params.language.runtimeType, equals(String));
              expect(params.language.length, greaterThanOrEqualTo(2));
              expect(params.language, equals('en-US'));

              expect(params.page.runtimeType, equals(int));
              expect(params.page, equals(1));

              expect(
                params.toJson(),
                equals({
                  'language': 'en-US',
                  'page': 1,
                  'group': group.name,
                }),
              );

              final response = await api.getTVs(params);

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
                equals(EqualUnmodifiableListView<TVModel>),
              );
              expect(
                response.results.length,
                greaterThan(0),
              );
            });
          }),
        ),
      },
    },
  });
}
