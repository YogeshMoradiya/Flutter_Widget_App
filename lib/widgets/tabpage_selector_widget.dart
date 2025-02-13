import 'package:flutter/material.dart';

// List of icons
List <Widget> widgets = const[
  Icon(Icons.home),
  Icon(Icons.settings),
  Icon(Icons.person),
];

class TabPageSelectorWidget extends StatefulWidget {
  const TabPageSelectorWidget({super.key});

  @override
  State<TabPageSelectorWidget> createState() => _TabPageSelectorWidgetState();
}

class _TabPageSelectorWidgetState extends State<TabPageSelectorWidget> with SingleTickerProviderStateMixin{


  late final TabController controller;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    controller = TabController(
        length: widgets.length,
        initialIndex: _index,
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabPageSelector'),
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget> [
          TabBarView(
              controller: controller,
              children: widgets),

          Positioned(
            bottom: 40,
            child: TabPageSelector(color: Colors.black38,
              controller: controller,
            ),
          ),
        ],
      ),

      // Creating floating action button for navigation
      floatingActionButton: OverflowBar(
        children: [
          FloatingActionButton.small(onPressed: () {
            (_index != widgets.length - 1) ? _index++ : _index = 0;
            controller.animateTo(_index);
          },
            hoverElevation: 2.0,
            elevation: 5.0,
            child: const Icon(Icons.navigate_next),
          )
        ],
      ),
    );
  }
}
