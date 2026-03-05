import 'package:flutter/material.dart';

class TextoDinamico extends StatelessWidget {
  String titulo;
  Color? cor = Colors.black;
  TextoDinamico({super.key, required this.titulo, this.cor});

  @override
  Widget build(BuildContext context) {
    return Text(titulo, style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w300,
      letterSpacing: 1,
      color: cor
    ));
  }
}