import 'package:flutter/material.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        backgroundColor: Colors.grey,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 1,
          ),
          itemBuilder: (_, index) => GridTile(
            header: const GridTileBar(
              backgroundColor: Colors.black12,
              leading: Icon(Icons.person),
              title: Text('Flutter'),
              trailing: Icon(Icons.menu),
            ),
            footer: const GridTileBar(
              backgroundColor: Colors.black12,
              leading: Icon(Icons.favorite),
            ),
            child: Image.network('https://img.freepik.com/free-vector/bird-colorful-gradient-design-vector_343694-2506.jpg?size=338&ext=jpg&ga=GA1.1.1819120589.1727308800&semt=ais_hybrid',
            fit: BoxFit.cover,
            ),
          ),
        itemCount: 10,
      ),
    );
  }
}
