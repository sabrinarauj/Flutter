import 'dart:convert';
import 'package:app_tasks/screens/screens.post.dart';
import 'package:app_tasks/screens/screens.teladelete.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaGet extends StatefulWidget {
  const TelaGet({super.key});

  @override
  State<TelaGet> createState() => _TelaGetState();
}

class _TelaGetState extends State<TelaGet> {
  List resultado = [];
  //funcao get é assincrona pq espera receber um dado
  //final é uma variavel que começa vazia e depois recebe um valor até que o processo seja reiniciado
  //uri é o padrao do flutter reconhecer sua url
  //jsondecode é uma funcao para trazer o body do json como variavel flutter
  //exemplo trazer o body para uma string
  void fazerGet() async {
    final resposta_servidor = await http.get(
      Uri.parse("http://10.109.71.10:3000/tasks"),
    );
    if (resposta_servidor.statusCode == 200) {
      final dados = jsonDecode(resposta_servidor.body);
      setState(() {
        resultado = dados;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela Get")),
      body: Center(
        child: Column(
          children: [
            Text(resultado.toString()),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: fazerGet,
              child: Text("Fazer GET"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaDelete()),
                );
              },
              child: Text("Ir para tela Delete"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TelaPost()),
                );
              },
              child: Text("Ir para tela Post"),
            ),
          ],
        ),
      ),
    );
  }
}
