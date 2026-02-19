import 'package:flutter/material.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'tela5.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Color(0xFF8A05BE), toolbarHeight: 100),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Formas de Pagamento"),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(0, 1),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(50, 50, 93, 0.25),
                    blurRadius: 100,
                    spreadRadius: -20,
                    offset: Offset(0, 50),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    blurRadius: 60,
                    spreadRadius: -30,
                    offset: Offset(0, 30),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela3()),
                    
                  );
                },
                child: Image.network("https://img.icons8.com/color/512/pix.png", width: 100, height: 100,)
              ),
            ),
          ),
          

          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(0, 1),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(50, 50, 93, 0.25),
                    blurRadius: 100,
                    spreadRadius: -20,
                    offset: Offset(0, 50),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    blurRadius: 60,
                    spreadRadius: -30,
                    offset: Offset(0, 30),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela4()),
                  );
                },
                child: Image.network("https://static.vecteezy.com/system/resources/previews/010/998/135/non_2x/cute-3d-credit-card-illustration-design-free-png.png", 
                width: 100, height: 100,)
              ),
            ),
          ),

          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(255, 255, 255, 0.1),
                    blurRadius: 1,
                    spreadRadius: 0,
                    offset: Offset(0, 1),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(50, 50, 93, 0.25),
                    blurRadius: 100,
                    spreadRadius: -20,
                    offset: Offset(0, 50),
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    blurRadius: 60,
                    spreadRadius: -30,
                    offset: Offset(0, 30),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tela5()),
                  );
                },
                child: Image.network("https://iconape.com/wp-content/png_logo_vector/boleto-logo.png", width: 100, height: 100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
