import 'package:flutter/material.dart';

class ColorFilteredWidget extends StatelessWidget {
  const ColorFilteredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorFiltered'),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.red,
                BlendMode.overlay,
              ),
              child: Image.network(  fit: BoxFit.cover,
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              ),
            ),
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.grey,
                BlendMode.hardLight,
              ),
              child: Image.network(
                fit: BoxFit.cover,
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
