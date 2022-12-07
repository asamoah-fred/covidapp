import 'package:advanced_covid/utils/utils.dart';
import 'package:flutter/material.dart';

class ResultsContainer extends StatelessWidget {
  final double width;
  final Color color;
  final String label;
  final int value;

  ResultsContainer({this.width, this.color, this.label, this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context, 0.17),
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              label,
              style: TextStyle(
                  color: UIColors.color2,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Spacer(),
            Text(
              value.toString(),
              style: TextStyle(
                color: UIColors.color2,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
