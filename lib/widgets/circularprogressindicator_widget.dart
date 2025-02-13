import 'package:flutter/material.dart';

class CircularprogressIndicatorWidget extends StatelessWidget {
  const CircularprogressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProgressIndcatorWidget'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.orangeAccent,
          backgroundColor: Colors.black12,
          //value: 0.50,
        ),
      ),
    );
  }
}
