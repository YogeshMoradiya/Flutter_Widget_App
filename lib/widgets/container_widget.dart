import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Container Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child:  Container(
          height: 200,
          width: double.infinity,
          color: Colors.greenAccent,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          transform: Matrix4.rotationZ(0.1),
          child: const Text("Hello! i am inside a container!",
              style: TextStyle(fontSize: 20,color: Colors.white,)),
        ),
      ),
    );
  }
}
