import 'dart:convert';

import 'package:flutter_tmdb_app/src/types/media.type.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/src/types/person/model/person.model.dart';
import 'package:http/http.dart' as http;

import 'env.dart';
import 'types/movies/model/movies.model.dart';
import 'types/movies/params/get/movies.params.get.dart';
import 'types/persons/model/persons.model.dart';
import 'types/persons/params/get/persons.params.get.dart';
import 'types/tv/model/tv.model.dart';
import 'types/tvs/model/tvs.model.dart';
import 'types/tvs/params/get/tvs.params.get.dart';

class API {
  final Env env;

  API({
    required this.env,
  });

  Map<String, String> get header {
    return {
      'Authorization': 'Bearer ${env.apiAccessToken}',
      'Content-Type': 'application/json;charset=utf-8',
    };
  }

  Future<Map<String, dynamic>> _get({
    required String endpoint,
    required Map<String, dynamic> params,
  }) async {
    final query = Uri.encodeFull(
      params.entries.where((e) {
        return e.key != 'group';
      }).map((e) {
        return '${e.key}=${e.value.toString().trim()}';
      }).join('&'),
    );

    final response = await http.get(
      Uri.parse(
        '${env.apiBaseUrl}'
        '$endpoint'
        '?$query',
      ),
      headers: header,
    );

    final data = jsonDecode(response.body);
    data['params'] = params;

    return data;
  }

  Future<MoviesModel> getMovies(
    MoviesGetParams params,
  ) {
    return _get(
      endpoint: params.group.endpoint,
      params: params.toJson(),
    ).then(MoviesModel.fromJson);
  }

  Future<TVsModel> getTVs(
    TVsGetParams params,
  ) {
    return _get(
      endpoint: params.group.endpoint,
      params: params.toJson(),
    ).then(TVsModel.fromJson);
  }

  Future<PersonsModel> getPersons(
    PersonsGetParams params,
  ) async {
    final response = await _get(
      endpoint: params.group.endpoint,
      params: params.toJson(),
    );

    final results = List.of(
      response['results'] ?? [],
    ).map((e) {
      return Map.of(e).cast<String, dynamic>();
    }).toList();

    final persons = List.of(
      results.map((person) {
        final knownFor = List.of(
          person['known_for'] ?? [],
        ).map((e) {
          return Map.of(e).cast<String, dynamic>();
        }).toList();

        final knownForMovies = List.of(
          knownFor.where((e) {
            return e['media_type'] == MediaType.movie.name;
          }).map(MovieModel.fromJson),
        );

        final knownForTVs = List.of(
          knownFor.where((e) {
            return e['media_type'] == MediaType.tv.name;
          }).map(TVModel.fromJson),
        );

        return PersonModel.fromJson(
          Map.fromEntries(
            person.entries.where((e) {
              return e.key != 'known_for';
            }),
          ),
        ).copyWith(
          knownForMovies: knownForMovies,
          knownForTVs: knownForTVs,
        );
      }),
    );

    return PersonsModel.fromJson(
      Map.fromEntries(
        response.entries.where((e) {
          return e.key != 'results';
        }),
      ),
    ).copyWith(
      results: persons,
    );
  }
}
