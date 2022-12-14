import 'dart:convert';

import 'package:flutter_tmdb_app/types/movies.top_rated/params/get/movies.top_rated.get.params.dart';
import 'package:http/http.dart' as http;

import 'env.dart';
import 'types/movies.top_rated/model/movies.top_rated.model.dart';

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

  Future<TopRatedMoviesModel> getTopRatedMovies(
    TopRatedMoviesGetParams params,
  ) async {
    final response = await http.get(
      Uri.parse(
        '${env.apiBaseUrl}'
        '/movie/top_rated'
        '?'
        'page=1',
      ),
      headers: header,
    );

    final data = jsonDecode(response.body);
    data['params'] = params.toJson();

    return TopRatedMoviesModel.fromJson(data);
  }
}
