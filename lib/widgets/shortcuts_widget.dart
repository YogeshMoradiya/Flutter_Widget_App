import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShortcutsWidget extends StatefulWidget {
  const ShortcutsWidget({super.key});

  @override
  State<ShortcutsWidget> createState() => _ShortcutsWidgetState();
}

class _ShortcutsWidgetState extends State<ShortcutsWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shortcuts'),
        backgroundColor: Colors.grey,
      ),
      body: Shortcuts(
        shortcuts: <ShortcutActivator, Intent>{
          // These are for physical keyboard use, still useful for accessibility
          LogicalKeySet(LogicalKeyboardKey.arrowUp): const IncrementIntent(),
          LogicalKeySet(LogicalKeyboardKey.arrowDown): const DecrementIntent(),
        },
        child: Actions(
          actions: {
            IncrementIntent: CallbackAction(
              onInvoke: (intent) => setState(() {
                count = count + 1;
              }),
            ),
            DecrementIntent: CallbackAction(
              onInvoke: (intent) => setState(() {
                count = count - 1;
              }),
            ),
          },
          // GestureDetector added to detect swipe gestures
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              if (details.delta.dy < 0) {
                // Swipe up to increment
                setState(() {
                  count = count + 1;
                });
              } else if (details.delta.dy > 0) {
                // Swipe down to decrement
                setState(() {
                  count = count - 1;
                });
              }
            },
            child: Focus(
              autofocus: true, // Ensure it captures keyboard input on desktop
              child: Center(
                child: Text(
                  'Counter: $count',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DecrementIntent extends Intent {
  const DecrementIntent();
}

class IncrementIntent extends Intent {
  const IncrementIntent();
}
