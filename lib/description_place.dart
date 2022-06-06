import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descripcion;

  DescriptionPlace(this.namePlace, this.stars, this.descripcion);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final star_border = Container(
      margin: EdgeInsets.only(top: 400.0, right: 3.0),
      child: Icon(
        Icons.star_border,
        color: Colors.orange,
      ),
    );
    final star_half = Container(
      margin: EdgeInsets.only(top: 400.0, right: 3.0),
      child: Icon(
        Icons.star_half,
        color: Colors.orange,
      ),
    );
    final star = Container(
      margin: EdgeInsets.only(top: 400.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Colors.orange,
      ),
    );
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 400.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.left,
          ),
        ),
        Row(children: <Widget>[star, star, star, star_half, star_border])
      ],
    );
    final description = Container(
      margin: new EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: new Text(
        descripcion,
        style: const TextStyle(
            fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[title_stars, description, ButtonPurple("Ver Mas")],
    );

    throw UnimplementedError();
  }
}
