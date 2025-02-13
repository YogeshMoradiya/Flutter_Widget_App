import 'package:flutter/material.dart';

class ThemeWidget extends StatelessWidget {
  const ThemeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThemeWidget'),
        backgroundColor: Colors.grey,

      ),
      body:  Center(
        child: Container(
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            'Hello! Users Welcome',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            // colorScheme: Theme.of(context).colorScheme.copyWith(secondary: Colors.red),
          ),
          child: FloatingActionButton(autofocus: true,

            onPressed: () {},
            child: const Icon(Icons.arrow_circle_up),
          ),
        ),
    );
  }
}
