import 'package:flutter/material.dart';

class RawMagnifierWidget extends StatefulWidget {
  const RawMagnifierWidget({super.key});

  @override
  State<RawMagnifierWidget> createState() => _RawMagnifierWidgetState();
}

class _RawMagnifierWidgetState extends State<RawMagnifierWidget> {
  Offset dragGesturePosition = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RawMagnifier widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Drag On the logo!'),
            RepaintBoundary(
              child: Stack(
                children: <Widget>[
                  GestureDetector(
                    onPanUpdate: (DragUpdateDetails details)=>
                    setState(() {
                      dragGesturePosition = details.localPosition;
                    },),
                    child: const FlutterLogo(
                      size: 200,
                    ),
                  ),
                  Positioned(
                      left: dragGesturePosition.dx,
                      top: dragGesturePosition.dy,
                      child: const RawMagnifier(
                        decoration: MagnifierDecoration(
                          shape: StarBorder(
                            side: BorderSide(color: Colors.redAccent,width: 3,),
                          ),
                        ),
                        size: Size(150, 150),
                        magnificationScale: 2,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
