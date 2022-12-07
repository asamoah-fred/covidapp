import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Try extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var f = NumberFormat('###.0#', 'en_US');
    print(f.format(12.345));
    return Container();
  }
}

