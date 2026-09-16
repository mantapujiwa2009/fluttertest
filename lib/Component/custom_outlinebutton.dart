import 'package:flutter/material.dart';

class CustomOutlinebutton extends StatelessWidget {
  final String txt;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;
  final TextStyle txtStyle;

  const CustomOutlinebutton({super.key, 
  required this.txt, 
  required this.backgroundColor, 
  required this.foregroundColor, 
  required this.txtStyle, 
  required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: (){}, 
    child: Text(txt),
    style: OutlinedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      fixedSize: Size(280,45),
      side: BorderSide(
        color: borderColor,
        width: 0.7,
      ),
      textStyle: txtStyle
    ),
    );
    
  }
}