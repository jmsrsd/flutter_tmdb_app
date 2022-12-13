import 'package:flutter_test/flutter_test.dart';

void describe(Map descriptions) {
  final scenarios = List.of(descriptions.entries)..sort(_compareScenario);

  for (final scenario in scenarios) {
    _describe(scenario.key, scenario.value);
  }
}

void _describe(dynamic description, dynamic body) {
  try {
    final scenarios = List.of(
      Map.of(body).entries,
    )..sort(_compareScenario);

    group(description, () {
      for (final scenario in scenarios) {
        _describe(scenario.key, scenario.value);
      }
    });
  } catch (_) {
    test(description, body);
  }
}

int _compareScenario(MapEntry a, MapEntry b) {
  return a.key.toString().compareTo(b.key.toString());
}
