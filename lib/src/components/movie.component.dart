import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/env.dart';
import 'package:flutter_tmdb_app/src/hooks/api.hook.dart';
import '../types/movie/model/movie.model.dart';
import '../utils/with_separator.dart';

class Movie extends HookWidget {
  final MovieModel movie;

  const Movie({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: '${Env.get().apiBaseImageUrl}'
          '${movie.posterPath}',
      httpHeaders: useAPI().header,
      progressIndicatorBuilder: (context, url, progress) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      imageBuilder: (context, imageProvider) {
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
                        child: Image(
                          image: imageProvider,
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
                                    child: Text(
                                      movie.releaseDate.replaceAll('-', '/'),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                    ),
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
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(
          kToolbarHeight / 2.0,
        ).copyWith(bottom: kToolbarHeight),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: withSeparator(
            separator: const SizedBox(
              height: kToolbarHeight / 4.0,
            ),
            children: movie.toJson().entries.map((e) {
              return jsonEncode(Map.fromEntries([e]));
            }).map((e) {
              return Text(e);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
