import 'package:flutter/material.dart';

class CustomCloseButton extends StatelessWidget {
  final Color color;
  final VoidCallback? onPressed;

  const CustomCloseButton({
    super.key,
    this.color = Colors.red,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CloseButton(
      color: color,
      onPressed: onPressed ?? () {
        Navigator.pop(context);
      },
    );
  }
}