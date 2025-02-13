import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Divider'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.orangeAccent,
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
