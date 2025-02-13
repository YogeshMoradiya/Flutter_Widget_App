import 'package:flutter/material.dart';
//use for searchbar suggestion
class AutocompleteWidget extends StatelessWidget {
  const AutocompleteWidget({super.key});

  static const List<String> _fruitOptions = <String>[
    'apple',
    'banana',
    'orange',
    'mango',
    'grapes',
    'watermelon',
    'kiwi',
    'strawberry',
    'sugarcane',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AutocompleteWidget'),
        backgroundColor: Colors.grey,
      ),
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Type below to autocomplete the following possible results: ${AutocompleteWidget._fruitOptions}.'),

          // Auto complete widget
          Autocomplete<String>(

            optionsBuilder: (TextEditingValue fruitTextEditingValue) {

              // if user is input nothing
              if (fruitTextEditingValue.text == '') {
                return const Iterable<String>.empty();
              }

              // if user is input something the build
              // suggestion based on the user input
              return _fruitOptions.where((String option) {
                return option
                    .contains(fruitTextEditingValue.text.toLowerCase());
              });
            },

            // when user click on the suggested
            // item this function calls
            onSelected: (String value) {
              debugPrint('You just selected $value');
            },
          ),
        ],
      ),
    );
  }
}
