import 'package:advanced_covid/utils/utils.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({this.color, this.icon, this.label});
  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context, 0.065),
      width: screenWidth(context, 0.4),
      child: RaisedButton.icon(
        icon: Icon(
          icon,
          color: UIColors.color2,
        ),
        label: Text(
          label,
          style: TextStyle(color: UIColors.color2, fontSize: 15),
        ),
        onPressed: () {},
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
