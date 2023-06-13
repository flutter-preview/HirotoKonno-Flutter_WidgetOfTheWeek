import 'package:flutter/material.dart';

class AlignView extends StatelessWidget {
  const AlignView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: const [
            Align(
              alignment: Alignment.bottomRight,
              child: Text("Hello!!",
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text("Hello!!",
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            ),
            Align(
              alignment: Alignment.center,
              child: Text("Hello!!",
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text("Hello!!",
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Hello!!",
                  style: TextStyle(color: Colors.white, fontSize: 50)),
            ),
          ],
        ),
      ),
    );
  }
}
