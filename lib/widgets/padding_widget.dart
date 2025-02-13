import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding Widget'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Card(
          child: Padding(
              padding: EdgeInsets.all(80),
              //padding: EdgeInsets.zero,
              // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              // padding: EdgeInsets.fromLTRB(5, 10, 15, 20),
            child: Text('Flutter App'),
          ),
        ),
      ),
    );
  }
}
