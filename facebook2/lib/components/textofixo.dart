import 'package:flutter/material.dart';

class TextoFixo extends StatelessWidget {
  const TextoFixo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Bem-vindo(a) ao Facebook 2.0",
    style: TextStyle(
      color: Colors.blue,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 2
    ),);
  }
}