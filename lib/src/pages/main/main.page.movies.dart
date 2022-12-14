import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../components/movie.component.dart';
import '../../types/movies/model/movies.model.dart';
import '../../utils/with_separator.dart';

class MainPageMovies extends HookWidget {
  final MoviesModel movies;

  const MainPageMovies({
    super.key,
    required this.movies,
  });

  @override
  Widget build(context) {
    final totalPages = movies.totalPages;
    final totalResults = movies.totalResults;
    final page = movies.page;
    final results = movies.results;
    final params = movies.params;

    return Column(
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(
        //     kToolbarHeight / 2.0,
        //   ).copyWith(bottom: kToolbarHeight / 4.0),
        //   child: Row(
        //     children: withSeparator(
        //       separator: const SizedBox(width: kToolbarHeight / 4.0),
        //       children: [
        //         ListTile(
        //           title: const Text('Group'),
        //           subtitle: Text(params.group.name),
        //         ),
        //         ListTile(
        //           title: const Text('Language'),
        //           subtitle: Text(params.language.toString()),
        //         ),
        //         ListTile(
        //           title: const Text('Region'),
        //           subtitle: Text(params.region.name),
        //         ),
        //       ].map((e) {
        //         return Card(
        //           child: Padding(
        //             padding: const EdgeInsets.all(
        //               kToolbarHeight / 4.0,
        //             ).copyWith(bottom: kToolbarHeight / 2.0),
        //             child: e,
        //           ),
        //         );
        //       }).map((e) {
        //         return Expanded(child: e);
        //       }).toList(),
        //     ),
        //   ),
        // ),
        ListTile(
          title: const Text('Movies'),
          subtitle: const Text('Now playing'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_outlined),
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
                return Movie(movie: results[index]);
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
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Theme.of(context).colorScheme.onSurface,
                    child: Text('$page / $totalPages'),
                  ),
                ),
                IconButton(
                  onPressed: () {},
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
            trailing: CircleAvatar(
              backgroundColor: Colors.transparent,
              foregroundColor: Theme.of(context).colorScheme.onSurface,
              radius: 48,
              child: Row(
                children: [
                  const Icon(Icons.movie_outlined),
                  const SizedBox(width: 16.0),
                  Text('$totalResults'),
                ],
              ),
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.all(
        //     kToolbarHeight / 2.0,
        //   ).copyWith(top: kToolbarHeight / 4.0),
        //   child: Row(
        //     children: withSeparator(
        //       separator: const SizedBox(width: kToolbarHeight / 4.0),
        //       children: [
        //         ListTile(
        //           title: const Text('Page'),
        //           subtitle: Text(page.toString()),
        //         ),
        //         ListTile(
        //           title: const Text('Total Pages'),
        //           subtitle: Text(totalPages.toString()),
        //         ),
        //         ListTile(
        //           title: const Text('Total Movies'),
        //           subtitle: Text(totalResults.toString()),
        //         ),
        //       ].map((e) {
        //         return Card(
        //           child: Padding(
        //             padding: const EdgeInsets.all(
        //               kToolbarHeight / 4.0,
        //             ).copyWith(bottom: kToolbarHeight / 2.0),
        //             child: e,
        //           ),
        //         );
        //       }).map((e) {
        //         return Expanded(child: e);
        //       }).toList(),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
