import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatefulWidget {
  static String? routeName = "/PageTween";
  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  double _startValue = 0.5;
  double _endValue = 4.0;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(
      begin: _startValue,
      end: _endValue,
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TweenAnimationBuilder<double>(
        tween: Tween<double>(
          begin: _startValue,
          end: _endValue,
        ),
        duration: const Duration(seconds: 2),
        builder: (BuildContext context, double value, Widget? child) {
          return Transform.scale(
            scale: value,
            child: child,
          );
        },
        child: Container(
          width: 100.0,
          height: 100.0,
          color: Colors.blue,
        ),
      ),
      ElevatedButton(
          onPressed: () {
            _animationController.reverse();
          },
          child: Text("Click"))
    ]);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
