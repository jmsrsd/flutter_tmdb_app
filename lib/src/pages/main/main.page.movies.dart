import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/src/utils/evaluate.dart';
import 'package:flutter_tmdb_app/src/utils/uncatch.dart';
import 'package:flutter_tmdb_app/src/utils/with_separator.dart';

import '../../components/movie.component.dart';
import '../../types/movies/model/movies.model.dart';
import '../../types/movies/movies.group.dart';
import '../../utils/noop.dart';

class MainPageMovies extends HookWidget {
  final MoviesModel movies;
  final void Function() onNextPageButtonTap;
  final void Function() onBackPageButtonTap;
  final void Function()? onGroupSelectionButtonTap;
  final void Function(MovieModel movie)? onCardTap;
  final List<int> watchListIds;

  const MainPageMovies({
    super.key,
    required this.movies,
    this.onNextPageButtonTap = noop,
    this.onBackPageButtonTap = noop,
    this.onGroupSelectionButtonTap,
    this.onCardTap,
    this.watchListIds = const [],
  });

  @override
  Widget build(context) {
    final totalPages = movies.totalPages;
    final totalResults = movies.totalResults;
    final page = movies.page;
    final results = movies.results;
    final params = movies.params;
    final group = evaluate(() {
      switch (params.group) {
        case MoviesGroup.nowPlaying:
          return 'Now playing';
        case MoviesGroup.popular:
          return 'Popular';
        case MoviesGroup.upcoming:
          return 'Upcoming';
        case MoviesGroup.topRated:
          return 'Top rated';
        default:
          return '';
      }
    });

    return Column(
      children: [
        if (onGroupSelectionButtonTap != null)
          ListTile(
            title: const Text('Movies'),
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
                return Movie(
                  movie: results[index],
                  isOnWatchList: watchListIds.contains(results[index].id),
                  onTap: () {
                    uncatch(() {
                      onCardTap!(results[index]);
                    });
                  },
                );
              },
            );
          }),
        ),
        if (page > 0 && totalPages > 0)
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
