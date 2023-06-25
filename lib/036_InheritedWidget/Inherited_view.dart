import 'dart:async';

import 'package:flutter/material.dart';

class InheritedView extends StatefulWidget {
  InheritedView({super.key});

  final Widget child = Scaffold(
    appBar: AppBar(),
    body: const CountWidget(),
  );

  @override
  createState() => _InheritedViewState();
}

class _InheritedViewState extends State<InheritedView> {
  int timeCount = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timeCount++;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CountData(
      count: timeCount,
      child: widget.child,
    );
  }
}

class CountWidget extends StatelessWidget {
  const CountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final count =
        context.dependOnInheritedWidgetOfExactType<CountData>()?.count;
    return Text('count: $count',style: const TextStyle(fontSize: 60),);
  }
}

class CountData extends InheritedWidget {
  const CountData({super.key, required Widget child, required this.count})
      : super(child: child);

  final int count;

  @override
  bool updateShouldNotify(CountData oldWidget) {
    return true;
  }
}
