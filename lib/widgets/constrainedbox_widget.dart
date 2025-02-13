import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConstrainedBoxWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 900,
            maxHeight: 350,
          ),
          child: Container(
            color: Colors.orangeAccent,
            width: double.maxFinite,
          ),
        ),
      ),
    );
  }
}
