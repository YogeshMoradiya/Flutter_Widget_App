import 'package:flutter/material.dart';
//use for temporary element
class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title:const Text('PlaceholderWidget'),
      backgroundColor: Colors.grey,
    ),
    body:const Column(
      children:  <Widget>[
        Placeholder(
          fallbackWidth: 50,
          fallbackHeight: 200,
          color: Colors.grey,
        ),
      ],
    ),
    );
  }
}
