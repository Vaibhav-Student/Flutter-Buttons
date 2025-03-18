import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String tooltip;
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final ShapeBorder shape;
  final bool mini;
  final Widget child;

  const CustomFloatingActionButton({
    super.key,
    required this.onPressed,
    required this.tooltip,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.elevation = 6.0,
    this.shape = const CircleBorder(),
    this.mini = false,
    required this.child,
  });

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
          child: FloatingActionButton(
            onPressed: onPressed,
            tooltip: tooltip,
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            elevation: elevation,
            shape: shape,
            mini: mini,
            child: child,
          ),
        ),
      ),
    );
  }
}