import 'package:facebook2/screens/login.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {

  String titulo;
  Color? cor = Colors.blue;
  Widget tela;

  Botao({
    super.key, 
    required this.titulo,
    required this.tela, 
    this.cor
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: cor
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => tela));
      },
      child: Text(titulo)
      );
  }
}