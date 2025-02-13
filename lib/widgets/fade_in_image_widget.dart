import 'package:flutter/material.dart';

class FadeInImageWidget extends StatelessWidget {
  const FadeInImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImage Example'),
        backgroundColor: Colors.blue,
      ),
      body: const Stack(
        children: [
           Center(
            child: CircularProgressIndicator(),
          ),
          Center(
            child: FadeInImage(
              placeholder: AssetImage('assets/images/img.jpg'), // Placeholder from assets
              image: AssetImage('assets/images/logo.jpg'), // Actual image from assets
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
