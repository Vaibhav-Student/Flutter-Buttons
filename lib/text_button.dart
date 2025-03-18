import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  final String tooltip;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.tooltip,
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
          child: Tooltip(
            message: tooltip,
            child: TextButton(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 2, 175, 255),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(text)
            ),
          ),
        ),
      ),
    );
  }
}