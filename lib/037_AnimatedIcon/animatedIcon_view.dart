import 'package:flutter/material.dart';

class AnimatedIconView extends StatefulWidget {
  const AnimatedIconView({super.key});

  @override
  State<AnimatedIconView> createState() => _AnimatedIconViewState();
}

class _AnimatedIconViewState extends State<AnimatedIconView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _status = false;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedIcon(
                icon: AnimatedIcons.pause_play,
                progress: _animationController,
              ),
              const SizedBox(height: 20),
              AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
              ),
              const SizedBox(height: 20),
              AnimatedIcon(
                icon: AnimatedIcons.list_view,
                progress: _animationController,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_status) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
          setState(() {
            _status = !_status;
          });
        },
        child: const Icon(Icons.replay),
      ),
    );
  }
}
