import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaPut extends StatefulWidget {
  const TelaPut({super.key});

  @override
  State<TelaPut> createState() => _TelaPutState();
}

class _TelaPutState extends State<TelaPut> {
  List listaApi = [];
  List listaControladores = [];

  @override
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
        listaApi = dados;

        for (final item in listaApi) {
          listaControladores.add(TextEditingController(text: item["title"]));
        }
      });
    }
  }

  void alterarDado(final id, int index) async {
    final respostaServidor = await http.patch(
      Uri.parse("http://10.109.71.10:3000/tasks/$id"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"title": listaControladores[index].text}),
    );

    if (respostaServidor.statusCode == 200) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Dado alterado com sucesso")));
    }
    fazerGet();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(final item in listaApi)
        Card(
          child: ListTile(
            title: Text(item["title"]),
            subtitle: TextField(
              controller: listaControladores[listaApi.indexOf(item)],
            ),
            trailing: GestureDetector(
              onTap: () => alterarDado(item["id"], listaApi.indexOf(item)),
              child: Icon(Icons.edit),
            ),
          ),
        ),
      ],
    );
  }
}
