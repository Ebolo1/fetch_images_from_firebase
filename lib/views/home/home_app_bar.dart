import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text('Fetch From Firebase'),
      elevation: 1,
      floating: true,
      forceElevated: true,
    );
  }
}
