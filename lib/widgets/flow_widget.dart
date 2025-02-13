import 'package:flutter/material.dart';

class FlowWidget extends StatefulWidget {
  const FlowWidget({super.key});

  @override
  State<FlowWidget> createState() => _FlowWidgetState();
}

class _FlowWidgetState extends State<FlowWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastClicked = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  @override
  void dispose() {
    menuAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flow Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Flow(
        delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
        children: menuItems
            .map<Widget>(
              (IconData icon) => Padding(
            padding: const EdgeInsets.all(5.0),
            child: FloatingActionButton(
              backgroundColor:
              lastClicked == icon ? Colors.orangeAccent : Colors.grey,
              splashColor: Colors.orangeAccent,
              onPressed: () {
                setState(() {
                  if (icon != Icons.menu) {
                    lastClicked = icon;
                  }
                  if (icon == Icons.menu) {
                    menuAnimation.status == AnimationStatus.completed
                        ? menuAnimation.reverse()
                        : menuAnimation.forward();
                  }
                });
              },
              child: Icon(icon),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);
  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width + 10; // Add padding between children
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * i * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}
