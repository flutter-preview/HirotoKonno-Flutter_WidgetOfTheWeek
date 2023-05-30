import 'package:flutter/material.dart';

class ExpandedView extends StatelessWidget {
  const ExpandedView({super.key});

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
          child: Row(
            children: const [
              Expanded(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Card(
                    color: Colors.green,
                    child: Text(
                      'Expanded(in Row)',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ),
              // Flexible(
              //   child: SizedBox(
              //     width: 100,
              //     height: 100,
              //     child: Card(
              //       color: Colors.red,
              //       child: Text('Flexible'),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}