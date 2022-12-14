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
      await Future.delayed(const Duration(milliseconds: 300));
      return await api.getMovies(moviesParams.value);
    });

    final tvsGroup = useState(TVsGroup.topRated);

    final tvs = useAsync([tvsGroup.value.endpoint], () async {
      await Future.delayed(const Duration(milliseconds: 300));
      return await api.getTVs(
        TVsGetParams(group: tvsGroup.value),
      );
    });

    final personsGroup = useState(PersonsGroup.popular);

    final persons = useAsync([personsGroup.value.endpoint], () async {
      await Future.delayed(const Duration(milliseconds: 300));
      return await api.getPersons(
        PersonsGetParams(group: personsGroup.value),
      );
    });

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(title),
      // ),
      // bottomNavigationBar: NavigationBar(
      //   destinations: const [
      //     NavigationDestination(
      //       label: 'Movies',
      //       icon: Icon(Icons.movie_outlined),
      //     ),
      //     NavigationDestination(
      //       label: 'TVs',
      //       icon: Icon(Icons.tv_outlined),
      //     ),
      //     NavigationDestination(
      //       label: 'People',
      //       icon: Icon(Icons.group_outlined),
      //     ),
      //   ],
      //   selectedIndex: pageIndex.value,
      //   onDestinationSelected: (index) {
      //     pageIndex.value = index;
      //   },
      // ),
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
                            ),
                    ),
                    SizedBox(
                      key: ValueKey(tvs.hasLoaded),
                      child: !tvs.hasLoaded
                          ? const CircularProgressIndicator()
                          : MainPageTVs(
                              tvs: tvs.requireData,
                            ),
                    ),
                    SizedBox(
                      key: ValueKey(persons.hasLoaded),
                      child: !persons.hasLoaded
                          ? const CircularProgressIndicator()
                          : MainPagePersons(
                              persons: persons.requireData,
                            ),
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
