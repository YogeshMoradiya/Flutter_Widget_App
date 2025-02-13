import 'package:flutter/material.dart';

class ScrollbarWidget extends StatefulWidget {
  const ScrollbarWidget({super.key});

  @override
  State<ScrollbarWidget> createState() => _ScrollbarWidgetState();
}

class _ScrollbarWidgetState extends State<ScrollbarWidget> {
  final ScrollController controller=ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollbarWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Scrollbar(
        radius: const Radius.circular(1),
          thickness: 10,
          thumbVisibility: true,
          trackVisibility: true,
          controller: controller,
        child: ListView.builder(
            controller: controller,
          itemCount: 30,
          itemBuilder: (BuildContext context,int index){
              return ListTile(
                title: Text('Item ${index + 1}'),
              );
          },
        ),
      ),
    );
  }
}
