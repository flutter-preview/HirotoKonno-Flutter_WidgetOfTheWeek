import 'package:flutter/material.dart';

class SizedBoxView extends StatelessWidget {
  const SizedBoxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('ButtonA'),
            ),
            const SizedBox(
              height: 200,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('ButtonB'),
            ),
            const SizedBox(
              height: 100,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('ButtonC'),
            ),
            SizedBox(
              height: 300,
              child: TextButton(
                onPressed: () {},
                child: const Text('SizedBox'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
