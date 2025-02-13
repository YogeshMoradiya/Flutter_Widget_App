import 'package:flutter/material.dart';

class FlutterLogoWidget extends StatelessWidget {
  const FlutterLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterLogoWidget'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: FlutterLogo(
          size: 100,
          style: FlutterLogoStyle.stacked,
          textColor: Colors.blueAccent,
        ),
      ),
    );
  }
}
