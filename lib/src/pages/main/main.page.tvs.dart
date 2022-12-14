import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/components/tv.component.dart';
import '../../components/movie.component.dart';
import '../../types/tv/model/tv.model.dart';
import '../../types/tvs/model/tvs.model.dart';
import '../../utils/with_separator.dart';

class MainPageTVs extends HookWidget {
  final TVsModel model;

  const MainPageTVs({
    super.key,
    required this.model,
  });

  @override
  Widget build(context) {
    return ListView(
      padding: const EdgeInsets.all(kToolbarHeight / 2.0)
          .copyWith(bottom: kToolbarHeight),
      children: withSeparator(
        separator: const SizedBox(height: kToolbarHeight / 4.0),
        children: model.toJson().entries.map((e) {
          if (e.key == 'results') {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: withSeparator(
                separator: const SizedBox(
                  height: kToolbarHeight / 4.0,
                ),
                children: List.of(e.value).map((e) {
                  final model = TVModel.fromJson(e);
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(model.id.toString()),
                      ),
                      Expanded(
                        flex: 7,
                        child: TV(model: model),
                      ),
                    ],
                  );
                }).toList(),
              ),
            );
          }
          return Text(
            jsonEncode(Map.fromEntries([e])),
          );
        }).toList(),
      ),
    );
  }
}
