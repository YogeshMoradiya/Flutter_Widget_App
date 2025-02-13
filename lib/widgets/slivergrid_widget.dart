import 'package:flutter/material.dart';

class SliverGridWidget extends StatelessWidget {
  const SliverGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverGrid'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns in the grid
              mainAxisSpacing: 10, // Vertical space between items
              crossAxisSpacing: 10, // Horizontal space between items
              childAspectRatio: 2.0, // Aspect ratio of each item
            ),
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  height: 20,
                  color: Colors.amber[100],
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                );
              },
              childCount: 41, // Number of grid items
            ),
          ),
        ],
      ),
    );
  }
}

