import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/perfil.jpg", "Francisco MZ", "1 review  5 photos",
            "Esta panaderia es de las mejores del mundo"),
        Review("assets/img/FER.jpg", "Fernando Hrz", "4 review  12 photos",
            "Para una familia de inmigrantes es difícil"),
        Review("assets/img/pedro.jpg", "Pedro Perez", "3 review  8 photos",
            "Es de lo más normar los panes tienen buen sabor"),
        Review("assets/img/andrea.jpg", "Andrea Lopez", "10 review  35 photos",
            "Información de contacto, teléfono, Colonia"),
      ],
    );
  }
}
