import 'package:flutter/material.dart';

class InkwellWidget extends StatefulWidget {
  const InkwellWidget({super.key});

  @override
  State<InkwellWidget> createState() => _InkwellWidgetState();
}

class _InkwellWidgetState extends State<InkwellWidget> {
  double sideLength = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inkwell Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: InkWell(
          onTap: () {},
          splashColor: Colors.brown,
          highlightColor: Colors.blueAccent,
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          child: Container(
            height: 200,
            width: 200,
            color: Colors.transparent,
            child: const Center(
              child: Text("Inkwell",style:TextStyle(fontSize: 30) ,),
            ),
          ),
        ),
      ),
    );
  }
}
