import 'package:flutter/material.dart';
//dialog box that displays information about an application, including: Application icon, Application name, Application version number, Copyright, and A button to show licenses for software used by the application.
class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Dialog'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              showDialog(context: context,
                  builder:(context)=>const AboutDialog(
                    applicationIcon: FlutterLogo(),
                    applicationLegalese: 'Legalese',
                    applicationName: 'Flutter App',
                    applicationVersion: 'version 2.1.0',
                    children: [
                      Text('This is a Text Created By Flutter App'),
                    ],
                  ),
              );
            },
             child: const Text('Show About Dialog'),
        ),
      ),
    );
  }
}
