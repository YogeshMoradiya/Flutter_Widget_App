import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexibleWidget'),
        backgroundColor: Colors.grey,
      ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.orangeAccent,
            ),
            Flexible(
              fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.blueAccent,
                ),
            ),
          ],
        ),
    );
  }
}
