import 'dart:convert';

import 'types/movies/movies.group.dart';

import 'types/movies/model/movies.model.dart';
import 'types/movies/params/get/movies.params.get.dart';
import 'package:http/http.dart' as http;

import 'env.dart';
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
}
