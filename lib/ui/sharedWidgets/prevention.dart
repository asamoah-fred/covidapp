import 'package:flutter/material.dart';

class Prevention extends StatelessWidget {
  const Prevention({this.img, this.label});
  final String img;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          img,
          width: 75,
        ),
        Text(
          label,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
