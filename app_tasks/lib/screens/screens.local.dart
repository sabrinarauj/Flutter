import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TelaLocal extends StatefulWidget {
  const TelaLocal({super.key});

  @override
  State<TelaLocal> createState() => _TelaLocalState();
}

class _TelaLocalState extends State<TelaLocal> {

  List<String> items = [];
  TextEditingController valorDigitado = TextEditingController();

  @override 
  void initState(){
    super.initState();
    carregarDados();
  }

  void carregarDados() async {
    final dados = await SharedPreferences.getInstance();
    setState(() {
      items = dados.getStringList('my_data') ?? []; 
    });
  }

  void criarDados() async {
    final dados = await SharedPreferences.getInstance();
    setState(() {
      items.add(valorDigitado.text);
    });
    //criando novamente a lista
    await dados.setStringList('my_data', items);
  }

  void deletarDados(int index) async {
    final dados = await SharedPreferences.getInstance();
    setState(() {
      items.removeAt(index);
    });
    await dados.setStringList('my_data', items);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            for(final item in items)
            Card(
              child: ListTile(
                leading: Text(item),
                trailing: GestureDetector(
                  onTap: () => deletarDados(items.indexOf(item)),
                  child: Icon(Icons.remove),
                ),
              ),
            ),
            TextField(controller:valorDigitado),
            TextButton(onPressed: criarDados, child: Text("Criar"))
          ],
        ),
    );
  }
}