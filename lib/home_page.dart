import 'package:flutter/material.dart';
import 'package:flutter_buttons/dropdownbutton.dart';
import 'package:flutter_buttons/elevated_button.dart';
import 'package:flutter_buttons/gesturedetectorbutton.dart';
import 'package:flutter_buttons/iconbutton.dart';
import 'package:flutter_buttons/inkwellbutton.dart';
import 'package:flutter_buttons/materialbutton.dart';
import 'package:flutter_buttons/outlinedbutton.dart';
import 'package:flutter_buttons/popupmenubutton.dart';
import 'package:flutter_buttons/rawmaterialbutton.dart';
import 'package:flutter_buttons/second_page.dart';
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
            tooltip: "Elevated Button",
            onPressed: _onButtonPressed,
          ),

          //TextButton
          CustomTextButton(
            text: "Text Button", 
            tooltip: "Text Button",
            onPressed: _onButtonPressed,
            ),

          //OutlinedButton
          CustomOutlinedButton(
            text: "Outlined Button",
            tooltip: "Outlined Button",
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
            tooltip: 'Floating Action Button',
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 5.0,
            shape: const CircleBorder(),
            child: const Icon(Icons.add),
          ),

          //DropDownButton
          CustomDropdownButton(),

          //PopupMenuButton
          CustomPopupMenuButton(),

          //BackButton
          MyElevatedButton(
            text: 'Go to second page',
            tooltip: "For back button",
            onPressed:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

          //CloseButton
          MyElevatedButton(
            text: 'Go to second page',
            tooltip: "For close button",
            onPressed:() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

          //MaterialButton
          CustomMaterialButton(
            text: 'Material Button',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

          //RawMaterialButton
          CustomRawMaterialButton(
            text: 'Raw Material Button',
            tooltip: "Raw Material Button",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

          //InkWell
          CustomInkWell(
            text: 'InkWell Button',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

          //GestureDetector
          CustomGestureDetector(
            text: 'GestureDetector Button',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
          ),

        ]
      ),
    );
  }
}
