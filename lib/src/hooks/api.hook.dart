import '../env.dart';

import '../api.dart';

API useAPI() {
  return API(env: Env.get());
}
