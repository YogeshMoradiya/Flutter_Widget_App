import 'package:flutter/material.dart';
//show and hide work
class OverlayPortalWidget extends StatefulWidget {
  const OverlayPortalWidget({super.key});

  @override
  State<OverlayPortalWidget> createState() => _OverlayPortalWidgetState();
}

class _OverlayPortalWidgetState extends State<OverlayPortalWidget> {
  OverlayEntry? _overlayEntry;

  // Method to create the overlay entry
  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 100.0,
        left: MediaQuery.of(context).size.width / 4,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red.withOpacity(0.8), // Red box with transparency
          child: const Center(
            child: Text(
              'Overlay Box',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showOverlay() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OverlayPortal Widget'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (_overlayEntry == null) {
              _showOverlay();
            } else {
              _removeOverlay();
            }
          },
          child: Text(_overlayEntry == null ? 'Show Overlay' : 'Hide Overlay'),
        ),
      ),
    );
  }
}
