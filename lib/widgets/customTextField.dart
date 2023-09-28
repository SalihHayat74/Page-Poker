



import 'package:flutter/material.dart';
import 'package:pag_poker/constants.dart';

class kTextField extends StatelessWidget {
  kTextField({
   required this.controller,
    this.hintText= 'Hint Text',
    this.label='Label'
});
  TextEditingController controller;
  String? hintText ;
  String? label;

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller: controller,
      decoration: InputDecoration(
        // filled: true,
        //   fillColor: whiteColor,
        // hintText: hintText,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20
        ),
        label: Text(label!),
        border: InputBorder.none
      ),
    );
  }
}
