import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatelessWidget {
  const BackdropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BackdropFilterWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: <Widget>[
          Text('0'*10000,style: const TextStyle(color: Colors.greenAccent,
          ),
          ),
          Center(
              child: ClipRect(
                child: BackdropFilter(filter: ImageFilter.blur(
                  sigmaX: 4.0,
                  sigmaY: 4.0,
                ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 250,
                    width: 250,
                    child: const Text('Bacdropfilter blur'),
                  ),
                ),
              ),
          ),
        ],
      )
    );
  }
}
