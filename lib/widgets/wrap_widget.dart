import 'package:flutter/material.dart';

class WrapWidgets extends StatelessWidget {
     const WrapWidgets({super.key});

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar:AppBar(
           title: const Text("wrapwidget"),
         ),
         body: Wrap(
           // direction: Axis.vertical,
           // alignment: WrapAlignment.center,
           // spacing:8.0,
           // runAlignment:WrapAlignment.center,
           // runSpacing: 8.0,
           // crossAxisAlignment: WrapCrossAlignment.center,
           // textDirection: TextDirection.rtl,
           // verticalDirection: VerticalDirection.up,
           spacing:8.0,
           runSpacing: 8.0,
           verticalDirection: VerticalDirection.down,
           children: <Widget>[
             Container(
                 color: Colors.blue,
                 width: 100,
                 height: 100,
                 // ignore: deprecated_member_use
                 child:const Center(child: Text(textScaleFactor: 2.5,"W1")),
             ),
             Container(
                 color: Colors.red,
                 width: 100,
                 height: 100,
                 // ignore: deprecated_member_use
                 child:const Center(child: Text("W2",textScaleFactor: 2.5,))
             ),
             Container(
                 color: Colors.teal,
                 width: 100,
                 height: 100,
                 // ignore: deprecated_member_use
                 child:const Center(child: Text("W3",textScaleFactor: 2.5,))
             ),
             Container(
                 color: Colors.indigo,
                 width: 100,
                 height: 100,
                 // ignore: deprecated_member_use
                 child:const Center(child: Text("W4",textScaleFactor: 2.5,))
             ),
             Container(
                 color: Colors.orange,
                 width: 100,
                 height: 100,
                 // ignore: deprecated_member_use
                 child:const Center(child: Text("W5",textScaleFactor: 2.5,))
             ),
           ],
         ),
       );
     }
}