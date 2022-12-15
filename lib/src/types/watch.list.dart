import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';

class WatchList {
  final List<MovieModel> movies;

  const WatchList({
    this.movies = const [],
  });

  int count() {
    return movies.length;
  }
}
