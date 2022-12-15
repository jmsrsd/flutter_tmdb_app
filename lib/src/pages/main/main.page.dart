import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/pages/main/main.page.persons.dart';
import 'package:flutter_tmdb_app/src/pages/main/main.page.tvs.dart';
import 'package:flutter_tmdb_app/src/types/tvs/tvs.group.dart';

import '../../hooks/api.hook.dart';
import '../../hooks/async.hook.dart';
import '../../types/movies/movies.group.dart';
import '../../types/movies/params/get/movies.params.get.dart';
import '../../types/persons/params/get/persons.params.get.dart';
import '../../types/persons/persons.group.dart';
import '../../types/tvs/params/get/tvs.params.get.dart';
import '../../types/watch.list.dart';
import '../watch.list.page.dart';
import 'main.page.group.selection.dart';
import 'main.page.movies.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  Widget useAnimatedSwitcher({
    required Widget child,
  }) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);

    final api = useAPI();

    final moviesParams = useState(
      MoviesGetParams(
        group: MoviesGroup.nowPlaying,
      ),
    );

    final movies = useAsync([moviesParams.value], () async {
      return await api.getMovies(moviesParams.value);
    });

    final tvsParams = useState(
      TVsGetParams(
        group: TVsGroup.airingToday,
      ),
    );

    final tvs = useAsync([tvsParams.value], () async {
      return await api.getTVs(tvsParams.value);
    });

    final personsParams = useState(PersonsGetParams(
      group: PersonsGroup.popular,
    ));

    final persons = useAsync([personsParams.value], () async {
      return await api.getPersons(
        personsParams.value,
      );
    });

    final watchList = useState(const WatchList());

    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(
              kToolbarHeight / 4.0,
            ).copyWith(
              top: kToolbarHeight,
              bottom: kToolbarHeight / 2.0,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: kToolbarHeight / 8.0,
              ),
              child: ListTile(
                title: const Text('The Movie Database'),
                subtitle: const Text(
                  'The Movie Database app built with Flutter.',
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Theme.of(
                    context,
                  ).colorScheme.onSurface,
                  child: const Icon(Icons.movie_outlined),
                ),
                trailing: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return WatchListPage(
                          watchList: watchList,
                        );
                      }),
                    );
                  },
                  style: ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 16,
                      ).copyWith(right: 16),
                    ),
                  ),
                  icon: Chip(
                    label: Text(watchList.value.count().toString()),
                  ),
                  label: const Text('WATCH LIST'),
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: useAnimatedSwitcher(
                child: SizedBox(
                  key: ValueKey(pageIndex.value),
                  child: [
                    SizedBox(
                      key: ValueKey(movies.hasLoaded),
                      child: !movies.hasLoaded
                          ? const CircularProgressIndicator()
                          : MainPageMovies(
                              movies: movies.requireData,
                              watchListIds: watchList.value.movies
                                  .map((e) => e.id)
                                  .toList(),
                              onGroupSelectionButtonTap: () {
                                pageIndex.value = 3;
                              },
                              onBackPageButtonTap: () {
                                if (moviesParams.value.page <= 1) {
                                  return;
                                }
                                moviesParams.value =
                                    moviesParams.value.copyWith(
                                  page: moviesParams.value.page - 1,
                                );
                              },
                              onNextPageButtonTap: () {
                                final totalPages = movies.data?.totalPages ??
                                    moviesParams.value.page;
                                if (moviesParams.value.page >= totalPages) {
                                  return;
                                }
                                moviesParams.value =
                                    moviesParams.value.copyWith(
                                  page: moviesParams.value.page + 1,
                                );
                              },
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
                              },
                            ),
                    ),
                    SizedBox(
                      key: ValueKey(tvs.hasLoaded),
                      child: !tvs.hasLoaded
                          ? const CircularProgressIndicator()
                          : MainPageTVs(
                              tvs: tvs.requireData,
                              onGroupSelectionButtonTap: () {
                                pageIndex.value = 3;
                              },
                              onBackPageButtonTap: () {
                                if (tvsParams.value.page <= 1) {
                                  return;
                                }
                                tvsParams.value = tvsParams.value.copyWith(
                                  page: tvsParams.value.page - 1,
                                );
                              },
                              onNextPageButtonTap: () {
                                final totalPages = movies.data?.totalPages ??
                                    tvsParams.value.page;
                                if (tvsParams.value.page >= totalPages) {
                                  return;
                                }
                                tvsParams.value = tvsParams.value.copyWith(
                                  page: tvsParams.value.page + 1,
                                );
                              },
                            ),
                    ),
                    SizedBox(
                      key: ValueKey(persons.hasLoaded),
                      child: !persons.hasLoaded
                          ? const CircularProgressIndicator()
                          : MainPagePersons(
                              persons: persons.requireData,
                              onGroupSelectionButtonTap: () {
                                pageIndex.value = 3;
                              },
                              onBackPageButtonTap: () {
                                if (personsParams.value.page <= 1) {
                                  return;
                                }
                                personsParams.value =
                                    personsParams.value.copyWith(
                                  page: personsParams.value.page - 1,
                                );
                              },
                              onNextPageButtonTap: () {
                                final totalPages = persons.data?.totalPages ??
                                    personsParams.value.page;
                                if (personsParams.value.page >= totalPages) {
                                  return;
                                }
                                personsParams.value =
                                    personsParams.value.copyWith(
                                  page: personsParams.value.page + 1,
                                );
                              },
                            ),
                    ),
                    MainPageGroupSelection(
                      onMovieGroupSelected: (group) {
                        moviesParams.value = moviesParams.value.copyWith(
                          group: group,
                          page: 1,
                        );
                        pageIndex.value = 0;
                      },
                      onTVGroupSelected: (group) {
                        tvsParams.value = tvsParams.value.copyWith(
                          group: group,
                          page: 1,
                        );
                        pageIndex.value = 1;
                      },
                      onPersonGroupSelected: (group) {
                        personsParams.value = personsParams.value.copyWith(
                          group: group,
                          page: 1,
                        );
                        pageIndex.value = 2;
                      },
                    ),
                  ].map((e) {
                    return useAnimatedSwitcher(child: e);
                  }).elementAt(pageIndex.value),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
