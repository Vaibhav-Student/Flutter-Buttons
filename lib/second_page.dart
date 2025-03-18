import 'package:flutter/material.dart';
import 'package:flutter_buttons/backbutton.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        leading: CustomBackButton(),
      ),
      body: const Center(
        child: Text('This is the second page'),
      ),
    );
  }
}