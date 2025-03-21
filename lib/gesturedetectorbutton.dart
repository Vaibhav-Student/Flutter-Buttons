import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final BorderRadius borderRadius;

  const CustomGestureDetector({
    super.key,
    required this.text,
    required this.onTap,
    this.color = Colors.blue,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
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
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              decoration: BoxDecoration(
                color: color,
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