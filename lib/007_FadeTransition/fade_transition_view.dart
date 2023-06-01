import 'package:flutter/material.dart';

class FadeTransitionView extends StatefulWidget {
  const FadeTransitionView({super.key});

  @override
  State<FadeTransitionView> createState() => _FadeTransitionExampleState();
}

class _FadeTransitionExampleState extends State<FadeTransitionView>
    with TickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.green,
      child: FadeTransition(
        opacity: _animation,
        child: const Padding(padding: EdgeInsets.all(100), child: FlutterLogo()),
      ),
    );
  }
}
