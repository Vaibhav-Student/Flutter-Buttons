import 'package:flutter/material.dart';
import 'package:flutter_buttons/elevated_button.dart';
import 'package:flutter_buttons/iconbutton.dart';
import 'package:flutter_buttons/outlinedbutton.dart';
import 'package:flutter_buttons/text_button.dart';
import 'package:flutter_buttons/floatingactionbutton.dart';

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
          CustomOutlinedButton(
            text: "Outlined Button",
            onPressed: _onButtonPressed,
          ),

          //IconButton
          CustomIconButton(
            icon: Icons.thumb_up,
            onPressed: _onButtonPressed,
            tooltip: 'Like',
            color: Colors.blue,
            iconSize: 20.0,
            // padding: const EdgeInsets.all(16.0),
            // alignment: Alignment.center,
          ),

          //floatingActionButton
          CustomFloatingActionButton(
            onPressed: _onButtonPressed,
            tooltip: 'Increment',
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 5.0,
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),

          //DropDownButton

          //PopupMenuButton

          //BackButton

        ]
      ),
    );
  }
}
