import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Floating Action Button"),
        ),
        body: const Center(
          child: Text("Floating Action Button Example startFloat"),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(elevation: 20,
          onPressed: () {
            // Add your action here
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.add,color: Colors.white,),// Add an icon of your choice
        ),
      ),
    );
  }
}


