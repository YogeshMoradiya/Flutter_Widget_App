import 'package:flutter/material.dart';

class RotatedBoxWidget extends StatelessWidget {
  const RotatedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RotatedBox Widget'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: RotatedBox(
          quarterTurns: 2,
          child: FlutterLogo(
            size:200,
          ),
        ),
      ),
    );
  }
}
