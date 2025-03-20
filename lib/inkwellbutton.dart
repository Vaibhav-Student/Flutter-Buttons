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
    this.splashColor = Colors.blue,
    this.highlightColor = Colors.lightBlueAccent,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: splashColor,
      highlightColor: highlightColor,
      borderRadius: borderRadius,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: borderRadius,
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}