import 'package:coffee_shop/screens/telainicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 163, 139, 130),
        fontFamily: "Poppins",
      ),
      home: TelaInicial()
    );
  }
}

