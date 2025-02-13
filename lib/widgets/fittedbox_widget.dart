import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('FittedBoxWidget'),
      backgroundColor: Colors.black26,
    ),
    body: Center(
      child: Container(
        height: 50,
        width: 120,
        color: Colors.black38,
        child:const FittedBox(
        child: Text('This is FittedBox',
        style: TextStyle(color: Colors.white),
        ),
        ),
      ),
    ),
    );
  }
}
