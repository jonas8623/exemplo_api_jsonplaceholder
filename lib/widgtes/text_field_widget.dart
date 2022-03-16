import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {

  final Function(String) onChanged;
  final String label;
  final bool obscureText;

  const TextFieldWidget({
    Key? key,
    required this.onChanged,
    required this.label,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(label: Text(label)),
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
