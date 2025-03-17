import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({super.key});

  void _onButtonPressed() {
    print('ElevatedButton pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _onButtonPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, 
          backgroundColor: Colors.blue, // Text color
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text('Press Me'),
      ),
    );
  }
}