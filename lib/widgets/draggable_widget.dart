import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  const DraggableWidget({super.key});

  @override
  State<DraggableWidget> createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  Color caughtColor = Colors.blueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableWidget'),
        backgroundColor: Colors.grey,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Draggable<Color>(
              data: Colors.orangeAccent,
              onDraggableCanceled: (velocity, offset) {
                // Handle if draggable is canceled
              },
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    'Box...',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.orangeAccent.withOpacity(0.3),
                child: const Center(
                  child: Text('Box'),
                ),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text('Box'),
                ),
              ),
            ),
            DragTarget<Color>(
              // ignore: deprecated_member_use
              onAccept: (Color color) {
                setState(() {
                  caughtColor = color;
                });
              },
              builder: (
                  BuildContext context,
                  List<Color?> accepted,
                  List<dynamic> rejected,
                  ) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                  child: const Center(
                    child: Text("Drag Here"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
