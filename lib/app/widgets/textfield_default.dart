import 'package:flutter/material.dart';

class TextFieldDefault extends StatelessWidget {
  TextFieldDefault({
    Key? key,
    required this.controller,
    this.hint = '',
    this.obsecureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool obsecureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      keyboardType: keyboardType,
      obscureText: obsecureText,
      textInputAction: textInputAction,
    );
  }
}
