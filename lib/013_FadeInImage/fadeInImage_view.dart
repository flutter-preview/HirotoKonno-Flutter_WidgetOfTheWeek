import 'package:flutter/material.dart';

class FadeInImageView extends StatefulWidget {
  const FadeInImageView({super.key});

  @override
  State<FadeInImageView> createState() => _FadeInImageViewState();
}

class _FadeInImageViewState extends State<FadeInImageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fade In Image View'),
      ),
      body: SafeArea(
        child: Center(
          child: FadeInImage.assetNetwork(
            placeholder: 'images/loading.jpg',
            image:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/440px-Google-flutter-logo.svg.png', // Flutter ロゴの画像
            height: 100,
          ),
        ),
      ),
    );
  }
}