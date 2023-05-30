import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerView extends StatefulWidget {
  const AnimatedContainerView({super.key});

  @override
  State<AnimatedContainerView> createState() => _AnimatedContainerViewState();
}

class _AnimatedContainerViewState extends State<AnimatedContainerView> {
  double _width = 50;
  double _height = 50;
  bool _isColorChanged = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Test'),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            color: _isColorChanged == false ? Colors.red : Colors.blue,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(size: 75),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _isColorChanged = !_isColorChanged;
              final random = Random();
              _width = random.nextInt(400).toDouble();
              _height = random.nextInt(400).toDouble();
            });
          },
          child: const Icon(Icons.play_circle_outlined),
        ),
      ),
    );
  }
}