import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name;
  String details;
  String coment;

  Review(this.pathImage, this.name, this.details, this.coment);
  @override
  Widget build(BuildContext context) {
    final userComent = Container(
      margin: new EdgeInsets.only(left: 20.0, right: 10.0),
      child: new Text(
        coment,
        style: const TextStyle(
            fontSize: 14.0, color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 14.0, color: Colors.blueGrey),
      ),
    );
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 19.0,
        ),
      ),
    );
    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[userName, userInfo, userComent],
    );
    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(pathImage),
          )),
    );
    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
