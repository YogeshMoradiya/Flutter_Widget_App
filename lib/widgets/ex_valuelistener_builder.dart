import 'package:flutter/material.dart';

class ExValueListenerBuilderWidget extends StatefulWidget {
  const ExValueListenerBuilderWidget({super.key});
  @override
  State<ExValueListenerBuilderWidget> createState() => _ExValueListenerBuilderWidgetState();
}

class _ExValueListenerBuilderWidgetState extends State<ExValueListenerBuilderWidget> {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExValueListenerBuilderWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            ValueListenableBuilder<int>(
                builder: (BuildContext context,int value,Widget? child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CountDisplay(count: value),
                      child!,
                    ],
                  );
                },
              valueListenable: _counter,
              child: const Padding(
                  padding: EdgeInsets.all(10.0),
                   child: SizedBox(
                     width: 40,
                     height: 40,
                   ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () => _counter.value += 1,
      ),
    );
  }
}
class CountDisplay extends StatelessWidget{
  const CountDisplay({super.key,required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: const EdgeInsetsDirectional.all(10),
      child: Text('$count',
      style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}