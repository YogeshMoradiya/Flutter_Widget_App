import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatefulWidget {
  const RefreshIndicatorWidget({super.key});

  @override
  State<RefreshIndicatorWidget> createState() => _RefreshIndicatorWidgetState();
}

class _RefreshIndicatorWidgetState extends State<RefreshIndicatorWidget> {
  List<String>items=[
    "Item 1",
    "Item 2",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator'),
        backgroundColor: Colors.grey,
      ),
      body: RefreshIndicator(
          onRefresh: () async{
            await Future.delayed(
              const Duration(seconds: 1),
            );
            int nextItem=items.length+1;
            items.add("Item$nextItem");
            setState(() {
            });
          },
        color: Colors.white,
        backgroundColor: Colors.blueAccent,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: ((context, index)=>Padding(
                padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(items[index]),
                tileColor: Colors.white,
              ),
            )),
          padding: const EdgeInsets.all(5.0),
        ),
      ),
    );
  }
}
