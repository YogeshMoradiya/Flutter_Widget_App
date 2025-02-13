import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatefulWidget {
  const ListWheelScrollViewWidget ({super.key});

  @override
  State<ListWheelScrollViewWidget> createState() => _State();
}

class _State extends State<ListWheelScrollViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWheelScrollViewWidget'),
        backgroundColor: Colors.grey,
      ),
      body: ListWheelScrollView(
        diameterRatio: 0.5,
        itemExtent: 100,
        children: List.generate(
          20,
            (index) => ListTile(iconColor: Colors.blueAccent,
              title: const Text('list wheel widget'),
              onTap: () {},
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.menu),
            ),
        ),
      ),
    );
  }
}
