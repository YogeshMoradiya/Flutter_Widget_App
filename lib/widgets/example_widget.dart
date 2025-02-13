import 'package:flutter/material.dart';

class ExampleWidget extends StatefulWidget {
  const ExampleWidget({super.key});

  @override
  State<ExampleWidget> createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.orangeAccent,
      ),
    );
  }
}
