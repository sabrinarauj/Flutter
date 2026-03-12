import 'package:coffee_shop/components/basescaffold.dart';
import 'package:coffee_shop/components/custombutton.dart';
import 'package:coffee_shop/screens/home.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(titulo: "Bem-vindo(a)", 
    body: Center(
      child: Column(
        children: [
          Text("Clique para ver nossos produtos"),
          CustomButton(titulo: "Entrar", page: Home())
        ],
    ),)
    );
  }
}