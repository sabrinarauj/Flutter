import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaPost extends StatefulWidget {
  const TelaPost({super.key});

  @override
  State<TelaPost> createState() => _TelaPostState();
}

class _TelaPostState extends State<TelaPost> {
  TextEditingController input = TextEditingController();

  void fazerPost(final newInput) async {
    final respostaServidor = await http.post(
      Uri.parse('http://10.109.71.10:3000/tasks'),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"title": newInput}),
    );
    if (respostaServidor.statusCode == 200 ||
        respostaServidor.statusCode == 201) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Dados enviados!")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Tarefa',
                    hintText: 'Insira uma nova tarefa',
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlue,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    labelStyle: TextStyle(color: Colors.grey),
                  ),
                  controller: input,
                ),
              ),
              TextButton(
                onPressed: () {
                  fazerPost(input.text);
                },
                child: Text("Enviar dados"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
