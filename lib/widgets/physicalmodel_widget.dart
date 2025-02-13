import 'package:flutter/material.dart';

class PhysicalModelWidget extends StatelessWidget {
  const PhysicalModelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PhysicalModel'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: PhysicalModel(
          elevation: 30.0,
          shadowColor: Colors.black,
          color: Colors.black12,
          shape: BoxShape.circle,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Center(
              child: Icon(Icons.flutter_dash,size: 100,),
            ),
          ),
        ),
      ),
    );
  }
}
