import 'package:flutter/material.dart';

class PageviewWidget extends StatelessWidget {
  const PageviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageView Example'),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.cyan,
            child: const Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "2",
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            child: const Center(
              child: Text(
                "3",
                style: TextStyle(fontSize: 100, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
