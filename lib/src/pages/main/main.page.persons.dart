import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/components/person.component.dart';
import '../../components/movie.component.dart';
import '../../types/person/model/person.model.dart';
import '../../types/persons/model/persons.model.dart';
import '../../utils/with_separator.dart';

class MainPagePersons extends HookWidget {
  final PersonsModel model;

  const MainPagePersons({
    super.key,
    required this.model,
  });

  @override
  Widget build(context) {
    return ListView(
      padding: const EdgeInsets.all(kToolbarHeight / 2.0)
          .copyWith(bottom: kToolbarHeight),
      children: withSeparator(
        separator: const SizedBox(height: kToolbarHeight / 4.0),
        children: model.toJson().entries.map((e) {
          if (e.key == 'results') {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: withSeparator(
                separator: const SizedBox(
                  height: kToolbarHeight / 4.0,
                ),
                children: List.of(e.value).map((e) {
                  final model = PersonModel.fromJson(e);
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(model.id.toString()),
                      ),
                      Expanded(
                        flex: 7,
                        child: Person(model: model),
                      ),
                    ],
                  );
                }).toList(),
              ),
            );
          }
          return Text(
            jsonEncode(Map.fromEntries([e])),
          );
        }).toList(),
      ),
    );
  }
}
