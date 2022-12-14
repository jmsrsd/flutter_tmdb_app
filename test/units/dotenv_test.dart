import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/dotenv.dart';

import '../utils/describe.dart';

void main() {
  setUpAll(Dotenv.load);
  describe({
    'Dotenv': {
      'API Access Token': () async {
        final apiAccessToken = Dotenv.apiAccessToken;

        expect(apiAccessToken, isNot(equals(null)));
        expect(apiAccessToken, isNot(equals('')));
      },
      'API Base URL': () async {
        final apiBaseUrl = Dotenv.apiBaseUrl;

        expect(apiBaseUrl, isNot(equals(null)));
        expect(apiBaseUrl, isNot(equals('')));
      },
    }
  });
}
