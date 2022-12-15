import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/components/person.component.dart';

import '../../types/person/model/person.model.dart';
import '../../types/persons/model/persons.model.dart';
import '../../types/persons/persons.group.dart';
import '../../utils/evaluate.dart';
import '../../utils/noop.dart';
import '../../utils/with_separator.dart';

class MainPagePersons extends HookWidget {
  final PersonsModel persons;
  final void Function() onNextPageButtonTap;
  final void Function() onBackPageButtonTap;
  final void Function() onGroupSelectionButtonTap;

  const MainPagePersons({
    super.key,
    required this.persons,
    this.onNextPageButtonTap = noop,
    this.onBackPageButtonTap = noop,
    this.onGroupSelectionButtonTap = noop,
  });

  @override
  Widget build(context) {
    final totalPages = persons.totalPages;
    final totalResults = persons.totalResults;
    final page = persons.page;
    final results = persons.results;
    final params = persons.params;
    final group = evaluate(() {
      switch (params.group) {
        case PersonsGroup.popular:
          return 'Popular';
        default:
          return '';
      }
    });

    return Column(
      children: [
        ListTile(
          title: const Text('People'),
          subtitle: Text(group),
          leading: IconButton(
            onPressed: onGroupSelectionButtonTap,
            icon: const Icon(Icons.menu_outlined),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.movie_outlined),
              const SizedBox(width: 16.0),
              Text('$totalResults'),
              const SizedBox(width: 16.0),
            ],
          ),
        ),
        const SizedBox(height: kToolbarHeight / 4.0),
        Expanded(
          child: LayoutBuilder(builder: (context, constraints) {
            var crossAxisCount = (constraints.maxWidth / 360.0)
                .round()
                .clamp(1, double.maxFinite.truncate());
            crossAxisCount = (constraints.biggest.aspectRatio).ceil();
            final childAspectRatio = (constraints.maxWidth / crossAxisCount) /
                (constraints.maxHeight -
                    (kToolbarHeight + (crossAxisCount * 2)));
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: childAspectRatio,
                crossAxisSpacing: kToolbarHeight / 4.0,
                mainAxisSpacing: kToolbarHeight / 4.0,
              ),
              padding: const EdgeInsets.all(
                kToolbarHeight / 2.0,
              ).copyWith(bottom: kToolbarHeight * 2.0),
              itemCount: results.length,
              itemBuilder: (context, index) {
                return Person(person: results[index]);
              },
            );
          }),
        ),
        Container(
          alignment: Alignment.center,
          height: kToolbarHeight,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: onBackPageButtonTap,
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: withSeparator(
                      separator: const SizedBox(width: 8),
                      children: [
                        Text('$page'),
                        const Text('/'),
                        Text('$totalPages'),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onNextPageButtonTap,
                  icon: const Icon(
                    Icons.arrow_forward_outlined,
                  ),
                ),
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
