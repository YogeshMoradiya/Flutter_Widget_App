import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActionSheet extends StatefulWidget {
  const CupertinoActionSheet({super.key});

  @override
  State<CupertinoActionSheet> createState() => _CupertinoActionSheetState();
}

class _CupertinoActionSheetState extends State<CupertinoActionSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupertinoActionSheet'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: CupertinoButton(
            child: const Text('CupertinoActionSheet'),
            onPressed: (){
              showCupertinoModalPopup(
                  context: context,
                  builder:(BuildContext context) => const CupertinoActionSheet(
                  ),
              );
            },
        ),
      ),
    );
  }
}
