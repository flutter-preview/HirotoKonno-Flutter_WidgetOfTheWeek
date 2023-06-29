import 'dart:math';

import 'package:flutter/material.dart';

class PlaceholderView extends StatelessWidget {
  const PlaceholderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: Placeholder(),
        ),
      ),
    );
  }
}