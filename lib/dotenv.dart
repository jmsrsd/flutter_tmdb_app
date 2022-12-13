import 'package:flutter_dotenv/flutter_dotenv.dart';

class Dotenv {
  Dotenv._();

  static Future<void> load() async {
    if (dotenv.isInitialized) {
      return;
    }
    await dotenv.load(fileName: '.env');
  }

  static String get apiAccessToken {
    return dotenv.env['API_ACCESS_TOKEN']?.trim() ?? '';
  }

  static String get apiBaseUrl {
    return dotenv.env['API_BASE_URL']?.trim() ?? '';
  }
}
