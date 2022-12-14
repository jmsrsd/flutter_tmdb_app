import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tmdb_app/api.dart';
import 'package:flutter_tmdb_app/env.dart';

import '../../mocks/env.mock.dart';
import '../../utils/describe.dart';

void main() {
  setUpAll(() async {
    await Env.initialize();
  });
  describe({
    'API': {
      'Header': () async {
        final api = API(
          env: MockEnv.get(),
        );
        expect(
          api.header,
          equals({
            'Authorization': 'Bearer ThisIsRandomAPIAccessToken',
            'Content-Type': 'application/json;charset=utf-8',
          }),
        );
      },
    },
  });
}
