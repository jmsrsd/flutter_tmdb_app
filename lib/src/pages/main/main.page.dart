import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/components/movie.component.dart';
import 'package:flutter_tmdb_app/src/pages/main/main.page.persons.dart';
import 'package:flutter_tmdb_app/src/pages/main/main.page.tvs.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/src/types/tvs/tvs.group.dart';
import 'package:flutter_tmdb_app/src/utils/with_separator.dart';

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
    const title = 'Home';

    final pageIndex = useState(0);

    final api = useAPI();

    final moviesGroup = useState(MoviesGroup.topRated);

    final movies = useAsync([moviesGroup.value.endpoint], () {
      return api.getMovies(
        MoviesGetParams(group: moviesGroup.value),
      );
    });

    final tvsGroup = useState(TVsGroup.topRated);

    final tvs = useAsync([tvsGroup.value.endpoint], () {
      return api.getTVs(
        TVsGetParams(group: tvsGroup.value),
      );
    });

    final personsGroup = useState(PersonsGroup.popular);

    final persons = useAsync([personsGroup.value.endpoint], () {
      return api.getPersons(
        PersonsGetParams(group: personsGroup.value),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            label: 'Movies',
            icon: Icon(Icons.movie_outlined),
          ),
          NavigationDestination(
            label: 'TVs',
            icon: Icon(Icons.tv_outlined),
          ),
          NavigationDestination(
            label: 'People',
            icon: Icon(Icons.group_outlined),
          ),
        ],
        selectedIndex: pageIndex.value,
        onDestinationSelected: (index) {
          pageIndex.value = index;
        },
      ),
      body: Center(
        child: useAnimatedSwitcher(
          child: SizedBox(
            key: ValueKey(pageIndex.value),
            child: [
              SizedBox(
                key: ValueKey(movies.hasLoaded),
                child: !movies.hasLoaded
                    ? const CircularProgressIndicator()
                    : MainPageMovies(
                        model: movies.requireData,
                      ),
              ),
              SizedBox(
                key: ValueKey(tvs.hasLoaded),
                child: !tvs.hasLoaded
                    ? const CircularProgressIndicator()
                    : MainPageTVs(
                        model: tvs.requireData,
                      ),
              ),
              SizedBox(
                key: ValueKey(persons.hasLoaded),
                child: !persons.hasLoaded
                    ? const CircularProgressIndicator()
                    : MainPagePersons(
                        model: persons.requireData,
                      ),
              ),
            ].map((e) {
              return useAnimatedSwitcher(child: e);
            }).elementAt(pageIndex.value),
          ),
        ),
      ),
    );
  }
}
