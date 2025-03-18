import 'package:flutter/material.dart';
import 'package:flutter_buttons/backbutton.dart';
import 'package:flutter_buttons/closebutton.dart';

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
        child: CustomCloseButton(),
      ),
    );
  }
}