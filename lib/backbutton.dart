import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  final Color color;
  final VoidCallback? onPressed;

  const CustomBackButton({
    super.key,
    this.color = Colors.red,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BackButton(
      color: color,
      onPressed: onPressed ?? () {
        Navigator.pop(context);
      },
    );
  }
}