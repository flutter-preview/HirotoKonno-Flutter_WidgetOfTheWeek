import 'package:flutter/material.dart';

class SilverAppBarView extends StatelessWidget {
  const SilverAppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              floating: true,
              flexibleSpace: FlutterLogo(size: 150),
              expandedHeight: 250.0,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(title: Text('Item $index')),
                childCount: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
