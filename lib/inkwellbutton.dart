import 'package:flutter/material.dart';

class CustomInkWell extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color splashColor;
  final Color highlightColor;
  final BorderRadius borderRadius;

  const CustomInkWell({
    super.key,
    required this.text,
    required this.onTap,
    this.splashColor = const Color.fromARGB(255, 255, 72, 0),
    this.highlightColor = const Color.fromARGB(255, 248, 115, 7),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 235, 235),
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: 300,
        height: 50,
        child: Tooltip(
          message: 'InkWell Button',
          child: InkWell(
            onTap: onTap,
            splashColor: splashColor,
            highlightColor: highlightColor,
            borderRadius: borderRadius,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 140, 1),
                borderRadius: borderRadius,
              ),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}