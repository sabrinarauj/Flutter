import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  String name;
  String image;
  double price;

  Product({super.key, required this.name, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      width: 300,
      height: 150,
      child: Row(children: [

        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(15.0),
          child: Image.network(image, width: 150),
        ),
  
        Column(
          children: [
            Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text("R\$ $price")
          ],
        )
      ],),
    );
  }
}