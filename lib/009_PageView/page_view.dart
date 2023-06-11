import 'package:flutter/material.dart';

class PageviewView extends StatelessWidget {
  const PageviewView({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      scrollDirection: Axis.vertical,
      controller: controller,
      children: <Widget>[
        const Center(
          child: Text('AAA'),
        ),
        const Center(
          child: Text('BBB'),
        ),
        PageView(
          controller: controller,
          children: const <Widget>[
            Center(
              child: FlutterLogo(size: 100),
            ),
            Center(
              child: Text('CCC'),
            ),
            Center(
              child: Text('DDD'),
            ),
          ],
        ),
      ],
    );
  }
}
