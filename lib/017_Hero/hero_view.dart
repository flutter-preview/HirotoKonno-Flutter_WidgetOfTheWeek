import 'package:flutter/material.dart';

class HeroView extends StatelessWidget {
  const HeroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailScreen();
          }));
        },
        child: const Hero(
          tag: 'imageHero',
          child: FlutterLogo(size: 150)
          ),
        ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Center(
          child: Hero( // 画面遷移後の Hero
            tag: 'imageHero', // 画面遷移前の tag と共通
            child: FlutterLogo(size: 150),
          ),
        ),
      ),
    );
  }
}