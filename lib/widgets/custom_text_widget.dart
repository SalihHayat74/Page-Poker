




import 'package:flutter/material.dart';

import '../constants.dart';

class kText extends StatelessWidget {

  kText({
   required this.text,
   this.color,
   this.fontSize,
   this.fontWeight
});
  String text;
  Color ? color;
  double ? fontSize;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text( text,
        style: TextStyle(
            fontWeight: fontWeight,
            fontSize: fontSize,
            color: color
        ));
  }
}
