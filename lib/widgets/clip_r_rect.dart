import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  // Define a TextStyle for the Text widgets
  static const TextStyle style = TextStyle(
    fontSize: 20.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRRectWidget'),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              constraints: const BoxConstraints(
                maxWidth: 300,
                maxHeight: 100,
              ),
              color: Colors.blue,
              child: const Text('No ClipRRect', style: style),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 100,
                ),
                color: Colors.green,
                child: const Text('ClipRRect', style: style),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(40.0),
              ),
              child: Container(
                alignment: Alignment.center,
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 100,
                ),
                color: Colors.purple,
                child: const Text('ClipRRect', style: style),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
