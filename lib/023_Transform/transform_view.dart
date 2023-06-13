import 'package:flutter/material.dart';
import 'dart:math';

class TransformView extends StatelessWidget {
  const TransformView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Transform.rotate(
              angle: 45 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
            Transform.rotate(
              angle: 90 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
            Transform.rotate(
              angle: 135 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
            Transform.rotate(
              angle: 180 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
            Transform.rotate(
              angle: 225 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
            Transform.rotate(
              angle: 270 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
            Transform.rotate(
              angle: 2315 * pi / 180,
              child: const FlutterLogo(size: 100),
            ),
          ],
        ),
      ),
    );
  }
}
