import 'package:flutter/material.dart';

class HeroanimationWidget extends StatelessWidget {
  const HeroanimationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('HeroanimationWidget'),
          backgroundColor: Colors.cyan,
      ),
    body: ListTile(
      trailing: const Hero(tag: 'tag-1',
          child: Icon(Icons.person)
      ),
      onTap: ()=> Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const Secondpage())
      ),
      title: const Text('Click on me'),

    ),
    );
  }
}
class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Second page'),
    backgroundColor: Colors.cyan,
    ),
      body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Hero(tag: 'tag-1', child: Container(
          color: Colors.cyan,
          height: 100,
          width: 100,
        ))
        ],
      ),
      ),
    );
  }
}
