import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController txtController;
  final String hint;
  final bool hideInput;

  const CustomTextfield({
    super.key, 
    required this.txtController, 
    required this.hint,
    required this.hideInput});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      obscureText: hideInput,
      decoration: InputDecoration(
        hint: Text(hint),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),     
    );
  }
}