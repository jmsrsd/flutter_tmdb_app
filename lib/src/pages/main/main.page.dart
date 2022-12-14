import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../hooks/api.hook.dart';
import '../../hooks/async.hook.dart';
import '../../types/movies/movies.group.dart';
import '../../types/movies/params/get/movies.params.get.dart';

import 'main.page.movies.dart';

class MainPage extends HookWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Home';

    final currentPageIndex = useState(0);

    final api = useAPI();

    final movies = useAsync([MoviesGroup.topRated.endpoint], () {
      return api.getMovies(
        MoviesGetParams(
          group: MoviesGroup.topRated,
        ),
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
        selectedIndex: currentPageIndex.value,
        onDestinationSelected: (index) {
          currentPageIndex.value = index;
        },
      ),
      body: Center(
        child: !movies.hasLoaded
            ? const CircularProgressIndicator()
            : MainPageMovies(
                model: movies.requireData,
              ),
      ),
    );
  }
}
