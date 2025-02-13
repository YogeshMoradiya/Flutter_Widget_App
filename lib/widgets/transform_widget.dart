import 'package:flutter/material.dart';

class TransformWidget extends StatelessWidget {
  const TransformWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TransformWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            // Rotation
            Transform.rotate(
              angle: 0.785, // 0.785 radians = 45 degrees
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Rotation',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // Translation (Positioning)
            Transform.translate(
              // Move 50 pixels to the right
              offset: const Offset(50.0,0.0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red, // Red container
                child: const Center(
                  child: Text(
                    'Translation',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // Scaling
            Transform.scale(
              scale: 1.5, // Scale to 1.5 times the default size
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Scaling',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            // Skewing
            Transform(
              transform: Matrix4.skew(0.2, 0.0), // Apply horizontal skew
              child: Container(
                width: 100,
                height: 100,
                color: Colors.orange, // Orange container
                child: const Center(
                  child: Text(
                    'Skewing', // Text label
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontWeight: FontWeight.bold, // Bold text
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
