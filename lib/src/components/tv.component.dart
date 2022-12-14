import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tmdb_app/src/utils/with_separator.dart';
import '../types/tv/model/tv.model.dart';

class TV extends HookWidget {
  final TVModel tv;

  const TV({
    super.key,
    required this.tv,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: withSeparator(
        separator: const SizedBox(
          height: kToolbarHeight / 4.0,
        ),
        children: tv.toJson().entries.map((e) {
          return jsonEncode(Map.fromEntries([e]));
        }).map((e) {
          return Text(e);
        }).toList(),
      ),
    );
  }
}
