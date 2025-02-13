import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({super.key});

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  int _counter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
                _counter +=1;
            });
          },
          child: Container(
            height: 80,
            width: 80,
            color: Colors.blueAccent,
            child: Center(
              child: Text(_counter.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
