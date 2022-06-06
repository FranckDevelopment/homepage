import 'package:flutter/material.dart';

class GradientBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 96, 120, 186),
                Color.fromARGB(255, 48, 41, 122),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        "NET-GPI",
        style: TextStyle(
            color: Colors.white, fontSize: 38.0, fontWeight: FontWeight.bold),
      ),
      alignment: Alignment(-0.9, -0.7),
    );
  }
}
