import 'package:flutter/material.dart';

class DraggableScrollableWidget extends StatelessWidget {
  const DraggableScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DraggableScrollableWidget'),
        backgroundColor: Colors.grey,
      ),
      body: DraggableScrollableSheet(
          builder:(BuildContext context,ScrollController scrollController){
            return Container(
               color: Colors.orangeAccent,
                child: ListView.builder(
                    controller:scrollController,
                    itemCount: 25,
                    itemBuilder: (BuildContext context,int index){
                      return ListTile(
                        title: Text('Item$index'),
                      );
                    },
                ),
            );
          },
      ),
    );
  }
}
