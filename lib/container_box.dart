import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  final String buttonName;
  const ContainerBox({
    super.key,
    required this.buttonName,
    });

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24.0),
        //margin: const EdgeInsets.all(16.0),
        //width:200,
        //height: 200,
        // ignore: sort_child_properties_last
        child: Column(
          children: [
            //button title
            Text(buttonName),

            //Button
            
        ],),

        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        )
      ),
    );
  }
}
