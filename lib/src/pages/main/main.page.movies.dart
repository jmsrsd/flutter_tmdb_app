import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../components/movie.component.dart';
import '../../types/movies/model/movies.model.dart';
import '../../utils/with_separator.dart';

class MainPageMovies extends HookWidget {
  final MoviesModel model;

  const MainPageMovies({
    super.key,
    required this.model,
  });

  Widget useListTile({
    required String label,
    required dynamic value,
  }) {
    return ListTile(
      title: Text(label),
      subtitle: Text(value.toString()),
    );
  }

  @override
  Widget build(context) {
    return ListView(
      children: withSeparator(
        separator: const SizedBox(height: kToolbarHeight / 2.0),
        children: [
          useListTile(
            label: 'Params',
            value: model.params.toJson(),
          ),
          useListTile(
            label: 'Page',
            value: '${model.page} / ${model.totalPages}',
          ),
          useListTile(
            label: 'Total Results',
            value: model.totalResults,
          ),
          ...model.results.map((e) {
            return ListTile(
              title: Text('[ ${e.id} ]'),
              subtitle: Movie(model: e),
            );
          }).toList(),
        ],
      ),
    );
  }
}
