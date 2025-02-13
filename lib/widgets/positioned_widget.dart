import 'package:flutter/material.dart';

class PositionedWidget extends StatelessWidget {
  const PositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PositionedWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              left: 20,
                top: 20,
                child: Image.network('https://img.freepik.com/premium-photo/painting-mountain-lake-with-mountain-trees-background_583952-93405.jpg',
               width: 250,
                ),
                ),
            Positioned(
              left: 60,
              top: 120,
              child: Image.network('https://img.freepik.com/premium-photo/painting-mountain-lake-with-mountain-trees-background_583952-93405.jpg',
                width: 250,
              ),
            ),
            Positioned(
              left: 100,
              top: 220,
              child: Image.network('https://img.freepik.com/premium-photo/painting-mountain-lake-with-mountain-trees-background_583952-93405.jpg',
                width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
