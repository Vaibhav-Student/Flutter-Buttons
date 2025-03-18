import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final String tooltip;
  final Color color;
  final double iconSize;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.tooltip,
    this.color = Colors.black,
    this.iconSize = 24.0,
  });

  @override
  Widget build(BuildContext context){
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
          width: 50,
          height: 50,
          child: IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
            tooltip: tooltip,
            color: color,
            iconSize: iconSize,
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}