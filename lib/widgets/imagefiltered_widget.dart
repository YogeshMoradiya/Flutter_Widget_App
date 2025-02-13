import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFilteredWidget extends StatelessWidget {
  const ImageFilteredWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ImageFiltered'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: SizedBox.expand(
          //using ImageFilter Widget
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(
                // Giving values to SigmaX and SigmaY
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Image.network(
                'https://pbs.twimg.com/media/FSgl1OfUcAEsiQV.jpg:large',
                // fit: BoxFit.fitHeight,
              ),
            ),
        ),
      ),
    );
  }
}
