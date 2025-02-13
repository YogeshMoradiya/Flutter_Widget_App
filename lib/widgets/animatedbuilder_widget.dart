import 'package:flutter/material.dart';
import 'dart:math' as math;
// general-purpose widget that allows you to create animations for your mobile applications..
class AnimatedbuilderWidget extends StatefulWidget {
  const AnimatedbuilderWidget({super.key});

  @override
  State<AnimatedbuilderWidget> createState() => _AnimatedbuilderWidgetState();
}

class _AnimatedbuilderWidgetState extends State<AnimatedbuilderWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedbuilderWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
            child: const Center(
              child: Text('Hello !'),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2.0 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
