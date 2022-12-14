import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/components/movie.component.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import '../types/person/model/person.model.dart';
import '../types/tv/model/tv.model.dart';
import '../utils/with_separator.dart';
import 'tv.component.dart';

class Person extends HookWidget {
  final PersonModel model;

  const Person({
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
          if (e.key.startsWith('known_for')) {
            final knownFor = List.of(e.value);
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: withSeparator(
                separator: const SizedBox(
                  height: kToolbarHeight / 4.0,
                ),
                children: knownFor.map((e) {
                  if (e['media_type'] == 'movie') {
                    final movie = MovieModel.fromJson(e);
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(movie.id.toString()),
                        ),
                        Expanded(
                          flex: 7,
                          child: Movie(model: movie),
                        ),
                      ],
                    );
                  } else {
                    final tv = TVModel.fromJson(e);
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(tv.id.toString()),
                        ),
                        Expanded(
                          flex: 7,
                          child: TV(model: tv),
                        ),
                      ],
                    );
                  }
                }).toList(),
              ),
            );
          }
          return Text(jsonEncode(Map.fromEntries([e])));
        }).toList(),
      ),
    );
  }
}
