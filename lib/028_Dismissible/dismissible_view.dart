import 'package:flutter/material.dart';

class DismissibleView extends StatefulWidget {
  const DismissibleView({Key? key}) : super(key: key);

  @override
  createState() => _DismissibleState();
}

class _DismissibleState extends State<DismissibleView> {
  List<int> items = List<int>.generate(11, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DismissibleView'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            key: Key(items.toString()),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            background: Container(
              color: Colors.pink,
            ),
            secondaryBackground: Container(color: Colors.blue, child: const Icon(Icons.cancel),),
            child: ListTile(
              title: Text(
                'Item ${items[index]}',
              ),
            ),
          );
        },
      ),
    );
  }
}
