import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/env.dart';

void main() async {
  await Env.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
