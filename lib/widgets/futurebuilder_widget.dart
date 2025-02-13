import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatelessWidget {
  const FutureBuilderWidget({super.key});

  //data refresh and fetch from apis
  // Simulating a Future that takes 3 seconds to complete
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 3));
    return "Data Loaded!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FutureBuilderWidget'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: FutureBuilder<String>(
          future: fetchData(), // The future that will be awaited
          builder: (context, snapshot) {
            // Checking connection state and displaying appropriate content
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator(); // Display a loader while waiting
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}'); // Handle any errors
            } else {
              return Text('Result: ${snapshot.data}'); // Display the fetched data
            }
          },
        ),
      ),
    );
  }
}

