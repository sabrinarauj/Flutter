import 'package:flutter/material.dart';
import 'tela2.dart';

void main() {
  runApp(MyApp());
}

// classe centralizadora - permite a navegação
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tela1()
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: 
      AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Icon(Icons.account_circle_rounded), leadingWidth: 100,
        toolbarHeight: 100,
        ),
      body:Column(
        children: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Tela2()));
          }, child: Text("Ir para a próxima"))
        ],)
    );
  }
}

 