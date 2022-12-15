import 'package:flutter/material.dart';
import 'package:flutter_tmdb_app/src/utils/evaluate.dart';

import 'pages/main/main.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: evaluate(() {
        return 'Flutter The Movie Database App - The Movie Database app built with Flutter';
      }),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      builder: (context, child) {
        return LayoutBuilder(builder: (context, constraints) {
          final ratio = constraints.biggest.aspectRatio;
          final reference = Size(
            constraints.maxWidth.clamp(480.0, double.maxFinite),
            constraints.maxHeight.clamp(960.0, double.maxFinite),
          );
          return SizedBox.fromSize(
            size: constraints.biggest,
            child: FittedBox(
              alignment: Alignment.center,
              fit: BoxFit.cover,
              child: SizedBox.fromSize(
                size: Size(
                  ratio <= 1.0 ? reference.width : reference.height * ratio,
                  ratio > 1.0 ? reference.height : reference.width / ratio,
                ),
                child: child,
              ),
            ),
          );
        });
      },
      home: const MainPage(),
    );
  }
}
