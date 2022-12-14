import 'package:flutter_tmdb_app/src/env.dart';

import '../api.dart';

API useAPI() {
  return API(env: Env.get());
}
