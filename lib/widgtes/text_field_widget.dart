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
      decoration: InputDecoration(
          label: Text(label, style: const TextStyle(color: Colors.blueGrey),),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 1.8, color: Colors.blueGrey)),
          contentPadding: const EdgeInsets.all(22),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 1.8, color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(width: 1.8, color: Colors.blueGrey),
          ),
          prefixIcon: obscureText
              ? Icon(Icons.password_sharp, color: Colors.blueGrey.shade700,)
              : Icon(Icons.people, color: Colors.blueGrey.shade700,)
      ),
      obscureText: obscureText,
      onChanged: onChanged,
    );
  }
}
