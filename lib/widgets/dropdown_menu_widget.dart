import 'package:flutter/material.dart';

class DropdownMenuWidget extends StatefulWidget {
  const DropdownMenuWidget({super.key});

  @override
  State<DropdownMenuWidget> createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<DropdownMenuWidget> {
  String? selectedColor; // Holds the selected color name
  String? selectedIcon;  // Holds the selected icon name

  // Map of colors to use for display
  final Map<String, Color> colorMap = {
    'Blue': Colors.blue,
    'Pink': Colors.pink,
    'Green': Colors.green,
    'Orange': Colors.orange,
  };

  // Map of icons to use for display
  final Map<String, IconData> iconMap = {
    'Smile': Icons.emoji_emotions,
    'Cloud': Icons.cloud,
    'Brush': Icons.brush,
    'Heart': Icons.favorite,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownMenu Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Dropdown for colors
            DropdownButton<String>(
              value: selectedColor,
              hint: const Text('Select Color'),
              items: colorMap.keys.map((String color) {
                return DropdownMenuItem<String>(
                  value: color,
                  child: Text(color),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedColor = newValue;
                });
              },
            ),

            const SizedBox(height: 20),
            // Dropdown for icons
            DropdownButton<String>(
              value: selectedIcon,
              hint: const Text('Select Icon'),
              items: iconMap.keys.map((String icon) {
                return DropdownMenuItem<String>(
                  value: icon,
                  child: Text(icon),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedIcon = newValue;
                });
              },
            ),
            const SizedBox(height: 30),

            // Display the selected icon in the selected color
            if (selectedColor != null && selectedIcon != null)
              Icon(
                iconMap[selectedIcon], // Display the selected icon
                color: colorMap[selectedColor], // In the selected color
                size: 50, // Adjust the size as needed
              ),
            const SizedBox(height: 20),

            // Display the selected values text
            if (selectedColor != null && selectedIcon != null)
              Text('Selected: $selectedColor and $selectedIcon'),
            if (selectedColor == null || selectedIcon == null)
              const Text('Please select both color and icon.')
          ],
        ),
      ),
    );
  }
}