import 'package:flutter/material.dart'; // lib que tem todos os componentes do flutter ex: texto, botão, input, etc.

void main() {
  runApp(TelaInicial());
}

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // divide a tela até 3 partes
        appBar: AppBar(title: Text("Tela Inicial")), // barra superior
        body: 
        ListView(
          children: [
            Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 100, height: 100, color: Colors.blue,),
            Container(width: 800, height: 40, color: Colors.pink,),
            ClipRRect(borderRadius: BorderRadiusGeometry.circular(20), 
            child: 
            Container(width: 500, height: 350, color: Colors.purple, 
            child: 
            Center(child: 
            Text("GUGU", 
            style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w200),))),),
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(width: 200, height: 100, color: Colors.yellow,),
              Container(width: 200, height: 100, color: Colors.amber,),
              Container(width: 200, height: 100, color: Colors.cyan,),
            ],),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIIcBMctv769PRxZkBSFkF5GbnnTfznIsTpQ&s"),
            Image.asset("../images/gatoserio.jpg")
          ],
        )
          ]
        )
        
      )
    ); // prove os componentes para a tela
  }
}


