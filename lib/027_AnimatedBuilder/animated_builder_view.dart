import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderView extends StatefulWidget {
  const AnimatedBuilderView({super.key});

  @override
  State<AnimatedBuilderView> createState() => _AnimatedBuilderState();
}

class _AnimatedBuilderState extends State<AnimatedBuilderView>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: const FlutterLogo(size:100),
      builder: (BuildContext context, Widget? child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * math.pi,
          child: child,
        );
      },
    );
  }
}