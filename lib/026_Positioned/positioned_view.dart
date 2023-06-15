import 'package:flutter/material.dart';

class PositionedView extends StatelessWidget {
  const PositionedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: const [
            Positioned(
              bottom: 50,
              right: 25,
              width: 75,
              height: 75,
              child: FlutterLogo(size: 100),
            ),
            Positioned.fill(
              child: FlutterLogo(size: 100),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Hello!!",
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
}
