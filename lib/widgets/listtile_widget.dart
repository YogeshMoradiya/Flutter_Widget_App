import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ListTile(
          title: const Text('User'),
          tileColor: Colors.orangeAccent,
          onTap: () {},
          leading: const Icon(Icons.person),
          trailing: const Icon(Icons.menu),
        ),
      ),
    );
  }
}
