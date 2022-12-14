import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class MainPageGroupSelection extends HookWidget {
  const MainPageGroupSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(
        kToolbarHeight / 2.0,
      ).copyWith(
        bottom: kToolbarHeight * 2.0,
      ),
      children: [
        ListTile(
          title: const Text('Movies'),
          subtitle: Column(
            children: [
              ListTile(
                onTap: () {},
                title: Text('Now playing'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Popular'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Upcoming'),
              ),
              ListTile(
                onTap: () {},
                title: Text('Top rated'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
