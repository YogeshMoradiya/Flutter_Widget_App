import 'package:flutter/material.dart';
//This sample shows by dragging the user can reorder the items of the list.
class ReorderableListviewWidget extends StatefulWidget {
  const ReorderableListviewWidget({super.key});

  @override
  State<ReorderableListviewWidget> createState() => _ReorderableListviewWidgetState();
}

class _ReorderableListviewWidgetState extends State<ReorderableListviewWidget> {
  final List<int> items = List<int>.generate(20, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
    title:const Text('ReorderableListviewWidget'),
      backgroundColor: Colors.grey,
    ),
      body: ReorderableListView(
          children: List.generate(
            items.length,
              (index)=>ListTile(
                key: Key('$index'),
                tileColor: items[index].isOdd ? Colors.white:Colors.grey,
                title: Text('Item${items[index]}'),
                trailing: const Icon(Icons.drag_handle_sharp),
              ),
          ),
          onReorder: (int oldIndex,int newIndex) {
            setState(() {
              if(oldIndex<newIndex){
                newIndex -= 1;
              }
              final int item=items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
      ),
    );
  }
}
