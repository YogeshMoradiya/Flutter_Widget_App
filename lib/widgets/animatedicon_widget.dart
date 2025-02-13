import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({super.key});

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget> with TickerProviderStateMixin {
  late AnimationController _controller;
  bool isClicked = false;

  @override
  void initState() {
    // Initializing the animation controller
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    // Disposing the controller when not needed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Icon Widget'),
      ),
      body: Center(
        child: IconButton(
          iconSize: 70,
          onPressed: () {
            // Toggle animation between forward and reverse
            if (!isClicked) {
              _controller.forward();
            } else {
              _controller.reverse();
            }

            // Toggle the state of isClicked
            setState(() {
              isClicked = !isClicked;
            });
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller, // Set animation progress
          ),
        ),
      ),
    );
  }
}
