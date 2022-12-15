import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/hooks/api.hook.dart';
import 'package:flutter_tmdb_app/src/utils/noop.dart';

import '../types/movie/model/movie.model.dart';
import '../utils/with_separator.dart';

class Movie extends HookWidget {
  final MovieModel movie;
  final Function() onTap;
  final bool isOnWatchList;

  const Movie({
    super.key,
    required this.movie,
    this.onTap = noop,
    this.isOnWatchList = false,
  });

  @override
  Widget build(BuildContext context) {
    final api = useAPI();

    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.transparent,
                  child: Center(
                    child: CachedNetworkImage(
                      imageUrl: '${api.env.apiBaseImageUrl}'
                          '${movie.posterPath}',
                      httpHeaders: api.header,
                      progressIndicatorBuilder: (context, url, progress) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      errorWidget: (context, url, error) {
                        return Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            foregroundColor: Theme.of(
                              context,
                            ).colorScheme.onSurface,
                            child: const Icon(Icons.movie_outlined),
                          ),
                        );
                      },
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                      width: double.maxFinite,
                      height: double.maxFinite,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: kToolbarHeight / 8.0,
                  bottom: kToolbarHeight / 2.0,
                ),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Theme.of(context).hintColor,
                    child: Text(
                      movie.voteAverage.toString(),
                    ),
                  ),
                  title: Text(
                    movie.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: withSeparator(
                      separator: const SizedBox(height: 16),
                      children: [
                        Text(
                          movie.overview,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: withSeparator(
                            separator: const SizedBox(width: 16),
                            children: [
                              const SizedBox(),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Chip(
                                    padding: const EdgeInsets.all(8)
                                        .copyWith(right: 4),
                                    avatar: const Icon(
                                      Icons.edit_calendar_outlined,
                                    ),
                                    label: Text(
                                      movie.releaseDate.replaceAll('-', '/'),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ),
                              ),
                              if (isOnWatchList)
                                CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Theme.of(context).hintColor,
                                  child: const Icon(Icons.bookmark_added),
                                ),
                              const SizedBox(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
