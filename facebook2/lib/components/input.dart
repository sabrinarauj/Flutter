import 'package:flutter/material.dart';

class Input extends StatelessWidget {

  String? label;
  TextEditingController fofoca = TextEditingController();

  Input({
    super.key,
    this.label,
    required this.fofoca
  });

  @override
  Widget build(BuildContext context) {
    return 
    Padding(padding: EdgeInsetsGeometry.symmetric(vertical: 20, horizontal: 40),
    child: TextField(
      controller: fofoca,
      decoration: InputDecoration(
        labelText: label,  
      ),
    ),  
    );
  }
}