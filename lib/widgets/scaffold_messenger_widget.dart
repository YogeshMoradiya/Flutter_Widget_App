import 'package:flutter/material.dart';

class ScaffoldMessengerWidget extends StatelessWidget {
  const ScaffoldMessengerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScaffoldMessenger'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(duration: Duration(seconds: 1),
                content: Text('A ScaffoldMessenger has been shown.'),
              ),
            );
          },
          child: const Text('Show Scaffold Messenger'),
        ),
      ),
    );
  }
}
