import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';

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
      children: model.toJson().entries.map((e) {
        return ListTile(
          title: Text(e.key),
          subtitle: Text('${e.value}'),
        );
      }).toList(),
    );
  }
}
