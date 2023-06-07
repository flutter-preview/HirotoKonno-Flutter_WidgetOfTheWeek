import 'package:flutter/material.dart';

class TooltipView extends StatelessWidget {
  const TooltipView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TooltipView'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Tooltip(
              verticalOffset: 50,
              height: 24,
              message: '長押しされました',
              child: FlutterLogo(size: 150),
            ),
          ],
        ),
      ),
    );
  }
}
