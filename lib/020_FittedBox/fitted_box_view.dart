import 'package:flutter/material.dart';

class FittedBoxView extends StatelessWidget {
  const FittedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            child: Card(
              color: Colors.blue,
              child: Text(
                'FlutterLogo size is 1000000',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: FlutterLogo(size: 1000000),
          ),
        ],
      ),
    );
  }
}
