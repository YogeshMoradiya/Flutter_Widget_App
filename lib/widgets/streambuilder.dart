import 'package:flutter/material.dart';

class StreambuilderWidget extends StatefulWidget {
  const StreambuilderWidget({super.key});
//data update and load
  @override
  State<StreambuilderWidget> createState() => _StreambuilderWidgetState();

  }

class _StreambuilderWidgetState extends State<StreambuilderWidget> {
  Stream<int> _countStream() {
    return Stream.periodic(const Duration(seconds: 1), (count) => count);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('StreambuilderWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: _countStream(), // The stream to listen to
          builder: (context, snapshot) {
            // Check if the stream has data
            if (snapshot.hasData) {
              return Text(
                'Count: ${snapshot.data}', // Display the latest value from the stream
                style: const TextStyle(fontSize: 24),
              );
            } else if (snapshot.hasError) {
              return const Text('Error occurred!');
            } else {
              return const CircularProgressIndicator(); // Show a loader while waiting for the stream
            }
          },
        ),
      ),
    );
  }
}
