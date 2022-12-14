enum TVsGroup {
  airingToday('/tv/airing_today'),
  onTheAir('/tv/on_the_air'),
  popular('/tv/popular'),
  topRated('/tv/top_rated');

  final String endpoint;

  const TVsGroup(this.endpoint);
}
