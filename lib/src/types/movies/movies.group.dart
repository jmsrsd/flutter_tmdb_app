enum MoviesGroup {
  popular('/movie/popular'),
  upcoming('/movie/upcoming'),
  topRated('/movie/top_rated');

  final String endpoint;

  const MoviesGroup(this.endpoint);
}
