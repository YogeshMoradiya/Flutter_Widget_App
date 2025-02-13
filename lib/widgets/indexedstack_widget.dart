import 'package:flutter/material.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({super.key});

  @override
  State<IndexedStackWidget> createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('IndexedStackWidget'),
        backgroundColor: Colors.grey,
    ),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0; // Show the first child
                    });
                  },
                  child: const Text('img 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1; // Show the first child
                    });
                  },
                  child: const Text('img 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 2; // Show the first child
                    });
                  },
                  child: const Text('img 3'),
                ),

              ],
            ),
            IndexedStack(
              index: _currentIndex,
              children: <Widget>[
                Center(
                  child: Image.network('https://media.istockphoto.com/id/537282044/photo/dont-hesitate-to-stop-by-without-buying-anything.jpg?s=612x612&w=0&k=20&c=i5oLsIrZ-OKaCVhj2EtBTiKCpK23rnf9OuC_azy-EIo=',
                  ),
                ),
                Center(
                  child: Image.network('https://media.istockphoto.com/id/921577314/photo/keeping-his-shelves-well-stocked.jpg?s=612x612&w=0&k=20&c=d6KGSJhBYMH03mCzqiVc707lflloDRm6BRheeasqZv0=',
                  ),
                ),
                Center(
                  child: Image.network('https://media.istockphoto.com/id/537282044/photo/dont-hesitate-to-stop-by-without-buying-anything.jpg?s=612x612&w=0&k=20&c=i5oLsIrZ-OKaCVhj2EtBTiKCpK23rnf9OuC_azy-EIo=',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
