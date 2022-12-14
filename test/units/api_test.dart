import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/api.dart';
import 'package:flutter_tmdb_app/dotenv.dart';
import 'package:http/http.dart' as http;

import '../utils/describe.dart';

void main() {
  setUpAll(Dotenv.load);
  describe({
    'API': {
      'Header': () async {
        final api = API(
          accessToken: 'ThisIsRandomAPIAccessToken',
        );
        expect(
          api.header,
          equals({
            'Authorization': 'Bearer ThisIsRandomAPIAccessToken',
            'Content-Type': 'application/json;charset=utf-8',
          }),
        );
      },
      'GET': {
        'Top rated movies': () async {
          final api = API(
            accessToken: Dotenv.apiAccessToken,
          );
          final response = await http.get(
            Uri.parse(
              '${Dotenv.apiBaseUrl}'
              '/movie/top_rated'
              '?'
              'page=1',
            ),
            headers: api.header,
          );
          final data = jsonDecode(response.body);
          expect(
            data,
            equals(data),
          );
        },
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
