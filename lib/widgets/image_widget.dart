import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Widget'),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Image(
            image:NetworkImage('https://img.freepik.com/free-photo/leaf-nature-backgrounds-pattern-illustration-plant-backdrop-design-abstract-vibrant-green-nature-wallpaper-illustration-generative-ai_188544-12680.jpg'),
          color: Colors.blueAccent,
          colorBlendMode: BlendMode.overlay,
        ),
      ),
    );
  }
}
