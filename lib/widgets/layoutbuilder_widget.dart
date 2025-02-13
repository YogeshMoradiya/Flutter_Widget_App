import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilderWidget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: LayoutBuilder(
            builder: (BuildContext context,BoxConstraints constarins){
              if(constarins.maxWidth>600){
                return Center(
                  child: Image.network('https://i.pinimg.com/736x/68/8d/d3/688dd325dbbdc238f4b70caffe77a5af.jpg'),
                );
              }else{
                return const Center(
                  child: Text('screen under 600'),
                );
              }
            },
        ),
      ),
    );
  }
}
