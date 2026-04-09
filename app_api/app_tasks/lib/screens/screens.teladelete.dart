import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaDelete extends StatefulWidget {
  const TelaDelete({super.key});

  @override
  State<TelaDelete> createState() => _TelaDeleteState();
}

class _TelaDeleteState extends State<TelaDelete> {
  List ListaApi = []; // lista que irá receber os dados da api

  @override // inicia a função roda vez que chamar a tela
  void initState() {
    super.initState();
    fazerGet();
  }

  void fazerGet() async {
    final respostaServidor = await http.get(
      Uri.parse("http://10.109.71.10:3000/tasks"),
    );
    if (respostaServidor.statusCode == 200) {
      final dados = jsonDecode(respostaServidor.body);
      setState(() {
        ListaApi = dados;
      });
    }
  }

  void deletarItem(dynamic id) async {
    final respostaServidor = await http.delete(
      Uri.parse("http://10.109.71.10:3000/tasks/$id"),
    );
    if (respostaServidor.statusCode == 204 ||
        respostaServidor.statusCode == 200) {
      // se deletar
      fazerGet(); // faço o get novamente para visualizar os dados em tempo real

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Item deletado com sucesso Champion🙌"),
          duration: Duration(seconds: 2),
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // faz a rolagem da tela
        children: [
          for (final item in ListaApi) //para cada item dentro da listapi
            Card(
              //container mais esticado e vem com borda
              child: ListTile(
                //separa os itens com espaçamento especifico
                leading: Text(item["title"]),
                trailing: GestureDetector(
                  onTap: () {
                    deletarItem(item["id"]);
                  },
                  child: Icon(Icons.delete),
                ), //detecta gestos para componentes que não tem função nativamente
              ),
            ),
        ],
      ),
    );
  }
}
