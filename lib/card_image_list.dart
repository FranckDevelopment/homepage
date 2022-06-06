import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageIist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: ListView(
        padding: EdgeInsets.all(12.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/logo.jpg"),
          CardImage("assets/img/Panaderia.jpg"),
          CardImage("assets/img/panabuelo.jpg"),
          CardImage("assets/img/GPS.jpg")
        ],
      ),
    );
  }
}
