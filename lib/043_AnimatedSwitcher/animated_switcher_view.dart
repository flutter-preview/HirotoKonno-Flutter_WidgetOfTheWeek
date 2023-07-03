import 'package:flutter/material.dart';

class AnimatedSwitcherView extends StatefulWidget {
  const AnimatedSwitcherView({super.key});

  @override
  State<AnimatedSwitcherView> createState() => _AnimatedSwitcherViewState();
}

class _AnimatedSwitcherViewState extends State<AnimatedSwitcherView> {
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AnimatedSwitcherView')),
        body: Center(
          child: AnimatedSwitcher(
            duration: const Duration(seconds: 2),
            reverseDuration: const Duration(seconds: 2),
            child: _flag
                ? Container(
                    key: const Key('1'),
                    width: 100,
                    height: 300,
                    color: Colors.red,
                  )
                : Container(
                    key: const Key('2'),
                    width: 300,
                    height: 100,
                    color: Colors.blue,
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.check),
          onPressed: () => setState(
            () => _flag = !_flag,
          ),
        ),
      ),
    );
  }
}
