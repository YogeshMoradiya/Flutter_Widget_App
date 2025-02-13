import 'package:flutter/material.dart';

class TooltipWidget extends StatelessWidget {
  const TooltipWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(
     title: const Text('TooltipWidget'),
     backgroundColor: Colors.cyanAccent,
   ),
     body: const Center(
       child: Tooltip(
         message: 'This is Text',
         child: Text('Hover over the text to show a tooltip.'),
       ),
     ),
   );
  }
}
