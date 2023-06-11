import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverListView extends StatefulWidget {
  const SliverListView({super.key});

  @override
  State<SliverListView> createState() => _SliverListViewState();
}

class _SliverListViewState extends State<SliverListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.black,
            title: Text('Silver List View'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Card(
                  child: Container(
                    color: Colors.blue[100 * (index % 12 + 1)],
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      "List Item $index",
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                );
              },
              childCount: 21,
            ),
          ),
        ],
      ),
    );
  }
}