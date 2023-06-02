import 'package:flutter/material.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Table(
          border: TableBorder.all(),
          children:  [
            TableRow(
              children:[
                 Container(
                  color: Colors.pink,
                   height: 200,
                   width: 20,
                ),
                Container(
                  color: Colors.orange,
                  height: 150,
                  width: 20,
                ),
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 20,
                ),
                Container(
                  color: Colors.yellow,
                  height: 50,
                  width: 20,
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}