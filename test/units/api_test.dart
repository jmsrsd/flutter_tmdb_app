import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/api.dart';
import 'package:flutter_tmdb_app/types/movies.top_rated/params/get/movies.top_rated.get.params.dart';
import 'package:flutter_tmdb_app/env.dart';
import 'package:flutter_tmdb_app/types/movie/movie.region.dart';
import 'package:flutter_tmdb_app/types/movie/model/movie.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import '../mocks/env.mock.dart';
import '../utils/describe.dart';

void main() {
  setUpAll(() async {
    await Env.initialize();
  });
  describe({
    'API': {
      'GET': {
        'Upcoming movies': () async {},
        'Now playing movies': () async {},
        'Popular movies': () async {},
        'Popular TV shows': () async {},
        'Top rated TV shows': () async {},
        'On the air TV shows': () async {},
        'Airing today TV shows': () async {},
        'Popular people': () async {},
      },
    },
  });
}
