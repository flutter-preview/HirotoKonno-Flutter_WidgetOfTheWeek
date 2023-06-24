import 'package:flutter/material.dart';

class FlexibleView extends StatelessWidget {
  const FlexibleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        // top: false,
        // bottom: false,
        // minimum: EdgeInsets.all(10.0),
        // maintainBottomViewPadding: true,
        child: Column(children: [
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.cyan,
            ),
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.teal,
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: 100,
              color: Colors.indigo,
            ),
          ),
        ]),
      ),
    );
  }
}
