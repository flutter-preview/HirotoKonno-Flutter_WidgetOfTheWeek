import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ValueListenableBuilderView extends StatefulWidget {
  const ValueListenableBuilderView({super.key});

  @override
  State<ValueListenableBuilderView> createState() =>
      _ValueListenableBuilderSampleState();
}

class _ValueListenableBuilderSampleState
    extends State<ValueListenableBuilderView> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ValueListenableBuilderView")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const Text('You have pushed the button this many times:'),
            ValueListenableBuilder<int>(
              builder: (BuildContext context, int value, Widget? child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('$value',style: const TextStyle(fontSize: 100),),
                    child!,
                  ],
                );
              },
              valueListenable: _counter,
              child: const Text('回',style: TextStyle(fontSize: 100),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () => _counter.value += 2,
      ),
    );
  }
}
