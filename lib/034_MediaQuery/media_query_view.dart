import 'package:flutter/material.dart';

class MediaQueryView extends StatefulWidget {
  const MediaQueryView({super.key});

  @override
  _MediaQueryState createState() => _MediaQueryState();
}

class _MediaQueryState extends State<MediaQueryView> {
  @override
  Widget build(BuildContext context) {
    var textScaleFactor = MediaQuery.of(context).textScaleFactor;
    var orientation = MediaQuery.of(context).orientation;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        if (orientation == Orientation.portrait)
          FilledButton(
            onPressed: () {},
            child: const Text('Button A'),
          )
        else
          FilledButton(
            onPressed: () {},
            child: const Text('Button B'),
          ),
        const SizedBox(height: 20),
        FilledButton(
          onPressed: () {},
          child: Text(
            'Custom Font Size Button',
            style: TextStyle(fontSize: 16 * textScaleFactor),
          ),
        ),
        MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.5),
          child: const Text('Hello　Flutter'),
        ),
      ],
    );
  }
}
