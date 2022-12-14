import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../types/movie/model/movie.model.dart';
import '../utils/with_separator.dart';

class Movie extends HookWidget {
  final MovieModel model;

  const Movie({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: withSeparator(
        separator: const SizedBox(
          height: kToolbarHeight / 4.0,
        ),
        children: model.toJson().entries.map((e) {
          return jsonEncode(Map.fromEntries([e]));
        }).map((e) {
          return Text(e);
        }).toList(),
      ),
    );
  }
}
