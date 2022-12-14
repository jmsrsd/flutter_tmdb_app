import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  Env.get();

  static bool get isInitialized {
    return dotenv.isInitialized;
  }

  static Future<void> initialize() async {
    if (isInitialized) return;
    await dotenv.load(fileName: '.env');
  }

  String get apiAccessToken {
    return dotenv.env['API_ACCESS_TOKEN']?.trim() ?? '';
  }

  String get apiBaseUrl {
    return 'https://api.themoviedb.org/3';
  }
}
