import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('RichTextWidget'),
          backgroundColor: Colors.grey,
    ),
       body:Center(
         child: RichText(
           text:const TextSpan(
             style: TextStyle(
               color: Colors.orangeAccent,
               fontSize: 30,
             ),
             children: <TextSpan>[
               TextSpan(text: 'To The '),
               TextSpan(
                 text: ' Moon ',
                 style: TextStyle(
                   color: Colors.black12,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               TextSpan(
                 text: ' And Beyond!',
               ),
             ],
           ),
         ),
       ),
    );
  }
}
