import 'package:flutter/material.dart';

class CustomElevatedbutton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final TextStyle textStyle;

  const CustomElevatedbutton({super.key, 
  required this.text, 
  required this.backgroundColor, 
  required this.foregroundColor, 
  required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){}, 
    child: Text(text),
    style: ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      textStyle: textStyle
    ),);
  }
}