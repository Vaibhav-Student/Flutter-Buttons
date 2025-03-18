import 'package:flutter/material.dart';

class CustomPopupMenuButton extends StatelessWidget {
  const CustomPopupMenuButton({super.key});

  void _onMenuItemSelected(String value) {
    print('Selected: $value');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 235, 235, 235),
                    borderRadius: BorderRadius.circular(12),
                ),
        child: SizedBox(
          width: 300,
          height: 50,
          child: PopupMenuButton<String>(
            onSelected: _onMenuItemSelected,
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Item 1',
                  child: Text('Item 1'),
                ),
                const PopupMenuItem<String>(
                  value: 'Item 2',
                  child: Text('Item 2'),
                ),
                const PopupMenuItem<String>(
                  value: 'Item 3',
                  child: Text('Item 3'),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert),
            iconSize: 24,
            tooltip: 'Show menu',
            offset: const Offset(0, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}