import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InteractiveViewer'),
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.orangeAccent,
      body: InteractiveViewer(
        maxScale: 5,
        boundaryMargin: const EdgeInsets.all(20.0), // Adjusted the margin
        child: Container(
          color: Colors.blue, // Add a sample child to demonstrate functionality
          width: 400,
          height: 400,
        ),
      ),
    );
  }
}
