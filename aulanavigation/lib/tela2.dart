import 'package:flutter/material.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'tela5.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.account_circle_rounded), leadingWidth: 100,
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Tela3())); }, child: Text("PIX")),
          TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Tela4())); }, child: Text("Cartão")),
          TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Tela5())); }, child: Text("Boleto"))        ],
      )
    );
  }
}