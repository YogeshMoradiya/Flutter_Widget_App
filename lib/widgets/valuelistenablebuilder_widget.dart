import 'package:flutter/material.dart';
//
final ValueNotifier<Color> myColor = ValueNotifier(Colors.green);

class ValueListenableBuilderWidget extends StatefulWidget {
  const ValueListenableBuilderWidget({super.key});

  @override
  State<ValueListenableBuilderWidget> createState() => _ValueListenableBuilderWidgetState();
}

class _ValueListenableBuilderWidgetState extends State<ValueListenableBuilderWidget> {
  Color boxColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueListenableBuilder Example'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            if(myColor.value==Colors.blue){
              myColor.value = Colors.green;
            }else{
              myColor.value = Colors.blue;
            }
          },
          child: ValueListenableBuilder(
            valueListenable: myColor,
            builder: (context, value, index) {
              return AnimatedContainer(
                duration: const Duration(microseconds: 400),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: value
                ),
                child: const Center(
                  child: Text("Click Me",
                  style: TextStyle(color: Colors.white,fontSize: 40),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
