import 'package:flutter/material.dart';

class ThemeColor {
    static const primary = Color.fromARGB(255, 20, 20, 20);
    static const primaryText = Colors.white;
    static const hintColor = Color.fromARGB(255, 80, 80, 80);
    static const buttonLogin = Color.fromARGB(255, 134, 230, 24);
    static const txtLogin = Color.fromARGB(255, 49, 49, 49);
}

class FontTheme {
    static const TextStyle header = TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: ThemeColor.primaryText
    );

    static const TextStyle loginOption = TextStyle(
      fontWeight: FontWeight.bold
    );

    static const TextStyle textFieldTitle = TextStyle(
      color: ThemeColor.primaryText,
      fontWeight: FontWeight.bold
    );
}