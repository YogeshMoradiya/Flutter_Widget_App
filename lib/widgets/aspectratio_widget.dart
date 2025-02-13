import 'package:flutter/material.dart';

class AspectratioWidget extends StatelessWidget {
  const AspectratioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatioWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.blue,
        alignment: Alignment.center,
        width: double.infinity,
        height: 100.0,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
