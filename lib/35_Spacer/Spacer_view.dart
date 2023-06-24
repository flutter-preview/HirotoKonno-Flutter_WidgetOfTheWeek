import 'package:flutter/material.dart';

class SpacerView extends StatelessWidget {
  const SpacerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: Row(
            children: [
              _colorSquare(Colors.green),
              const Spacer(flex: 2),
              _colorSquare(Colors.yellow),
              const Spacer(),
              _colorSquare(Colors.orange),
              const SizedBox(width: 10),
              _colorSquare(Colors.pink),
            ],
          ),
        ),
      ),
    );
  }

  Widget _colorSquare(Color color) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
    );
  }
}
