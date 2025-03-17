import 'package:flutter/material.dart';
import 'package:flutter_buttons/elevated_button.dart';
import 'package:flutter_buttons/text_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _onButtonPressed() {
    print('CustomElevatedButton pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(
        children: [ 

          //elevated button
          MyElevatedButton(
            text: 'Elevated Button',
            onPressed: _onButtonPressed,
          ),

          //TextButton
          CustomTextButton(
            text: "Text Button", 
            onPressed: _onButtonPressed,
            ),

          //OutlinedButton

          //IconButton

        ]
      ),
    );
  }
}
