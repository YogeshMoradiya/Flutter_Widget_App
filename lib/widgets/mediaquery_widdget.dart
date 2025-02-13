import 'package:flutter/material.dart';
//creating responsive layouts device's screen size, such as screen width, screen height, device pixel ratio, and more.
class MediaqueryWidget extends StatelessWidget {
  const MediaqueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var size,height,width;
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
      title:const Text('MediaqueryWidget'),
        backgroundColor: Colors.grey,
    ),
      body: Container(
        color: Colors.yellow,
        height: height/2,//half of the height size
        width: width/2,//half of the width size
      ),
    );
  }
}
