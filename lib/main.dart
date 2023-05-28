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
      home: _SampleSafeAreaView(),
    );
  }
}

class _SampleSafeAreaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        // top: false,
        // bottom: false,
        // minimum: EdgeInsets.all(10.0),
        // maintainBottomViewPadding: true,
        child:             Container(
          // height: 2000,
          color: Colors.black,
          child: const Text(
            "SafeArea SafeArea SafeArea SafeArea SafeArea SafeArea SafeArea SafeArea SafeArea",
            style: TextStyle(
              // overflow: TextOverflow.ellipsis,
              color: Colors.white,
              fontSize: 100,
            ),
          ),
        ),
      ),
    );
  }
}