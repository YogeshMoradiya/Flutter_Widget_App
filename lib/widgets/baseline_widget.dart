import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  const BaselineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baseline Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.lightGreenAccent,
            child: const Baseline(
                baseline: 50,
                baselineType: TextBaseline.ideographic,
              child: FlutterLogo(
                size: 50,
              ),
            ),
        ),
      ),
    );
  }
}
