import 'package:flutter/material.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  final Color disabledColor;
  final Color disabledTextColor;
  final Color highlightColor;
  final Color splashColor;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final ShapeBorder shape;

  const CustomMaterialButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = const Color.fromARGB(255, 248, 136, 0),
    this.textColor = Colors.white,
    this.disabledColor = Colors.grey,
    this.disabledTextColor = Colors.black,
    this.highlightColor = const Color.fromARGB(255, 245, 28, 191),
    this.splashColor = Colors.blueAccent,
    this.elevation = 5.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
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
        child: MaterialButton(
          onPressed: onPressed,
          color: color,
          textColor: textColor,
          disabledColor: disabledColor,
          disabledTextColor: disabledTextColor,
          highlightColor: highlightColor,
          splashColor: splashColor,
          elevation: elevation,
          padding: padding,
          shape: shape,
          child: Text(text),
        ),
      ),
    );
  }
}