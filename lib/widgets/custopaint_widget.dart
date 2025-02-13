import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('CustomPaintWidget'),
      backgroundColor: Colors.cyanAccent,
    ),
      body: Padding(padding: const EdgeInsets.all(20.0),
        child: Center(
          child: CustomPaint(
            painter: Demopainter(),
            child: const Text('This is Pic-Man',
              style: TextStyle(
                color: Colors.black12,
                backgroundColor: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class Demopainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var center=size/2;
    var paint=Paint()..color=Colors.yellow;
    canvas.drawArc(
        Rect.fromCenter(
        center: Offset(center.width, center.height),
        width: 250,
          height: 250,
        ),
      0.4,
      2*3.14-0.8,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return false;
  }
  
}