import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActivityIndicator-Widget'),
        backgroundColor:Colors.grey,
      ),
      body: const Center(
        child: CupertinoActivityIndicator(
          radius: 50,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}
