import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/types/movies/movies.group.dart';
import 'package:flutter_tmdb_app/src/utils/uncatch.dart';
import 'package:flutter_tmdb_app/src/utils/with_separator.dart';

import '../../types/persons/persons.group.dart';
import '../../types/tvs/tvs.group.dart';

class MainPageGroupSelection extends HookWidget {
  final Function(MoviesGroup group)? onMovieGroupSelected;
  final Function(TVsGroup group)? onTVGroupSelected;
  final Function(PersonsGroup group)? onPersonGroupSelected;

  const MainPageGroupSelection({
    super.key,
    this.onMovieGroupSelected,
    this.onTVGroupSelected,
    this.onPersonGroupSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(
        kToolbarHeight / 2.0,
      ).copyWith(
        bottom: kToolbarHeight * 2.0,
      ),
      children: withSeparator(
        separator: const SizedBox(height: kToolbarHeight / 2.0),
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            padding: const EdgeInsets.all(
              kToolbarHeight / 4.0,
            ).copyWith(
              bottom: kToolbarHeight / 2.0,
            ),
            child: ListTile(
              title: const Text('Movies'),
              subtitle: Column(
                children: [
                  const SizedBox(height: kToolbarHeight / 4.0),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child: const Icon(
                        Icons.subdirectory_arrow_right_outlined,
                      ),
                    ),
                    onTap: () {
                      uncatch(() {
                        onMovieGroupSelected!(MoviesGroup.nowPlaying);
                      });
                    },
                    title: const Text('Now playing'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onMovieGroupSelected!(MoviesGroup.popular);
                      });
                    },
                    title: const Text('Popular'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onMovieGroupSelected!(MoviesGroup.upcoming);
                      });
                    },
                    title: const Text('Upcoming'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onMovieGroupSelected!(MoviesGroup.topRated);
                      });
                    },
                    title: const Text('Top rated'),
                  ),
                ].map((e) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: e,
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            padding: const EdgeInsets.all(
              kToolbarHeight / 4.0,
            ).copyWith(
              bottom: kToolbarHeight / 2.0,
            ),
            child: ListTile(
              title: const Text('TVs'),
              subtitle: Column(
                children: [
                  const SizedBox(height: kToolbarHeight / 4.0),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onTVGroupSelected!(TVsGroup.airingToday);
                      });
                    },
                    title: const Text('Airing today'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onTVGroupSelected!(TVsGroup.onTheAir);
                      });
                    },
                    title: const Text('On the air'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onTVGroupSelected!(TVsGroup.popular);
                      });
                    },
                    title: const Text('Popular'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onTVGroupSelected!(TVsGroup.topRated);
                      });
                    },
                    title: const Text('Top rated'),
                  ),
                ].map((e) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: e,
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            padding: const EdgeInsets.all(
              kToolbarHeight / 4.0,
            ).copyWith(
              bottom: kToolbarHeight / 2.0,
            ),
            child: ListTile(
              title: const Text('People'),
              subtitle: Column(
                children: [
                  const SizedBox(height: kToolbarHeight / 4.0),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Theme.of(context).colorScheme.onSurface,
                      child:
                          const Icon(Icons.subdirectory_arrow_right_outlined),
                    ),
                    onTap: () {
                      uncatch(() {
                        onPersonGroupSelected!(PersonsGroup.popular);
                      });
                    },
                    title: const Text('Popular'),
                  ),
                ].map((e) {
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    child: e,
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
