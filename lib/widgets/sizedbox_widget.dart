import 'package:flutter/material.dart';

class SizedboxWidget extends StatelessWidget {
  const SizedboxWidget({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBoxWidget'),
        backgroundColor: Colors.grey,
      ),
      body:const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(
              width: 200,
              height: 100,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'SizedBox with fixed width and height',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
             SizedBox(height: 30), // Spacing between the two boxes
            SizedBox(
              width: 200,
              height: 100,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'SizedBox with fixed width and height',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


