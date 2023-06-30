import 'dart:math';

import 'package:flutter/material.dart';

class RichTextView extends StatelessWidget {
  const RichTextView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: RichText(
        text: TextSpan(
            style: Theme.of(context).textTheme.bodyLarge,
            children: const [
              TextSpan(
                  text: 'AAA',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextSpan(
                  text: 'BBB',
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue)),
              TextSpan(text: 'CCC', style: TextStyle(fontSize: 18)),
              TextSpan(
                  text: 'DDD',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextSpan(text: 'EEE', style: TextStyle(fontSize: 18)),
            ]),
      )),
    );
  }
}
