import 'package:flutter/material.dart';

class UIColors {
  static const color1 = Color(0xff473F97);
  static const color2 = Color(0xffFEFEFF);
  static const color3 = Color(0xffFE4C58);
  static const color4 = Color(0xff4C79FF);
  static const color5 = Color(0xff4C79FF);
  static const color6 = Color(0xffFFB259);
  static const color7 = Color(0xffFE5959);
  static const color8 = Color(0xff4CD97B);
  static const color9 = Color(0xff4CB5FF);
  static const color10 = Color(0xff916CFF);
  static const color11 = Color(0xffAFB3CC);
}

// screen height
double screenHeight(BuildContext context, double percent) =>
    MediaQuery.of(context).size.height * percent;

//screen width
double screenWidth(BuildContext context, double percent) =>
    MediaQuery.of(context).size.width * percent;
