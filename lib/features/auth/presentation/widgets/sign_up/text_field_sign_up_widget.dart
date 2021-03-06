import 'package:flutter/material.dart';

import '../../../../../core/app_theme.dart';

class TextFieldSignUpWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool isSecure;
  final String label;
  final TextInputType type;

  const TextFieldSignUpWidget({
    Key? key,
    required this.isSecure,
    required this.controller,
    required this.label,
    this.type = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: primaryColor),
      controller: controller,
      obscureText: isSecure,
      validator: (val) {
        if (val!.isEmpty) {
          return "$label must not be empty";
        }
      },
      keyboardType: type,
      decoration: InputDecoration(
        filled: true,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(20)),
        labelStyle: const TextStyle(color: primaryColor),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: primaryColor)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: BorderRadius.circular(20)),
        label: Text(label),
      ),
    );
  }
}
