import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/src/env.dart';

import '../utils/describe.dart';

void main() {
  setUpAll(() async {
    await Env.initialize();
  });
  describe({
    'API': {
      'GET': {
        'Popular people': () async {},
      },
    },
  });
}
