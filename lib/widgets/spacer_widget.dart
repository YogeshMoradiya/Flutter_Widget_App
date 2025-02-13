import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('SpacerWidget'),
        backgroundColor: Colors.grey,
      ),
      body: const Row(
        children: <Widget>[
          Text('Begin'),
          Spacer(), // Defaults to a flex of one.
          Text('Middle'),
          // Gives twice the space between Middle and End than Begin and Middle.
          Spacer(flex: 1),
          Text('End'),
        ],
      ),
    );
  }
}
