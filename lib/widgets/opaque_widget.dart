import 'package:flutter/material.dart';

class OpaqueWidget extends StatelessWidget{
  const OpaqueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('opaquewidget'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child:Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTftZEvXN7zC1HOE3LclQCAx28T1vB83bHaNg&s',
              fit: BoxFit.cover,
              color: const Color.fromRGBO(255, 255, 255, 0.5),
              colorBlendMode: BlendMode.lighten
          )
      ),
      backgroundColor: Colors.lightBlue[50],
    );
  }
}
