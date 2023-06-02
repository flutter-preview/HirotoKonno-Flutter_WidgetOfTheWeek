import 'package:flutter/material.dart';

class FloatingActionButtonView extends StatelessWidget {
  const FloatingActionButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButtonView'),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("test");
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(color: Colors.yellow,child: Container(height: 50.0,),),
    );
  }
}