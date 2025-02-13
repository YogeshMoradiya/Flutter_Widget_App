import 'package:flutter/material.dart';

class SafeAreaWidget extends StatelessWidget {
  const SafeAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeArea Widget'),
        backgroundColor: Colors.grey,
      ),
      body: const SafeArea(
        top: true,
        left: false,
        bottom: true,
        right: true,
        minimum: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Align to the bottom
          children: [
            Text(
              'Hello! User',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

