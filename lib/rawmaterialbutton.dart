import 'package:flutter/material.dart';

class CustomRawMaterialButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color fillColor;
  final TextStyle textStyle;
  final Color highlightColor;
  final Color splashColor;
  final double elevation;
  final EdgeInsetsGeometry padding;
  final ShapeBorder shape;
  final BoxConstraints constraints;
  final String tooltip;

  const CustomRawMaterialButton({
    super.key,
    required this.tooltip,
    required this.text,
    required this.onPressed,
    this.fillColor = Colors.blue,
    this.textStyle = const TextStyle(color: Colors.white),
    this.highlightColor = Colors.lightBlueAccent,
    this.splashColor = Colors.blueAccent,
    this.elevation = 5.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    this.shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
    ),
    this.constraints = const BoxConstraints(minWidth: 100, minHeight: 50),
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
            child: RawMaterialButton(
              onPressed: onPressed,
              fillColor: fillColor,
              textStyle: textStyle,
              highlightColor: highlightColor,
              splashColor: splashColor,
              elevation: elevation,
              padding: padding,
              shape: shape,
              constraints: constraints,
              child: Text(text),
            ),
          ),
        ),
      ),
    );
  }
}