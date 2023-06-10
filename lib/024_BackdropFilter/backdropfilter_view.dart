import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterView extends StatelessWidget {
  const BackdropFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.orange[300],
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 120.0,
              sigmaY: 120.0,
            ),
            child: Container(
              color: Colors.black.withOpacity(0),
              child: const FlutterLogo(size: 10),
            ),
          ),
        ),
      ),
    );
  }
}
