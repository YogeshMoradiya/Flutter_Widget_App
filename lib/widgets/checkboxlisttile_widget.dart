import 'package:flutter/material.dart';

class CheckboxListTileWidget extends StatefulWidget {
  const CheckboxListTileWidget({super.key});

  @override
  State<CheckboxListTileWidget> createState() => _CheckboxListTileWidgetState();
}
   bool _value = false;
class _CheckboxListTileWidgetState extends State<CheckboxListTileWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CheckboxListTile widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: CheckboxListTile(
            title: const Text('CheckBox List Tile'),
          activeColor: Colors.blueAccent,
          checkColor: Colors.white,
          tileColor: Colors.black12,
          subtitle: const Text('This is Subtitle'),
          controlAffinity: ListTileControlAffinity.leading,
          value: _value,
          onChanged: (bool? value){
            setState(() {
              _value=value!;
            });
          },
        ),
      ),
    );
  }
}
