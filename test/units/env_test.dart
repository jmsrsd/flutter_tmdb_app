import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/src/env.dart';

import '../utils/describe.dart';

void main() {
  setUpAll(() async {
    await Env.initialize();
  });
  describe({
    'Env': {
      'Initialized': () async {
        expect(Env.isInitialized, equals(true));
      },
      'API Access Token': () async {
        final apiAccessToken = Env.get().apiAccessToken;

        expect(apiAccessToken, isNot(equals(null)));
        expect(apiAccessToken, isNot(equals('')));
      },
      'API Base URL': () async {
        final apiBaseUrl = Env.get().apiBaseUrl;

        expect(apiBaseUrl, isNot(equals(null)));
        expect(apiBaseUrl, isNot(equals('')));
      },
      'API Base Image URL': () async {
        final apiBaseUrl = Env.get().apiBaseImageUrl;

        expect(apiBaseUrl, isNot(equals(null)));
        expect(apiBaseUrl, isNot(equals('')));
      },
    }
  });
}
