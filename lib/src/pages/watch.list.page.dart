import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/types/movies/model/movies.model.dart';
import 'package:flutter_tmdb_app/src/types/movies/params/get/movies.params.get.dart';
import 'package:flutter_tmdb_app/src/types/watch.list.dart';

import 'main/main.page.movies.dart';

class WatchListPage extends HookWidget {
  final ValueNotifier<WatchList> watchList;

  const WatchListPage({
    super.key,
    required this.watchList,
  });

  @override
  Widget build(BuildContext context) {
    final reloading = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Watch List'),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: MainPageMovies(
          key: ValueKey(reloading.value),
          watchListIds: watchList.value.movies.map((e) => e.id).toList(),
          movies: MoviesModel(
            results: watchList.value.movies,
            params: MoviesGetParams(),
          ),
          onCardTap: (movie) {
            final list = List.of(watchList.value.movies);
            if (list.map((e) => e.id).contains(movie.id)) {
              list.removeWhere((e) => e.id == movie.id);
            } else {
              list.add(movie);
            }
            watchList.value = WatchList(
              movies: List.of(Set.of(list)),
            );
            reloading.value++;
          },
        ),
      ),
    );
  }
}
