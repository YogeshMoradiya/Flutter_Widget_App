import 'package:flutter/material.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  const FractionallySizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FractionallySizedBox'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 1,
          child: Container(
            color: Colors.amberAccent,

          ),
        ),
      ),
    );
  }
}
