import 'package:flutter/material.dart';

class CustomPaintView extends StatelessWidget {
  const CustomPaintView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: CustomPaint(
            size: const Size(200, 100),
            painter: _MyPainter(),
          ),
        ),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerWidth = size.width / 2;
    double centerHeight = size.height / 2;

    final _starOffsetList = <Offset>[
      Offset(centerWidth + 90, centerHeight + 120),
      Offset(centerWidth - 145, centerHeight - 45),
      Offset(centerWidth + 145, centerHeight - 45),
      Offset(centerWidth - 90, centerHeight + 120),
      Offset(centerWidth + 0, centerHeight - 145),
    ];

    final path = Path()..addPolygon(_starOffsetList, false);
    canvas.drawPath(
      path,
      Paint()
        ..color = Colors.pink
        ..strokeWidth = 1.0,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
