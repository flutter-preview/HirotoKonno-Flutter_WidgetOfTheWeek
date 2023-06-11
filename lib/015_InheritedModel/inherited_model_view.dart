import 'package:flutter/material.dart';

enum LogoAspect { backgroundColor, large }

class InheritedModelView extends StatelessWidget {
  const InheritedModelView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _InheritedModelView();
  }
}

class LogoModel extends InheritedModel<LogoAspect> {
  const LogoModel({
    super.key,
    this.backgroundColor,
    this.large,
    required super.child,
  });

  final Color? backgroundColor;
  final bool? large;

  static Color? backgroundColorOf(BuildContext context) {
    return InheritedModel.inheritFrom<LogoModel>(context,
            aspect: LogoAspect.backgroundColor)
        ?.backgroundColor;
  }

  static bool sizeOf(BuildContext context) {
    return InheritedModel.inheritFrom<LogoModel>(context,
                aspect: LogoAspect.large)
            ?.large ??
        false;
  }

  @override
  bool updateShouldNotify(LogoModel oldWidget) {
    return backgroundColor != oldWidget.backgroundColor ||
        large != oldWidget.large;
  }

  @override
  bool updateShouldNotifyDependent(
      LogoModel oldWidget, Set<LogoAspect> dependencies) {
    if (backgroundColor != oldWidget.backgroundColor &&
        dependencies.contains(LogoAspect.backgroundColor)) {
      return true;
    }
    if (large != oldWidget.large && dependencies.contains(LogoAspect.large)) {
      return true;
    }
    return false;
  }
}

class _InheritedModelView extends StatefulWidget {
  const _InheritedModelView();

  @override
  State<_InheritedModelView> createState() => _InheritedModelState();
}

class _InheritedModelState extends State<_InheritedModelView> {
  bool isLarge = false;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InheritedModel')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: LogoModel(
              backgroundColor: color,
              large: isLarge,
              child: const BackgroundWidget(
                child: LogoWidget(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (color == Colors.blue) {
                      color = Colors.black;
                    } else {
                      color = Colors.blue;
                    }
                  });
                },
                child: const Text('Change Color'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isLarge = !isLarge;
                  });
                },
                child: const Text('Change Logo Size'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final Color color = LogoModel.backgroundColorOf(context)!;

    return AnimatedContainer(
      padding: const EdgeInsets.all(12.0),
      color: color,
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      child: child,
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bool largeLogo = LogoModel.sizeOf(context);

    return AnimatedContainer(
      padding: const EdgeInsets.all(20.0),
      duration: const Duration(seconds: 1),
      curve: Curves.fastLinearToSlowEaseIn,
      alignment: Alignment.center,
      child: FlutterLogo(size: largeLogo ? 200.0 : 100.0, textColor: largeLogo ? Colors.black : Colors.white,),
    );
  }
}
