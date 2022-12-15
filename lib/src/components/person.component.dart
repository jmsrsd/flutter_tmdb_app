import 'dart:convert';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/components/movie.component.dart';
import 'package:flutter_tmdb_app/src/types/media.type.dart';
import 'package:flutter_tmdb_app/src/types/movie/model/movie.model.dart';
import 'package:flutter_tmdb_app/src/utils/evaluate.dart';
import '../hooks/api.hook.dart';
import '../types/person/model/person.model.dart';
import '../types/person/model/person.model.dart';
import '../utils/with_separator.dart';
import 'person.component.dart';

class Person extends HookWidget {
  final PersonModel person;

  const Person({
    super.key,
    required this.person,
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
                child: Center(
                  child: AspectRatio(
                    aspectRatio: 3.0 / 4.0,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      color: Colors.transparent,
                      child: CachedNetworkImage(
                        imageUrl: '${api.env.apiBaseImageUrl}'
                            '${person.profilePath}',
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
                              child: const Icon(Icons.star_border_outlined),
                            ),
                          );
                        },
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                        width: double.maxFinite,
                        height: double.maxFinite,
                      ),
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
                    child: const Icon(Icons.star_border_outlined),
                  ),
                  title: Text(
                    person.name,
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
                          evaluate(() {
                            return [
                              ...person.knownForMovies.map((e) => e.title),
                              ...person.knownForTVs.map((e) => e.name),
                            ]..sort((a, b) => Random().nextInt(100000));
                          }).join(', '),
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
                                      Icons.star_border_outlined,
                                    ),
                                    label: Text(
                                      person.popularity.toStringAsFixed(2),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
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
  }
}
