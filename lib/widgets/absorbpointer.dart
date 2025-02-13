import 'package:flutter/material.dart';
//AbsorbPointer is a built-in widget in flutter which absorbs pointer, in other words, it prevents its subtree from being clicked, tapped, scrolled, dragged, and responding to hover.
class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsorbPointerWidget'),
        backgroundColor: Colors.grey,
      ),
    body: Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(onPressed: () {}, child: null,
            ),
          ),
          SizedBox(
            width: 100,
            height: 200,
            child: AbsorbPointer(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                ),
                onPressed: () {}, child: null,
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
