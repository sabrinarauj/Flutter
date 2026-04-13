import 'package:app_tasks/screens/screens.telaget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //lógica da tela faça antes do segundo override
  @override
  void initState() {
    //função do estado inicial da tela
    super.initState();
    Future.delayed(
      //função de atraso
      Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TelaGet()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Image.asset('assets/images/tasks.png'),
        ),
      ),
    );
  }
}
