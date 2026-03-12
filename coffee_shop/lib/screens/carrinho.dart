import 'package:coffee_shop/components/customappbar.dart';
import 'package:flutter/material.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titulo: "AppBar topissima"),
    );
  }
}