import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String titulo;
  Widget page;
  CustomButton({super.key, required this.titulo, required this.page});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.brown,
          foregroundColor: Colors.white,
          side: BorderSide(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20)
          ),
          fixedSize: Size(150, 30)
      ),
      onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Text(titulo),
    );
  }
}