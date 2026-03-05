import 'package:facebook2/components/botao.dart';
import 'package:facebook2/components/textodinamico.dart';
import 'package:facebook2/components/textofixo.dart';
import 'package:facebook2/screens/login.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bem-vindo(a) ao Facebook 2"),
      ),
      body: Center(
        child: Column(
          children: [
            TextoFixo(),
            TextoDinamico(titulo: "Conheça a rede social mais famosa do mundo", cor: Colors.blue),
            Botao(titulo: "birobiro", cor: Colors.blue, tela: Login(),)
          ])
      )
    );
  }
}