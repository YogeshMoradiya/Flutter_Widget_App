import 'package:flutter/material.dart';

class StepItem {
  StepItem(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

List<StepItem> getSteps() {
  return [
    StepItem('Step 0: Install Flutter',
        'Install Flutter development tools according to the official documentation.'),
    StepItem('Step 1: Create a project',
        'Open your terminal, run `flutter create <project_name>` to create a new project.'),
    StepItem('Step 2: Run the app',
        'Change your terminal directory to the project directory, enter `flutter run`.'),
  ];
}

class ExpansionPanelWidget extends StatefulWidget {
  const ExpansionPanelWidget({super.key});

  @override
  State<ExpansionPanelWidget> createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  final List<StepItem> _steps = getSteps();

  // This is a placeholder step, which we add at the beginning
  final StepItem _placeholderStep =
  StepItem('Placeholder', 'This is a placeholder step.');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Panel Widget'),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView( // Moved to the body
        child: Column(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  if (index == 0) {
                    // Handle placeholder
                    _placeholderStep.isExpanded = !_placeholderStep.isExpanded;
                  } else {
                    _steps[index - 1].isExpanded = !_steps[index - 1].isExpanded;
                  }
                });
              },
              children: [
                // Adding the placeholder step
                ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      title: Text(_placeholderStep.title),
                    );
                  },
                  body: ListTile(
                    title: Text(_placeholderStep.body),
                  ),
                  isExpanded: _placeholderStep.isExpanded,
                ),
                // Adding the normal steps
                ..._steps.map<ExpansionPanel>((StepItem step) {
                  return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(step.title),
                      );
                    },
                    body: ListTile(
                      title: Text(step.body),
                    ),
                    isExpanded: step.isExpanded,
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
