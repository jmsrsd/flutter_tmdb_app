import 'dart:convert';

import 'package:flutter_tmdb_app/src/types/movies/movies.group.dart';

import 'types/movies/model/movies.model.dart';
import 'types/movies/params/get/movies.get.params.dart';
import 'package:http/http.dart' as http;

import 'env.dart';

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

  Future<MoviesModel> getMovies(
    MoviesGetParams params,
  ) async {
    final query = Uri.encodeFull(
      params.toJson().entries.where((e) {
        return e.key != 'group';
      }).map((e) {
        return '${e.key}=${e.value.toString().trim()}';
      }).join('&'),
    );

    final response = await http.get(
      Uri.parse(
        '${env.apiBaseUrl}'
        '${params.group.endpoint}'
        '?$query',
      ),
      headers: header,
    );

    final data = jsonDecode(response.body);
    data['params'] = params.toJson();

    return MoviesModel.fromJson(data);
  }
}
