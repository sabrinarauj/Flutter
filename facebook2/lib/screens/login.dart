import 'package:facebook2/components/botao.dart';
import 'package:facebook2/components/input.dart';
import 'package:facebook2/screens/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  String userCorrect = "park jimin";
  String passwordCorrect = "bts7";

  void Logar(){
    if(username == userCorrect && password == passwordCorrect){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
        width: 250,
        height: 250,
        color: Colors.blue,
        child: Column(
          children: [
            Input(
              fofoca: username,
              label: "Email"
              ),
            
            Input(
              fofoca: password,
              label: "Senha",
              ),

            Botao(titulo: "Entrar", tela: Home())
          ],
        )
      )
      ),
    );
  }
}