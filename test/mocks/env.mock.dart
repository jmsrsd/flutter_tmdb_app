import 'package:flutter_tmdb_app/env.dart';

class MockEnv extends Env {
  MockEnv.get() : super.get();

  @override
  String get apiAccessToken {
    return 'ThisIsRandomAPIAccessToken';
  }
}
