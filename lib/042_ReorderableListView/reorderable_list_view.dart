import 'package:flutter/material.dart';

class ReorderableExample extends StatelessWidget {
  ReorderableExample({Key? key}) : super(key: key);

  var list = List<ListItem>.generate(50, (int i) => ListItem("$i", i));

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
        itemCount: list.length,
        itemBuilder: (context, i) => makeItemCard(list[i], context),
        onReorder: (int oldIndex, int newIndex) {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          list.insert(newIndex, list.removeAt(oldIndex));
        });
  }

  Widget makeItemCard(ListItem item, BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.25);

    return Card(
      key: Key(item.number.toString()),
      child: ListTile(
        leading: const Icon(Icons.accessibility),
        title: Text(item.title),
        tileColor: item.number.isOdd ? oddItemColor : evenItemColor,
      ),
    );
  }
}

class ListItem {
  String title;
  int number;
  ListItem(this.title, this.number);
}
