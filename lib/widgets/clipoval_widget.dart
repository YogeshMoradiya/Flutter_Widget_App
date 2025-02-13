import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('ClipOval widget'),
      backgroundColor: Colors.grey,
    ),
      body: Center(
        child: ClipOval(
          clipper: Customclip(),
          child: Container(
            width: 80,
            height: 80,
            color: Colors.orangeAccent,

          ),
        ),
      ),
    );
  }
}

class Customclip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
   return Rect.fromLTWH(0, 0, size.width -15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
