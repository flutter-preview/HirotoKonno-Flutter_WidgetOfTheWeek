import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _SampleWrapView(),
    );
  }
}

class _SampleWrapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          direction: Axis.horizontal,
          // alignment: WrapAlignment.center,
          spacing: 10.0,
          runAlignment: WrapAlignment.spaceBetween,
          runSpacing: 30.0,
          children: [
            Container(width: 100, height: 50, color: Colors.red),
            Container(width: 100, height: 50, color: Colors.green),
            Container(width: 100, height: 50, color: Colors.blue),
            Container(width: 100, height: 50, color: Colors.yellow),
            Container(width: 100, height: 50, color: Colors.orange),
            Container(width: 100, height: 50, color: Colors.red),
            Container(width: 100, height: 50, color: Colors.green),
            Container(width: 100, height: 50, color: Colors.blue),
            Container(width: 100, height: 50, color: Colors.yellow),
            Container(width: 100, height: 50, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
