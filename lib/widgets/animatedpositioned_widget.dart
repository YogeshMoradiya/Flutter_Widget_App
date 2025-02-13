import 'package:flutter/material.dart';

class AnimatedPositionedWidget extends StatefulWidget {
  const AnimatedPositionedWidget({super.key});

  @override
  State<AnimatedPositionedWidget> createState() => _AnimatedPositionedWidgetState();
}

class _AnimatedPositionedWidgetState extends State<AnimatedPositionedWidget> {
  bool selected=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:const Text('AnimatedPositionedWidget'),
      backgroundColor: Colors.grey,
    ),
      body:SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: <Widget>[
            AnimatedPositioned(right: selected? 5.0 : 10.0,
              width: selected ? 180.0 : 60.0,
              height: selected ? 60.0 : 200.0,
              top: selected ? 60.0 : 150.0,
              duration: const Duration(seconds: 3),
              curve: Curves.bounceInOut,
              child:GestureDetector(
                onTap: (){
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
