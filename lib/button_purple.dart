import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget {
  String namebuton = "Ver mas";

  ButtonPurple(this.namebuton);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("navegando")));
      },
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        height: 50.0,
        width: 180.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.amber],
                begin: FractionalOffset(0.2, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.6],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Text(
            namebuton,
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
