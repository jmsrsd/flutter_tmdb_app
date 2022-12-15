import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../components/tv.component.dart';
import '../../types/tvs/model/tvs.model.dart';
import '../../types/tvs/tvs.group.dart';
import '../../utils/evaluate.dart';
import '../../utils/noop.dart';
import '../../utils/with_separator.dart';

class MainPageTVs extends HookWidget {
  final TVsModel tvs;
  final void Function() onNextPageButtonTap;
  final void Function() onBackPageButtonTap;
  final void Function() onGroupSelectionButtonTap;

  const MainPageTVs({
    super.key,
    required this.tvs,
    this.onNextPageButtonTap = noop,
    this.onBackPageButtonTap = noop,
    this.onGroupSelectionButtonTap = noop,
  });

  @override
  Widget build(context) {
    final totalPages = tvs.totalPages;
    final totalResults = tvs.totalResults;
    final page = tvs.page;
    final results = tvs.results;
    final params = tvs.params;
    final group = evaluate(() {
      switch (params.group) {
        case TVsGroup.airingToday:
          return 'Airing today';
        case TVsGroup.popular:
          return 'Popular';
        case TVsGroup.onTheAir:
          return 'On the air';
        case TVsGroup.topRated:
          return 'Top rated';
        default:
          return '';
      }
    });

    return Column(
      children: [
        ListTile(
          title: const Text('TVs'),
          subtitle: Text(group),
          leading: IconButton(
            onPressed: onGroupSelectionButtonTap,
            icon: const Icon(Icons.menu_outlined),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.movie_outlined),
              const SizedBox(width: 16.0),
              Text('$totalResults'),
              const SizedBox(width: 16.0),
            ],
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
                return TV(tv: results[index]);
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
                  onPressed: onBackPageButtonTap,
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: withSeparator(
                      separator: const SizedBox(width: 8),
                      children: [
                        Text('$page'),
                        const Text('/'),
                        Text('$totalPages'),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: onNextPageButtonTap,
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
          ),
        ),
      ],
    );
  }
}
