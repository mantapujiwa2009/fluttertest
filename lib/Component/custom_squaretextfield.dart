import 'package:flutter/material.dart';

class CustomSquaretextfield extends StatelessWidget {
  final String hint;
  final TextEditingController txtController;
  final Color hintColor;
  final Color borderColor;
  final Color txtColor;


  const CustomSquaretextfield({super.key, 
  required this.hint,
  required this.txtController, 
  required this.hintColor, required this.borderColor, 
  required this.txtColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: TextField(
        controller: txtController,
        style: TextStyle(
          color: txtColor
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: hintColor
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: borderColor )
            )
          )
        ),
    );
  }
}