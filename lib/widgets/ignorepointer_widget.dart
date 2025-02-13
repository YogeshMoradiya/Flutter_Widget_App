import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  const IgnorePointerWidget({super.key});

  @override
  State<IgnorePointerWidget> createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  bool ignore=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IgnorePointer'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                setState(() {
                  ignore =!ignore;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: ignore? Colors.red:Colors.green,
              ),
              child: Text(
                ignore ? 'Blocked' : 'All good',
              ),
            ),
            IgnorePointer(
              ignoring: ignore,
              child: ElevatedButton(onPressed: () {},
                  child: const Text('Click Me!')),
            ),
          ],
        ),
      ),
    );
  }
}
