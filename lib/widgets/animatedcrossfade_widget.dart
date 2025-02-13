import 'package:flutter/material.dart';
//built-in widget that creates a fade transition between two widgets. It can be used to replace one widget with another while changing its size, color, and more.
class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedCrossFade'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch',
              style: TextStyle(color: Colors.white),
            ),
          ),
          AnimatedCrossFade(
            sizeCurve: Curves.bounceInOut,
            firstChild: Image.network('https://media.istockphoto.com/id/537282044/photo/dont-hesitate-to-stop-by-without-buying-anything.jpg?s=612x612&w=0&k=20&c=i5oLsIrZ-OKaCVhj2EtBTiKCpK23rnf9OuC_azy-EIo=',
              width: double.infinity,
              fit: BoxFit.fitHeight,

            ),
            secondChild: Image.asset(
              'assets/images/img.jpg',
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 2),
          ),
        ],
      ),
    );
  }
}
