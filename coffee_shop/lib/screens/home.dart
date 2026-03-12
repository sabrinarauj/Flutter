import 'package:coffee_shop/components/basescaffold.dart';
import 'package:coffee_shop/components/custombutton.dart';
import 'package:coffee_shop/components/product.dart';
import 'package:coffee_shop/screens/carrinho.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(titulo: "Coffee Shop", 
    body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Product(name: "Café Expresso", image: "https://www.mokaclube.com.br/cdn/shop/articles/xicara-de-cafe-espresso-em-cima-de-livro.jpg?v=1744810792", price: 25.0),
        Product(name: "Pão de Queijo", image: "https://moinhoglobo.com.br/wp-content/uploads/2016/03/44-p%C3%A3o-de-queijo.jpg", price: 10.0),
        Product(name: "Bolo de Morango", image: "https://pbs.twimg.com/profile_images/1387745673135759362/UnzWfiVA.jpg", price: 12.50),
        CustomButton(titulo: "Carrinho", page: Carrinho())
      ],
    ),)
    );
  }
}