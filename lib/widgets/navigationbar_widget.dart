import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});



  @override
  State<NavigationBarWidget> createState() => _State();
}

class _State extends State<NavigationBarWidget> {

  int _currentIndex=0;
  List<Widget> body=const[
    Icon(Icons.home),
    Icon(Icons.notifications_sharp),
    Icon(Icons.message_sharp),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBarWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex=newIndex;
          });
        },
        items: const[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: 'notification',
              icon: Icon(Icons.notifications_sharp)
          ),
          BottomNavigationBarItem(
              label: 'messages',
              icon: Icon(Icons.message_sharp)
          ),
        ],
      ),
    );
  }
}
