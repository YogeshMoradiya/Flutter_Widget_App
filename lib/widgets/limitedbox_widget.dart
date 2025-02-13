import 'package:flutter/material.dart';

class LimitedboxWidget extends StatelessWidget {
  const LimitedboxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text('LimitedboxWidget'),
      backgroundColor: Colors.grey,
    ),
      body:const Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: LimitedBox(
            maxHeight: 50,
            maxWidth: 300,
            child: Card(
              child: ListTile(
                leading: Icon(Icons.person,size: 50,
                ),
                title: Text('Limited Widget'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
